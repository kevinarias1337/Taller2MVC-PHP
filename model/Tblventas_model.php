<?php
class Tblventas_model{
    private $bd;
    private $tblventas;

    public function __construct(){
        $this->bd=Conexion::getConexion();
        $this->tblventas=array();
    }

    public function consultarVentas(){
        $consultaVentas = $this->bd->query("SELECT v.idproducto, v.idventa, c.nombre AS 'categoria', p.nombre, p.precio, v.cantidad, v.total FROM tblventas v INNER JOIN tblproductos p ON v.idproducto=p.id INNER JOIN tblcategorias c ON p.idcategoria = c.id");
        while($fila=$consultaVentas->fetch_assoc()){
            $this->tblventas[]=$fila;
        }
        return $this->tblventas;
    }

    public function insertarVentas($dato){
        $idproducto=$dato['idproducto'];
        $cantidad=$dato['cantidad'];
        $precio=$dato['precio'];
        $consultaVentas = "INSERT INTO tblventas (idproducto, cantidad, total) VALUES ($idproducto, $cantidad, $precio*$cantidad);";
        mysqli_query($this->bd, $consultaVentas) or die ("Error al insertar los datos");
        
        
    }

    public function consultarVentasPorId($id){
        $consultaVentas = $this->bd->query("SELECT * FROM tblventas WHERE idventa = " . $id);
        $fila = $consultaVentas->fetch_assoc();
        $this->tblventas[] = $fila;
        return $this->tblventas;
    }

    public function descartarVentas($id){
        $consultaVentas="DELETE FROM tblventas WHERE idventa=" . $id;
        mysqli_query($this->bd, $consultaVentas) or die ("Error al eliminar los datos");
    }
}
?>