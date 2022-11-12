
#Creación de tablas
CREATE TABLE IF NOT EXISTS `minimarket`.`Proveedor` (
  `id_proveedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_proveedor`));
  
  CREATE TABLE IF NOT EXISTS `minimarket`.`Categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `categoria_nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categoria`));
  
  CREATE TABLE IF NOT EXISTS `minimarket`.`Producto` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` INT NOT NULL,
  `fecha_compra` DATE NOT NULL,
  `cantidad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Producto`));
  
  CREATE TABLE IF NOT EXISTS `minimarket`.`Detalle` (
  `id_detalle` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `precio_unitario` VARCHAR(45) NOT NULL,
  `total` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_detalle`));
  
  CREATE TABLE IF NOT EXISTS `minimarket`.`Boleta` (
  `id_boleta` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`id_boleta`));
  
  CREATE TABLE IF NOT EXISTS `minimarket`.`Cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `rut` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cliente`));

#Foraneas 
ALTER TABLE minimarket.producto ADD id_proveedor INT NOT NULL;
ALTER TABLE minimarket.producto ADD id_categoria INT NOT NULL;

ALTER TABLE minimarket.producto ADD CONSTRAINT productoProveedor FOREIGN KEY (id_proveedor) REFERENCES minimarket.proveedor(id_proveedor);
ALTER TABLE minimarket.producto ADD CONSTRAINT productoCategoria FOREIGN KEY (id_categoria) REFERENCES minimarket.categoria(id_categoria);
#ALTER TABLE minimarket.producto DROP foreign key productoCategoria;

ALTER TABLE minimarket.detalle ADD id_producto INT NOT NULL;
ALTER TABLE minimarket.detalle ADD id_boleta INT NOT NULL;

ALTER TABLE minimarket.detalle ADD CONSTRAINT detalleProducto FOREIGN KEY (id_producto) REFERENCES minimarket.producto(id_producto);
ALTER TABLE minimarket.detalle ADD CONSTRAINT detalleBoleta FOREIGN KEY (id_boleta) REFERENCES minimarket.boleta(id_boleta);

ALTER TABLE minimarket.boleta ADD id_cliente INT NOT NULL;
ALTER TABLE minimarket.boleta ADD CONSTRAINT boletaCliente FOREIGN KEY (id_cliente) REFERENCES minimarket.cliente(id_cliente);

