<?php require_once "view/header.php"; ?>
        <h2>Menú ventas</h2>
        <br>
        <form name="form1" method="POST" action="./?accion=guardarVentas">
        
        <p>Producto:
            <select name="selproducto">
                <option value="">Seleccione...</option>
                <?php foreach($consultaProductos as $datos): ?>
                <option value="<?php echo $datos['id']; ?>"><?php echo $datos['nombre']; ?></option>
                <?php endforeach; ?>
            </select>
        </p>
        <p>Cantidad: <input type="text" name="txtcantidad"></p>
        <p>Precio: <input type="text" name="txtprecio"></p>

        <p><input type="submit" name="btnguardarventa" value="Guardar venta"></p>
        </form>
        <br>
        
        <table>
                <thead>
                    <tr>
                        <th>Id Venta</th>
                        <th>Categoría</th>
                        <th>Nombre producto</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($consultaVentas as $dato): ?>
                    <tr>
                        <td><?php echo $dato['idventa']; ?></td>
                        <td><?php echo $dato['categoria']; ?></td>
                        <td><?php echo $dato['nombre']; ?></td>
                        <td><?php echo $dato['precio']; ?></td>
                        <td><?php echo $dato['cantidad']; ?></td>
                        <td><?php echo $dato['total']; ?></td>
                        <td><a href="./?accion=eliminarVentas&id=<?php echo $dato['idventa']; ?>">Eliminar</a></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

        <br>
        <br>
        <br>
        <a href="./">Volver</a>
<?php require_once "view/footer.php"; ?>