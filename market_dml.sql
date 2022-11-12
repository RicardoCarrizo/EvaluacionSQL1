INSERT INTO minimarket.proveedor (nombre, telefono, direccion)

VALUES
	("x_proveedor", 1111111, "pasaje x"),
    ("y_proveedor", 2222222, "pasaje y");


SELECT * FROM minimarket.proveedor;

INSERT INTO minimarket.categoria (categoria_nombre)

VALUES
	("congelados"),
    ("snacks"),
    ("conserva"),
    ("bebidas");


SELECT * FROM minimarket.categoria;

INSERT INTO minimarket.producto (nombre, precio, fecha_compra, cantidad, id_proveedor, id_categoria)

VALUES
    ("papas pre-fritas", 3000, "2022-09-21", 40, 1, 1),
    ("ramitas", 1000, "2022-08-03", 30, 1, 2),
    ("doritos", 1500, "2022-09-10", 25, 1, 2),
    ("durazno", 900, "2022-09-15", 13, 2, 3),
    ("pepsi", 1200, "2022-10-28", 90, 2, 4);

SELECT * FROM minimarket.producto;

#CONSULTA JOIN
#right
SELECT producto.nombre, producto.precio, producto.fecha_compra, producto.cantidad, categoria.categoria_nombre
FROM minimarket.producto 
RIGHT JOIN minimarket.categoria on minimarket.producto.id_producto = minimarket.categoria.id_categoria;

#left
SELECT producto.nombre, producto.precio, producto.fecha_compra, producto.cantidad, categoria.categoria_nombre
FROM minimarket.producto 
LEFT JOIN minimarket.categoria on minimarket.producto.id_producto = minimarket.categoria.id_producto;

SELECT producto.nombre, categoria.categoria_nombre, categoria.id_categoria, producto.id_producto
FROM minimarket.producto
LEFT JOIN minimarket.categoria ON producto.id_producto = categoria.id_categoria