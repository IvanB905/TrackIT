<?php
class ImpresoraModel extends Query
{

    public function __construct()
    {
        parent::__construct();
    }

    public function getImpresoras($estado)
{
    $sql = "SELECT te.*, 
                   c.categoria, 
                   s.Sede, 
                   a.Area 
            FROM impresoras te 
            INNER JOIN categorias c ON te.id_categoria = c.id 
            INNER JOIN Sedes s ON te.id_sede = s.id 
            INNER JOIN Areas a ON te.id_area = a.id
            WHERE te.estado = $estado";
            
    return $this->selectAll($sql);
}

    public function getCategorias()
    {
        $sql = "SELECT * FROM categorias WHERE estado = 1";
        return $this->selectAll($sql);
    }

    public function getSedes()
    {
        $sql = "SELECT * FROM sedes WHERE estado = 1";
        return $this->selectAll($sql);
    }

    public function getAreas()
    {
        $sql = "SELECT * FROM areas WHERE estado = 1";
        return $this->selectAll($sql);
    }

    // Obtener el último código generado (no el ID)
    public function obtenerUltimoCodigo()
    {
        $sql = "SELECT Codigo_Inventario FROM impresoras ORDER BY id DESC LIMIT 1";
        return $this->select($sql);
    }

    // Registrar nuevo equipo
    public function registrar($Codigo_Inventario, $categoria, $Sede, $Area, $Marca, $Modelo, $Serial, $IP_Asignada, $imagen)
{
    $sql = "INSERT INTO impresoras (Codigo_Inventario, id_categoria, id_sede, id_area, Marca, Modelo, Serial, IP_Asignada, imagen) VALUES (?,?,?,?,?,?,?,?,?)";
    $array = array($Codigo_Inventario, $categoria, $Sede, $Area, $Marca, $Modelo, $Serial, $IP_Asignada, $imagen);
    return $this->insertar($sql, $array);
}

    // Eliminar equipo (cambio de estado)
    public function eliminar($idEqu)
    {
        $sql = "UPDATE impresoras SET estado = ? WHERE id = ?";
        $array = array(0, $idEqu);
        return $this->save($sql, $array);
    }

    // Obtener equipo por ID
    public function getImpresora($idEqu)
    {
        $sql = "SELECT * FROM impresoras WHERE id = $idEqu";
        return $this->select($sql);
    }

    // Modificar equipo
    public function modificar($categoria, $Sede, $Area, $Marca, $Modelo, $Serial, $IP_Asignada, $destino, $id)
{
    $sql = "UPDATE impresoras SET id_categoria=?, id_sede=?, id_area=?, Marca=?, Modelo=?, Serial=?, IP_Asignada=?,  imagen=? WHERE id=?";
    $array = array($categoria, $Sede, $Area, $Marca, $Modelo, $Serial, $IP_Asignada, $destino, $id);
    return $this->save($sql, $array);
}
}
