<?php
class Etiquetadora extends Controller
{
    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['nombre_usuario'])) {
            header('Location: ' . BASE_URL . 'admin');
            exit;
        }
    }

    public function index()
    {
        $data['title'] = 'Etiquetadora';
        $data['categorias'] = $this->model->getCategorias();
        $data['sedes'] = $this->model->getSedes();
        $data['areas'] = $this->model->getAreas();
        $this->views->getView('admin/etiquetadora', "index", $data);
    }

    public function listar()
    {
        $data = $this->model->getEtiquetadoras(1);
        for ($i = 0; $i < count($data); $i++) {
            $data[$i]['imagen'] = '<img class="img-thumbnail" src="' . $data[$i]['imagen'] . '" alt="' . $data[$i]['Tipo_Equipo'] . '" width="50">';
            $data[$i]['accion'] = '<div class="d-flex">
            <button class="btn btn-success" type="button" onclick="agregarImagenes(' . $data[$i]['id'] . ')"><i class="fas fa-images"></i></button>
            <button class="btn btn-primary" type="button" onclick="editEqu(' . $data[$i]['id'] . ')"><i class="fas fa-edit"></i></button>
            <button class="btn btn-danger" type="button" onclick="eliminarEqu(' . $data[$i]['id'] . ')"><i class="fas fa-trash"></i></button>
            </div>';
        }
        echo json_encode($data);
        die();
    }
    // Obtener el nuevo código secuencial
    public function obtenerNuevoCodigo()
    {
        $ultimoCodigo = $this->model->obtenerUltimoCodigo();
        if ($ultimoCodigo) {
            // Extraer el número después de "E" y generar el siguiente código
            $numero = intval(substr($ultimoCodigo['Codigo_Inventario'], 1)) + 1;
            $nuevoCodigo = "E" . str_pad($numero, 4, "0", STR_PAD_LEFT);
            echo json_encode(array('icono' => 'success', 'codigo' => $nuevoCodigo));
        } else {
            // Si no hay códigos previos, comenzamos con E0001
            echo json_encode(array('icono' => 'success', 'codigo' => 'E0001'));
        }
        die();
    }

    // Registrar un nuevo equipo de cómputo

    public function registrar()
    {
        if (isset($_POST['categoria'])) {
            // Asignar los valores de POST a variables
            $Codigo_Inventario = $_POST['Codigo_Inventario'];
            $Tipo_Equipo = $_POST['categoria'];
            $Sede = $_POST['Sede'];
            $Area = $_POST['Area'];
            $Marca = $_POST['Marca'];
            $Modelo = $_POST['Modelo'];
            $Serial = $_POST['Serial'];
            $IP_Asignada = $_POST['IP_Asignada'];
            $imagen = $_FILES['imagen'];
            $tmp_name = $imagen['tmp_name'];
            $id = $_POST['id'] ?? null;  // Asegurar que $id esté definido, incluso si no es enviado

            // Ruta para almacenar imágenes
            $ruta = 'assets/images/etiquetadora/';
            $nombreImg = date('YmdHis'); // Generar nombre único basado en la fecha

            // Validación de campos requeridos
            if (empty($Tipo_Equipo) || empty($Sede) || empty($Area) || empty($Marca) || empty($Modelo) || empty($Serial)) {
                $respuesta = array('msg' => 'Todos los campos son requeridos', 'icono' => 'warning');
            } else {
                // Procesar imagen
                if (!empty($imagen['name'])) {
                    $destino = $ruta . $nombreImg . '.jpg';
                } else if (!empty($_POST['imagen_actual']) && empty($imagen['name'])) {
                    $destino = $_POST['imagen_actual'];
                } else {
                    $destino = $ruta . 'default.png'; // Imagen por defecto
                }

                // Si no hay ID, registrar nuevo equipo
                if (empty($id)) {
                    $data = $this->model->registrar(
                        $Codigo_Inventario,
                        $Tipo_Equipo,
                        $Sede,
                        $Area,
                        $Marca,
                        $Modelo,
                        $Serial,
                        $IP_Asignada,
                        $destino
                    );

                    if ($data > 0) {
                        if (!empty($imagen['name'])) {
                            move_uploaded_file($tmp_name, $destino);
                        }
                        $respuesta = array('msg' => 'Equipo registrado', 'icono' => 'success');
                    } else {
                        $respuesta = array('msg' => 'Error al registrar', 'icono' => 'error');
                    }
                } else {
                    // Si hay ID, modificar equipo existente
                    $data = $this->model->modificar(
                        $Tipo_Equipo,
                        $Sede,
                        $Area,
                        $Marca,
                        $Modelo,
                        $Serial,
                        $IP_Asignada,
                        $destino,
                        $id
                    );

                    if ($data == 1) {
                        if (!empty($imagen['name'])) {
                            move_uploaded_file($tmp_name, $destino);
                        }
                        $respuesta = array('msg' => 'Equipo modificado', 'icono' => 'success');
                    } else {
                        $respuesta = array('msg' => 'Error al modificar', 'icono' => 'error');
                    }
                }
            }

            // Enviar respuesta como JSON
            echo json_encode($respuesta);
        }
        die();
    }


    // Eliminar equipo
    public function delete($idEqu)
    {
        if (is_numeric($idEqu)) {
            $data = $this->model->eliminar($idEqu);
            if ($data == 1) {
                $respuesta = array('msg' => 'Equipo dado de baja', 'icono' => 'success');
            } else {
                $respuesta = array('msg' => 'Error al eliminar', 'icono' => 'error');
            }
        } else {
            $respuesta = array('msg' => 'Error desconocido', 'icono' => 'error');
        }
        echo json_encode($respuesta);
        die();
    }

    // Editar equipo
    public function edit($idEqu)
    {
        if (is_numeric($idEqu)) {
            $data = $this->model->getEtiquetadora($idEqu);
            echo json_encode($data, JSON_UNESCAPED_UNICODE);
        }
        die();
    }

    // Galería de imágenes
    public function galeriaImagenes()
    {
        $id = $_POST['idetiquetadora'];
        $folder_name = 'assets/images/etiquetadora/' . $id . '/';
        if (!empty($_FILES)) {
            if (!file_exists($folder_name)) {
                mkdir($folder_name);
            }
            $temp_name = $_FILES['file']['tmp_name'];
            $ruta = $folder_name . date('YmdHis') . $_FILES['file']['name'];
            move_uploaded_file($temp_name, $ruta);
        }
    }

    public function verGaleria($id_etiquetadora)
    {
        $result = array();
        $directorio = 'assets/images/etiquetadora/' . $id_etiquetadora;
        if (file_exists($directorio)) {
            $imagenes = scandir($directorio);
            if (false !== $imagenes) {
                foreach ($imagenes as $file) {
                    if ('.' != $file && '..' != $file) {
                        array_push($result, $file);
                    }
                }
            }
        }
        echo json_encode($result);
        die();
    }

    public function eliminarImg()
    {
        $datos = file_get_contents('php://input');
        $json = json_decode($datos, true);
        $destino = 'assets/images/etiquetadora/' . $json['url'];
        if (unlink($destino)) {
            $res = array('msg' => 'IMAGEN ELIMINADA', 'icono' => 'success');
        } else {
            $res = array('msg' => 'ERROR AL ELIMINAR', 'icono' => 'error');
        }
        echo json_encode($res);
        die();
    }
}