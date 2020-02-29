<?php require_once 'header.php'; ?>

        <h1>Modificación de categorias</h1>
        <br>
        <form method="POST" action="./?accion=guardarCambiosCategorias">
        <P>Id: <input type="text" name="txtidcategoria" value="<?php echo $_REQUEST['id'] ?>" readonly></P>
        <p>Nombre categoria: <input type="text" name="txtnombrecategoria"></P>
        <p><input type="submit" name="btnguardarcategoria" value="Guardar Categorias"></p>
        </form>
        <br>
        <br>
        <br>
        <a href="./?accion=menuCategorias">Volver</a>
<?php require_once 'footer.php'; ?>