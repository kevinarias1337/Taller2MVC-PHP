<?php
require_once "model/Tblcategorias_model.php";
class Tblcategorias_controller{
    private $model_categorias;

    public function __construct(){
        $this->model_categorias= new Tblcategorias_model();
    }

    public function menuCategorias(){
        $consulta=$this->model_categorias->consultarCategorias();
        require_once "view/menuCategorias.php";
    }
    public function guardarCategorias(){
        $dato['nombre'] = $_POST['txtnombre'];
        $this->model_categorias->insertarCategoria($dato);
        $this->menuCategorias();
    }
    public function modificarCategorias(){
        $id = $_REQUEST['id'];
        $consulta = $this->model_categorias->consultarCategoriaPorId($id);
        require_once 'view/tblcategorias_modificar.php';
    }
    public function guardarCambiosCategorias(){
        $dato['id'] = $_REQUEST["txtidcategoria"];
        $dato['nombre'] = $_REQUEST["txtnombrecategoria"];
        $this->model_categorias->actualizarCategoria($dato);
        $this->menuCategorias();
    }
    public function eliminarCategorias(){
        $id=$_REQUEST['id'];
        $this->model_categorias->descartarCategoria($id);
        $this->menuCategorias();
    }
}
?>