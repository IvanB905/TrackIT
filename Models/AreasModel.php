<?php
class AreasModel extends Query{
 
    public function __construct()
    {
        parent::__construct();
    }
    public function getAreas($estado)
    {
        $sql = "SELECT * FROM areas WHERE estado = $estado";
        return $this->selectAll($sql);
    } 
 
    public function registrar($area, $imagen)
    {
        $sql = "INSERT INTO areas (area, imagen) VALUES (?,?)";
        $array = array($area, $imagen);
        return $this->insertar($sql, $array);
    }
    public function verificarArea($area)
    {
        $sql = "SELECT area FROM areas WHERE area = '$area' AND estado = 1";
        return $this->select($sql);
    }

    public function eliminar($idAre)
    {
        $sql = "UPDATE areas SET estado = ? WHERE id = ?";
        $array = array(0, $idAre);
        return $this->save($sql, $array);
    }

    public function getAre($idAre)
    {
        $sql = "SELECT * FROM areas WHERE id = $idAre";
        return $this->select($sql);
    }

    public function modificar($area, $imagen, $id)
    {
        $sql = "UPDATE areas SET area=?, imagen=? WHERE id = ?";
        $array = array($area, $imagen, $id);
        return $this->save($sql, $array);
    }
}
 
?>