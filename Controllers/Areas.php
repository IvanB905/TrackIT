<?php
class Areas extends Controller
{
    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['nombre_usuario'])) {
            header('Location: '. BASE_URL . 'admin');
            exit;
        }
    }
    public function index()
    {
        $data['title'] = 'Areas';
        $this->views->getView('admin/areas', "index", $data);
    }
    public function listar()
    {
        $data = $this->model->getAreas(1);
        for ($i = 0; $i < count($data); $i++) {
            $data[$i]['imagen'] = '<img class="img-thumbnail" src="' .$data[$i]['imagen'].'" alt="'.$data[$i]['area'].'" width="50">';
            $data[$i]['accion'] = '<div class="d-flex">
            <button class="btn btn-primary" type="button" onclick="editSed(' . $data[$i]['id'] . ')"><i class="fas fa-edit"></i></button>
            <button class="btn btn-danger" type="button" onclick="eliminarSed(' . $data[$i]['id'] . ')"><i class="fas fa-trash"></i></button>
        </div>';
        }
        echo json_encode($data);
        die();
    }

    public function registrar()
    {
        if (isset($_POST['area'])) {
            $area = $_POST['area'];
            $imagen  = $_FILES['imagen'];
            $tmp_name = $imagen['tmp_name'];
            $id = $_POST['id'];
            $ruta = 'assets/images/areas';
            $nombreImg = date('YmdHis');
            if (empty($_POST['area'])) {
                $respuesta = array('msg' => 'todo los campos son requeridos', 'icono' => 'warning');
            } else {  
                if (!empty($imagen['name'])) {     
                    $destino = $ruta . $nombreImg . '.jpg' ;
                } else if (!empty($_POST['imagen_actual'] && empty($imagen['name']))) {
                    $destino = $_POST['imagen_actual'];
                } else {
                    $destino = $ruta . 'default.png';   
                }

                if (empty($id)) {
                    $result = $this->model->verificarArea($area);
                    if (empty($result)) {
                        $data = $this->model->registrar($area, $destino);
                        if ($data > 0) {
                            if (!empty($imagen['name'])) {
                                move_uploaded_file($tmp_name, $destino);
                            }
                            $respuesta = array('msg' => 'area registrada', 'icono' => 'success');
                        } else {
                            $respuesta = array('msg' => 'error al registrar', 'icono' => 'error');
                        }
                    } else {
                        $respuesta = array('msg' => 'la area ya existe', 'icono' => 'warning');
                    }
                } else {
                    $data = $this->model->modificar($area, $destino, $id);
                    if ($data == 1) {
                        if (!empty($imagen['name'])) {
                            move_uploaded_file($tmp_name, $destino);
                        }
                        $respuesta = array('msg' => 'area modificada', 'icono' => 'success');
                    } else {
                        $respuesta = array('msg' => 'error al modificar', 'icono' => 'error');
                    }
                }
            }
            echo json_encode($respuesta);
        }
        die();
    }
    //eliminar sed
    public function delete($idAre)
    {
        if (is_numeric($idAre)) {
            $data = $this->model->eliminar($idAre);
            if ($data == 1) {
                $respuesta = array('msg' => 'area dada de baja', 'icono' => 'success');
            } else {
                $respuesta = array('msg' => 'error al eliminar', 'icono' => 'error');
            }
        } else {
            $respuesta = array('msg' => 'error desconocido', 'icono' => 'error');
        }
        echo json_encode($respuesta);
        die();
    }
    //editar sed
    public function edit($idAre)
    {
        if (is_numeric($idAre)) {
            $data = $this->model->getSed($idAre);
            echo json_encode($data, JSON_UNESCAPED_UNICODE);
        }
        die();
    }
}
