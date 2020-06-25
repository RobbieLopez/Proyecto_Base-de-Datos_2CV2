drop database if exists empresa;
create database empresa;
use empresa;
/*Tablas principales*/

create table Cliente(
	idCliente int(25) primary key,
	nombre varchar(25),
	paterno varchar(25),
	materno varchar(25),
	mail varchar(40),
	contrasenia varchar(25),
	prefCategora varchar(25),
	FechaNacimiento date,
	curp varchar(25)
);
/*insertar 18 clientes*/
insert into Cliente values(0,'ROBERTO','VALDERRAMA','LOPEZ','RVALDERRAMA@GMAIL.COM','123456789','NO','2000-04-20','VALR');
insert into Cliente values(1,'ERICKA','RUIZ','L','ERI@GMAIL.COM','987654321','NO','2000-02-15','RULE');

create table Repartidor(
	idRepartidor int(25) primary key,
	nombre varchar(25),
	capacidad varchar(25),
	comisVol varchar(25),
	comisPeso varchar(25)
);

create table Provedor(
	idProvedor int(25) primary key not null,
	nombre varchar(25),
	email varchar(25),
	contrasenia varchar(25),
	rfc varchar(25)
);
/*Faltan insertar 18 proveedores*/
insert into Provedor values(0,'ELZORRO','ELZORRO@GMAIL.COM','123456879','ELZ000');
insert into Provedor values(1,'BARCEL','BARCEL@GMAIL.COM','12345','BAR111');
create table Empleado(
	idEmpleado int(25)  primary key,
	nombre varchar(25),
	paterno varchar(25),
	materno varchar(25),
	email varchar(25)
);

create table Estado(
	idEstado int(25) primary key,
	nombreEstado varchar(25)
);

create table Zona(
	idZona int(25) primary key,
	municipio varchar(25)
);
/*Faltan insertar 18 zonas*/
insert into Zona values(0,'AZCAPOTZALCO');
insert into Zona values(1,'MIGUEL HIDALGO');


create table Promocion(
	idPromocion int(25) primary key,
	promocion varchar(25),
	porcentaje float
);

create table Categoria(
	idCategoria int(25) primary key,
	nombreCategoria varchar(25)
);
/*tablas con llave foranea*/

create table Direccion(
	idDireccion int(25) primary key,
	codigoPostal int(10),
	numero varchar(15),
	calle varchar(25),
	colonia varchar(25),
	municipio varchar(30),
	Estado varchar(25),
	idZona int(15),
foreign key (idZona) references Zona(idZona)
);
/*Faltan insertar 18 datos de Dirección*/

insert into Direccion values(0,21030,986,'ROSARIO','TIERRA NUEVA','AZCAPOTZALCO','CDMX',0);
insert into Direccion values(1,02130,15,'CALLE 15','NUEVA','MIGUEL HIDALGO','CDMX',1);

SELECT * FROM Direccion;
/**********************************/
create table Producto(
	idProducto int(25) primary key not null,
	nombre varchar(50),
	stock int(10),
	categoria varchar(15),
	precio float(25),
	marca varchar(25)
);
/*Faltan insertar 18 productos (PROCURAR NO COLOCAR PRECIOS MUY VARIADOS, DE PREFERENCIA
MULTIPLOS DE 100, YA QUE SE USAN EN LA TABLA DE PEDIDOS)*/
insert into Producto values(0,'COCA',15,'REFRESCO',500, 'COCA-COLA');
insert into Producto values(1,'TAKIS',10,'FRITURAS',130, 'BARCEL');

SELECT * FROM Producto;
/**********************************/
create table Pedido(
	idPedido int(25) primary key not null,
	fecha varchar(25),
	calificacion int(1),
	precioEnvio float(25),
	precioProducto int(25),
	fechaEntrega date,
	idEstado int(15),
	idZona int(15),
	idDireccion int(15),
	foreign key (idDireccion) references Direccion(idDireccion)
);
/*Faltan insertar 18 pedidos*/
insert into Pedido values(0,'2020-06-24',10,100,500,'2020-06-30',0,0,0);
insert into Pedido values(1,curdate(),9,100,100,'2020-07-01',1,1,1);

SELECT * FROM Pedido;
/**********************************/

create table Metodo(
	idMetodo int(25) primary key,
	numTargeta int(10),
	nip varchar(5),
	vencimiento date,
	idDireccion int(25),
	foreign key (idDireccion) references Direccion(idDireccion)
);


/*tablas relacionales*/
create table Entidad_Telefono(
	id int(25),
	Numero int(25)
);

create table Cliente_Pedidos(
	idCliente int(25),
	idPedido int(25),
foreign key (idCliente) references Cliente(idCliente),
foreign key (idPedido) references Pedido(idPedido) 
);
/* INSERTAR 18 PEDIDOS DEL CLIENTE (PUEDEN SER VARIADO EL IDCLIENTE E IDPEDIDO)*/
insert into Cliente_Pedidos values(0,0);
insert into Cliente_Pedidos values(0,1);



create table Repartidor_Empleado(
	idRepartidor int(25),
	idEmpleado int(25),
foreign key (idRepartidor) references Repartidor(idRepartidor),
foreign key (idEmpleado) references Empleado(idEmpleado)
);

create table Provedor_Repartidor(
	idProvedor int(25),
	idRepartidor int(25),
foreign key (idProvedor) references Provedor(idProvedor),
foreign key (idRepartidor) references Repartidor(idRepartidor)
);

create table Provedor_Categoria(
	idProvedor int(25),
	idCategoria int(25),
foreign key (idProvedor) references Provedor(idProvedor),
foreign key (idCategoria) references Categoria(idCategoria)
);

create table Pedidos_Repartidor(
	idPedido int(25),
	idRepartidor int(25),
foreign key (idPedido) references Pedido(idPedido),
foreign key (idRepartidor) references Repartidor(idRepartidor)
);

create table Provedor_Pedidos(
	idPedido int(25),
	idProvedor int(25),
foreign key (idPedido) references Pedido(idPedido),
foreign key (idProvedor) references Provedor(idProvedor)
);

/*-------------------------------------------*/


create table Entidad_Direccion(
	id int(25),
	idDireccion int(25),
foreign key (idDireccion) references Direccion(idDireccion)
);

create table Cliente_Metodo(
	idCliente int(25),
	idMetodo int(25),
foreign key (idCliente) references Cliente(idCliente),
foreign key (idMetodo) references Metodo(idMetodo)
);

create table Repartidor_Zona(
	idRepartidor int(25),
	idZona int(25),
foreign key (idRepartidor) references Repartidor(idRepartidor),
foreign key (idZona) references Zona(idZona)
);

create table Empleado_Pedido(
	idEmpleado int(25),
	idPedido int(25),
foreign key (idEmpleado) references Empleado(idEmpleado),
foreign key (idPedido) references Pedido(idPedido)
);

create table Pedido_Producto(
	idPedido int(25) not null,
	idProducto int(25) not null,
	cantidad int(25),
foreign key (idPedido) references Pedido(idPedido),
foreign key (idProducto) references Producto(idProducto)
);
/*INSERTAR 18 PEDIDOS DE PRODUCTOS
Se inserta el id del pedido, del producto y la cantidad solicitada*/

INSERT INTO Pedido_Producto values(0,0,10);
INSERT INTO Pedido_Producto values(1,1,20);

select * from Pedido_Producto;

create table Provedor_Producto(
	idProvedor int(25),
	idProducto int(25) not null,
foreign key (idProvedor) references Provedor(idProvedor),
foreign key (idProducto) references Producto(idProducto)
);
/*insertar 18 proveedores con producto*/
insert into Provedor_Producto values(0,0);
insert into Provedor_Producto values(1,1);


create table Bitacora(
	idBitcora int(25),
    idProducto int(25) not null,
	descripcion varchar(500),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
	ON UPDATE CURRENT_TIMESTAMP,
    tipo varchar(10),
foreign key (idProducto) references Producto(idProducto)
);

/*-------------------------------------------*/
