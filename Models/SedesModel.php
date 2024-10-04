<?php
class SedesModel extends Query{
 
    public function __construct()
    {
        parent::__construct();
    }
    public function getSedes($estado)
    {
        $sql = "SELECT * FROM sedes WHERE estado = $estado";
        return $this->selectAll($sql);
    } 
 
    public function registrar($sede, $imagen)
    {
        $sql = "INSERT INTO sedes (sede, imagen) VALUES (?,?)";
        $array = array($sede, $imagen);
        return $this->insertar($sql, $array);
    }
    public function verificarSede($sede)
    {
        $sql = "SELECT sede FROM sedes WHERE sede = '$sede' AND estado = 1";
        return $this->select($sql);
    }

    public function eliminar($idSed)
    {
        $sql = "UPDATE sedes SET estado = ? WHERE id = ?";
        $array = array(0, $idSed);
        return $this->save($sql, $array);
    }

    public function getSed($idSed)
    {
        $sql = "SELECT * FROM sedes WHERE id = $idSed";
        return $this->select($sql);
    }

    public function modificar($sede, $imagen, $id)
    {
        $sql = "UPDATE sedes SET sede=?, imagen=? WHERE id = ?";
        $array = array($sede, $imagen, $id);
        return $this->save($sql, $array);
    }
}
 
?>