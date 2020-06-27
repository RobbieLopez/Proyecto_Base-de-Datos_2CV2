
drop database if exists empresa;
create database empresa;
use empresa;

/* Tablas principales */

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

insert into Cliente values(0,'ROBERTO','VALDERRAMA','LOPEZ','RVALDERRAMA@GMAIL.COM','123456789','NO','2000-04-20','VALR');
insert into Cliente values(1,'ERICKA','RUIZ','L','ERI@GMAIL.COM','987654321','NO','2000-02-15','RULE');
insert into Cliente values(3,'GREGORIO','CARMODA','SANDOVAL','GREGCA@GMAIL.COM','GH5678GF','NO','2000-02-26','CASG');
insert into Cliente values(4,'Teresa','Barba','Sánchez','terebab@gmail.com','gh45ft89','NO','1969-10-15','BAST');
insert into Cliente values(5,'Jonas','Villalva','Villalpando','villavilla@gmail.com','fg59bn78','NO','1988-12-28','VIVJ');
insert into Cliente values(6,'Elena','Espejo','Muñoz','maryhhelen@yahoo.com.mx','sc28mf90','NO','1969-06-03','ESME');
insert into Cliente values(7,'JOSEFINA','TOVAR','ESPEJO','JOSEFINA10969@GMAIL.COM','FG81SE96','SI','1999-10-07','TOEM');
insert into Cliente values(8,'ALAN','PALACIOS','LUGO','APYOLT@GMAIL.COM','AN67CM19','NO','2000-01-24','PALA');
insert into Cliente values(9,'ERICK','CERVERA','MONTEROS','ERICEMO@GMAIL.COM','127845CC','NO','2000-04-15','CEME');
insert into Cliente values(10,'Micaela','Giner','Lugo','micagigi@gmail.com','aqct67h','NO','2002-02-28','GILM');
insert into Cliente values(11,'Kimberly','Santana','Ruiz','kimi45@hotmail.com','kimyh57839','SI','1998-10-13','SARK');
insert into Cliente values(12,'Verónica','Ruiz','González','yoveruiz@hotmail.com','yove456gg','NO','2000-01-02','RUGV');
insert into Cliente values(13,'Alexis','Mora','Costales','alex777@hotmail.com','alemora5677','SI','1996-11-13','MOCA');
insert into Cliente values(14,'ANDREA','GONZALEZ','MORENO','ANDY56HD@GMAIL.COM','17854963','SI','2000-04-25','GOMA');
insert into Cliente values(15,'Yazmin','Zamora','Lorrabaquio','yazzamo@gmail.com','gh45mk90','NO','1993-05-30','ZALY');
insert into Cliente values(16,'Alfredo','Martínez','Guerrero','jalfredomartinez@yahoo.com.mx','jalfredo2000','SI','1970-08-08','MAGA');
insert into Cliente values(17,'Jorge','Tovar','Ojeda','jorgetovar01@yahoo.com.mx','ga45rd90','NO','1967-03-17','TOOJ');
insert into Cliente values(18,'ERICKA','HERNANDEZ','AVILA','ERIHEAV@GMAIL.COM','987GH321','SI','2003-07-15','HEAE');
insert into Cliente values(19,'Benjamin','Luna','Benoso','mobbius@gmail.com','p3n3rfs','NO','1987-05-01','LUBB');

create table Repartidor(
	idRepartidor int(25) primary key,
	nombre varchar(25),
	capacidad int(2),
	comisVol int(5),
	comisPeso float(5)
);

insert into Repartidor values(0,'Alberto Vega','5','50',5);
insert into Repartidor values(1,'Sebastian Dimas','10','100',10);
insert into Repartidor values(2,'Miguel Mungua','15','100',15);
insert into Repartidor values(3,'Paola Orero','2','150',20);
insert into Repartidor values(4,'Gloria Lara','58','200',25);
insert into Repartidor values(5,'Benjamin Gomis','54','200',30);
insert into Repartidor values(6,'Iciar Canto','45','250',35);
insert into Repartidor values(7,'Clara Villena','12','300',5);
insert into Repartidor values(8,'Amaia Uriarte','13','300',10);
insert into Repartidor values(9,'Lourdes Piqueras','45','300',15);
insert into Repartidor values(10,'Najat Jerez','10','300',20);
insert into Repartidor values(11,'Iago Tirado','5','250',25);
insert into Repartidor values(12,'César Merino','74','20',30);
insert into Repartidor values(13,'Caridad Barroso','12','50',35);
insert into Repartidor values(14,'Alexander Ortega','20','100',5);
insert into Repartidor values(15,'Melanie Herrera','25','100',10);
insert into Repartidor values(16,'Esther Mir','23','250',15);
insert into Repartidor values(17,'Hamza de La Torre','40','400',20);
insert into Repartidor values(18,'Joana Franco','50','50',25);
insert into Repartidor values(19,'Vicenta Soto','24','250',30);

create table Provedor(
	idProvedor int(25) primary key not null,
	nombre varchar(25),
	email varchar(25),
	contrasenia varchar(25),
	rfc varchar(25)
);

insert into Provedor values(0,'ELZORRO','ELZORRO@GMAIL.COM','123456879','ELZ000');
insert into Provedor values(1,'BARCEL','BARCEL@GMAIL.COM','12345','BAR111');
insert into Provedor values(2,'SABRITAS','SABRITAS@GMAIL.COM','187546','SAB222');
insert into Provedor values(3,'GAMESA','GAMESA@GMAIL.COM','HG63GBC7','GAM333');
insert into Provedor values(4,'MARINELA','MARINEÑA@GMAIL.COM','m4r1n3l4','MAR444');
insert into Provedor values(5,'BIMBO','BIMBO@GMAIL.COM','b1mb0','BIM555');
insert into Provedor values(6,'WALMART','WALMART@GMAIL.COM','w4lm4rt','WAL666');
insert into Provedor values(7,'SANBORNS','SANBORNS@GMAIL.COM','s4nb0rns','SAN777');
insert into Provedor values(8,'GLICO','GLICO@GMAIL.COM','gl1c0','GLI888');
insert into Provedor values(9,'NESTLE','NESTLE@GMAIL.COM','n3stl3','NES999');
insert into Provedor values(10,'MARIA','MARIAGAMESA@GMAIL.COM','m4r14','MARIAGAM123');
insert into Provedor values(11,'BODEGAAURRERA','BAURRERA@GMAIL.COM','mamalucha','BAURR785');
insert into Provedor values(12,'DURACEL','DURACEL@GMAIL.COM','dUr4c3l','DURA69');
insert into Provedor values(13,'MODERNA','LAMODERNA@GMAIL.COM','m0d3rn4','MODE70');
insert into Provedor values(14,'KELLOGS','KELLOGS@GMAIL.COM','k3110gs','KELL71');
insert into Provedor values(15,'SABA','SABA@GMAIL.COM','Ssabacontigo','saba72');
insert into Provedor values(16,'GREATVALUE','GREATVALUE@GMAIL.COM','valuepirata','GREAT128');
insert into Provedor values(17,'TOTIS','TOTIS@HOTMAIL.COM','t0t1s','TOTIS456');
insert into Provedor values(18,'VERO','VERO@GMAIL.COM','dulcesv3r0','VERO178');
insert into Provedor values(19,'COCACOLA','COCACOLA@GMAIL.COM','tastethefeeling','COCACOLA78');

create table Empleado(
	idEmpleado int(25)  primary key,
	nombre varchar(25),
	paterno varchar(25),
	materno varchar(25),
	email varchar(25)
);

insert into Empleado values(0,'Alfredo','López','Pérez','alfredolp@gmail.com');
insert into Empleado values(1,'Yago','San','Juan','yago999@gmail.com');
insert into Empleado values(2,'Anfonso','Fraga','Espinosa','alfred567@gmail.com');
insert into Empleado values(3,'Monserrat','Leal','Hernández','lealhdzms@gmail.com');
insert into Empleado values(4,'Lilia','Pérez','Velázquez','lilipark@hotmail.com');
insert into Empleado values(5,'Mauricio','Ortega','Ramirez','mau59@hotmail.com');
insert into Empleado values(6,'Ellie','Cruz','Garayoa','elliec@gmail.com');
insert into Empleado values(7,'Mariela','Cruz','Zamora','macza@gmail.com');
insert into Empleado values(8,'Isabel','Torres','Quintero','isa777@hotmail.com');
insert into Empleado values(9,'Simon','Carnal','Moreno','simoncarnaljaja@gmail.com');
insert into Empleado values(10,'Joe','Cabrera','Cruz','joe123456@gmail.com');
insert into Empleado values(11,'Bárbara','Godínez','Ruiz','barbarag@hotmail.com');
insert into Empleado values(12,'Mauro','Codina','Medina','medicalic@gmail.com');
insert into Empleado values(13,'Noel','Pérez','Martínez','jnoel27@hotmail.com');
insert into Empleado values(14,'José','Diego','Antonio','jdanton@yahoo.com.mx');
insert into Empleado values(15,'Ivonne','Mercado','García','ivonnegy@yahoo.com.mx');
insert into Empleado values(16,'Christopher','Calderón','Gutierrez','chcalgu@gmail.com');
insert into Empleado values(17,'Armando','Paredes','Lugo','arms@hotmail.com');
insert into Empleado values(18,'Nil','Cruz','Ochoa','nil997547@hotmail.com');
insert into Empleado values(19,'Nadia','Quiros','Puertas','puertasq@hotmail.com');

create table Estado(
	idEstado int(25) primary key,
	nombreEstado varchar(25)
);

insert into Estado values(0,'CDMX');
insert into Estado values(1,'Estado de México');
insert into Estado values(2,'Morelos');
insert into Estado values(3,'Puebla');
insert into Estado values(4,'Nayarit');
insert into Estado values(5,'Quintana Roo');
insert into Estado values(6,'Yucatán');
insert into Estado values(7,'Campeche');
insert into Estado values(8,'Guerrero');
insert into Estado values(9,'Oaxaca');
insert into Estado values(10,'Veracruz');
insert into Estado values(11,'Hidalgo');
insert into Estado values(12,'Tlaxcala');
insert into Estado values(13,'Aguascalientes');
insert into Estado values(14,'Jalisco');
insert into Estado values(15,'Coahuila');
insert into Estado values(16,'Chihuahua');
insert into Estado values(17,'Durango');
insert into Estado values(18,'Tabasco');
insert into Estado values(19,'Sinaloa');

create table Zona(
	idZona int(25) primary key,
	municipio varchar(25)
);

insert into Zona values(0,'Coyoacán');
insert into Zona values(1,'Miguel Hidalgo');
insert into Zona values(2,'La Magdalena Contreras');
insert into Zona values(3,'Tláhuac');
insert into Zona values(4,'Azcapotzalco');
insert into Zona values(5,'Itztacalco');
insert into Zona values(6,'Álvaro Obregón');
insert into Zona values(7,'Xochimilco');
insert into Zona values(8,'Venustiano Carranza');
insert into Zona values(9,'Tlalpan');
insert into Zona values(10,'Cuajimalpa de Morelos');
insert into Zona values(11,'Cuauhtémoc');
insert into Zona values(12,'Iztapalapa');
insert into Zona values(13,'Milpa Alta');
insert into Zona values(14,'Benito Juárez');
insert into Zona values(15,'Gustavo A. Madero');
insert into Zona values(16,'Nezahualcóyotl');
insert into Zona values(17,'Naucalpan');
insert into Zona values(18,'Tlanepantla');
insert into Zona values(19,'Ecatepec');

create table Promocion(
	idPromocion int(25) primary key,
	promocion varchar(25),
	porcentaje float(5)
);

insert into Promocion values(0,'df56yj78',10);
insert into Promocion values(1,'fh67bd49',15);
insert into Promocion values(2,'sm67vs89',20);
insert into Promocion values(3,'sa09vb78',25);
insert into Promocion values(4,'al94mk87',30);
insert into Promocion values(5,'zm76sf43',35);
insert into Promocion values(6,'lo76gh89',10);
insert into Promocion values(7,'mg63ee89',15);
insert into Promocion values(8,'as39xe78',20);
insert into Promocion values(9,'as34vb72',25);
insert into Promocion values(10,'ax45mk94',30);
insert into Promocion values(11,'zx63bm98',35);
insert into Promocion values(12,'gx45nb61',5);
insert into Promocion values(13,'ab65nm90',10);
insert into Promocion values(14,'ax34ax21',15);
insert into Promocion values(15,'ax34fv67',20);
insert into Promocion values(16,'zx45fd45',25);
insert into Promocion values(17,'mn12xc67',30);
insert into Promocion values(18,'ze41cl04',35);
insert into Promocion values(19,'ct64bn83',40);
insert into Promocion values(20,'nv56bd16',50);

create table Categoria(
	idCategoria int(25) primary key,
	nombreCategoria varchar(25)
);

insert into Categoria values(0,'comida');
insert into Categoria values(1,'botana');
insert into Categoria values(2,'perfumes');
insert into Categoria values(3,'ropa');
insert into Categoria values(4,'linea blanca');
insert into Categoria values(5,'bebidas');
insert into Categoria values(6,'farmacia');
insert into Categoria values(7,'juguetes');
insert into Categoria values(8,'niños');
insert into Categoria values(9,'higiene');
insert into Categoria values(10,'juegos de mesa');
insert into Categoria values(11,'pilas');
insert into Categoria values(12,'muebles');
insert into Categoria values(13,'alcohol');
insert into Categoria values(14,'deportes');
insert into Categoria values(15,'mecanica');
insert into Categoria values(16,'mascotas');
insert into Categoria values(17,'interiores');
insert into Categoria values(18,'decoraciones');
insert into Categoria values(19,'pan');

/* Tablas con llave foranea */

create table Direccion(
	idDireccion int(25) primary key,
	codigoPostal int(10),
	numero int(15),
	calle varchar(25),
	colonia varchar(25),
	municipio varchar(30),
	Estado varchar(25),
	idZona int(15),
foreign key (idZona) references Zona(idZona)
);

insert into Direccion values(0,21030,986,'Rosario','Tierra Nueva','Azcapotzalco','CDMX',4);
insert into Direccion values(1,02130,15,'Calle 15','Nueva','Miguel Hidalgo','CDMX',1);
insert into Direccion values(2,06470,20,'Calle45','San Rafael','Cuauhtémoc','CDMX',11);
insert into Direccion values(3,09250,5,'Zafaera','La Regadera','Iztapalapa','CDMX',12);
insert into Direccion values(4,09260,15,'Consti','Constitucion de 1917','Iztapalapa','CDMX',12);
insert into Direccion values(5,02160,19,'Gardenia','Santo Domingo','Azcapotzalco','CDMX',4);
insert into Direccion values(6,06700,314,'Durango','Roma Norte','Cuauhtémoc','CDMX',11);
insert into Direccion values(7,03300,1627,'Tlalpan','Portales','Benito Juárez','CDMX',14);
insert into Direccion values(8,09400,58,'Fiscales','Sifon','Iztapalapa','CDMX',12);
insert into Direccion values(9,03020,251,'Zempoala','Narvarte Poniente','Benito Juárez','CDMX',14);
insert into Direccion values(10,14140,4091,'Periferico Sur','Fuentes del Pedregal','Tlalpan','CDMX',9);
insert into Direccion values(11,00000,39,'CL Rio','Huichapan','Miguel Hidalgo','CDMX',1);
insert into Direccion values(12,09900,12,'Deportes','San Lorenzo','Iztapalapa','CDMX',12);
insert into Direccion values(13,06760,32,'Tuxpan','Roma Sur','Cuauhtémoc','CDMX',11);
insert into Direccion values(14,06700,64,'Yucatan','Roma','Cuauhtémoc','CDMX',11);
insert into Direccion values(15,07750,19,'Norte 19','Nueva Vallejo','Gustavo A. Madero','CDMX',15);
insert into Direccion values(16,55000,22,'Carlos B Zetina','Ecatepec de Morelos','Ecatepec','Estado de México',19);
insert into Direccion values(17,02020,189,'Calzada Santo Tomás','Santo Tomás','Azcapotzalco','CDMX',4);
insert into Direccion values(18,57620,197,'Manuela Contreras','México','Nezahualcóyotl','Estado de México',16);
insert into Direccion values(19,02080,214,'Calle Azcapotzalco','Clavería','Azcapotzalco','CDMX',4);

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

insert into Producto values(0,'COCA',100,'bebidas',500, 'COCACOLA');
insert into Producto values(1,'TAKIS',100,'botana',200, 'BARCEL');
insert into Producto values(2,'MARIAS',100,'pan',500,'GAMESA');
insert into Producto values(3,'FANTA',50,'bebidas',800,'COCACOLA');
insert into Producto values(4,'LIMON',100,'botana',800,'SABRITAS');
insert into Producto values(5,'ADOBADAS',100,'botana',700,'SABRITAS');
insert into Producto values(6,'NESQUIK',50,'comida',900,'KELLOGS');
insert into Producto values(7,'TRIXX',50,'comida',900,'KELLOGS');
insert into Producto values(8,'POCKYS',100,'botana',200,'GLICO');
insert into Producto values(9,'ZUCARITAS',50,'comida',900,'KELLOGS');
insert into Producto values(10,'MANTECADAS',70,'pan',500,'BIMBO');
insert into Producto values(11,'DONAS',70,'pan',500,'BIMBO');
insert into Producto values(12,'DONITAS',50,'pan',200,'BIMBO');
insert into Producto values(13,'CHOCORROLES',50,'pan',200,'MARINELA');
insert into Producto values(14,'DALMATA',20,'pan',500,'MARINELA');
insert into Producto values(15,'GANSITO',100,'pan',500,'MARINELA');
insert into Producto values(16,'PINGUINOS',100,'pan',400,'MARINELLA');
insert into Producto values(17,'BIMBOLLOS',70,'pan',400,'BIMBO');
insert into Producto values(18,'SPRITE',50,'bebidas',200,'COCACOLA');
insert into Producto values(19,'LIFT',50,'bebidas',600,'COCACOLA');

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

insert into Pedido values(0,'2020-06-24',10,100,500,'2020-06-30',0,0,0);
insert into Pedido values(1,'2020-06-25',9,100,100,'2020-07-01',1,1,1);
insert into Pedido values(2,'2020-06-26',10,500,100,'2020-06-30',1,2,3);
insert into Pedido values(3,'2020-05-26',9,500,100,'2020-05-30',1,2,3);
insert into Pedido values(4,'2020-05-24',8,200,50,'2020-05-29',3,3,3);
insert into Pedido values(5,'2020-05-12',10,300,100,'2020-05-12',4,5,3);
insert into Pedido values(6,'2020-05-12',7,400,200,'2020-05-15',5,6,2);
insert into Pedido values(7,'2020-05-13',10,500,300,'2020-05-14',9,6,3);
insert into Pedido values(8,'2020-05-16',10,500,100,'2020-05-20',2,3,6);
insert into Pedido values(9,'2020-05-17',10,900,100,'2020-05-18',5,5,5);
insert into Pedido values(10,'2020-05-19',9,500,100,'2020-05-20',6,6,6);
insert into Pedido values(11,'2020-05-19',9,900,200,'2020-05-19',8,5,2);
insert into Pedido values(12,'2020-05-20',9,900,100,'2020-05-25',4,5,2);
insert into Pedido values(13,'2020-05-20',5,200,200,'2020-05-21',3,6,6);
insert into Pedido values(14,'2020-05-21',10,300,200,'2020-05-23',9,9,9);
insert into Pedido values(15,'2020-05-23',9,300,100,'2020-05-26',8,1,8);
insert into Pedido values(16,'2020-05-04',5,200,100,'2020-05-06',1,1,2);
insert into Pedido values(17,'2020-05-29',10,500,50,'2020-05-30',1,1,3);
insert into Pedido values(18,'2020-05-29',10,600,50,'2020-05-31',1,3,3);
insert into Pedido values(19,'2020-05-30',9,50,50,'2020-06-01',2,1,2);


SELECT * FROM Pedido;
/**********************************/

create table Metodo(
	idMetodo int(25) primary key,
	numTargeta int(11),
	nip varchar(5),
	vencimiento date,
	idDireccion int(25),
	foreign key (idDireccion) references Direccion(idDireccion)
);

insert into Metodo values(1,4529785632,069,0624,0);
insert into Metodo values(2,4521795482,228,0523,5);
insert into Metodo values(3,4527896325,785,1222,2);
insert into Metodo values(4,4597523652,125,1224,6);
insert into Metodo values(5,4512457896,125,0125,9);
insert into Metodo values(6,1231458752,752,0226,6);
insert into Metodo values(7,1245875339,964,0520,8);
insert into Metodo values(8,1245785455,782,0522,1);
insert into Metodo values(9,4578136998,025,0430,3);
insert into Metodo values(10,4523369898,1228,0425,4);
insert into Metodo values(11,1258996589,9654,1126,7);
insert into Metodo values(12,1236987412,030,1123,9);
insert into Metodo values(13,9874563214,2258,1230,18);
insert into Metodo values(14,9658954852,962,0430,15);
insert into Metodo values(15,1245784588,362,0723,16);
insert into Metodo values(16,4542598633,987,0822,17);
insert into Metodo values(17,5204150033,002,0924,17);
insert into Metodo values(18,1225896332,0014,1026,19);
insert into Metodo values(19,4522886332,2088,1205,12);

/* Tablas relacionales */

create table Entidad_Telefono(
	id int(25),
	Numero int(25)
);

insert into Entidad_Telefono values(0,5589632147);
insert into Entidad_Telefono values(1,5578541258);
insert into Entidad_Telefono values(2,5596589321);
insert into Entidad_Telefono values(3,5529493929);
insert into Entidad_Telefono values(4,5532764699);
insert into Entidad_Telefono values(5,5502985632);
insert into Entidad_Telefono values(6,5578410025);
insert into Entidad_Telefono values(7,5596023369);
insert into Entidad_Telefono values(8,5547814478);
insert into Entidad_Telefono values(9,5526325022);
insert into Entidad_Telefono values(10,5532020069);
insert into Entidad_Telefono values(11,5596320185);
insert into Entidad_Telefono values(12,5532632002);
insert into Entidad_Telefono values(13,5578458520);
insert into Entidad_Telefono values(14,5562563021);
insert into Entidad_Telefono values(15,5598710258);
insert into Entidad_Telefono values(16,5532698745);
insert into Entidad_Telefono values(17,5502120147);
insert into Entidad_Telefono values(18,5512120089);
insert into Entidad_Telefono values(19,5532096547);

create table Cliente_Pedidos(
	idCliente int(25),
	idPedido int(25),
foreign key (idCliente) references Cliente(idCliente),
foreign key (idPedido) references Pedido(idPedido) 
);

insert into Cliente_Pedidos values(0,0);
insert into Cliente_Pedidos values(0,1);
insert into Cliente_Pedidos values(1,2);
insert into Cliente_Pedidos values(8,6);
insert into Cliente_Pedidos values(7,0);
insert into Cliente_Pedidos values(0,2);
insert into Cliente_Pedidos values(1,1);
insert into Cliente_Pedidos values(0,5);
insert into Cliente_Pedidos values(7,4);
insert into Cliente_Pedidos values(0,3);
insert into Cliente_Pedidos values(9,5);
insert into Cliente_Pedidos values(10,2);
insert into Cliente_Pedidos values(8,7);
insert into Cliente_Pedidos values(3,9);
insert into Cliente_Pedidos values(3,7);
insert into Cliente_Pedidos values(3,6);
insert into Cliente_Pedidos values(8,4);
insert into Cliente_Pedidos values(7,1);
insert into Cliente_Pedidos values(6,0);

create table Repartidor_Empleado(
	idRepartidor int(25),
	idEmpleado int(25),
foreign key (idRepartidor) references Repartidor(idRepartidor),
foreign key (idEmpleado) references Empleado(idEmpleado)
);

insert into Repartidor_Empleado values(0,0);
insert into Repartidor_Empleado values(0,1);
insert into Repartidor_Empleado values(0,2);
insert into Repartidor_Empleado values(0,3);
insert into Repartidor_Empleado values(1,0);
insert into Repartidor_Empleado values(11,1);
insert into Repartidor_Empleado values(9,6);
insert into Repartidor_Empleado values(2,4);
insert into Repartidor_Empleado values(6,2);
insert into Repartidor_Empleado values(1,2);
insert into Repartidor_Empleado values(7,5);
insert into Repartidor_Empleado values(7,6);
insert into Repartidor_Empleado values(6,3);
insert into Repartidor_Empleado values(7,7);
insert into Repartidor_Empleado values(9,1);
insert into Repartidor_Empleado values(2,10);
insert into Repartidor_Empleado values(2,9);
insert into Repartidor_Empleado values(2,3);
insert into Repartidor_Empleado values(15,16);
insert into Repartidor_Empleado values(6,1);

create table Provedor_Repartidor(
	idProvedor int(25),
	idRepartidor int(25),
foreign key (idProvedor) references Provedor(idProvedor),
foreign key (idRepartidor) references Repartidor(idRepartidor)
);

insert into Provedor_Repartidor values(2,9);
insert into Provedor_Repartidor values(1,3);
insert into Provedor_Repartidor values(0,0);
insert into Provedor_Repartidor values(2,0);
insert into Provedor_Repartidor values(4,3);
insert into Provedor_Repartidor values(3,3);
insert into Provedor_Repartidor values(4,2);
insert into Provedor_Repartidor values(8,9);
insert into Provedor_Repartidor values(6,5);
insert into Provedor_Repartidor values(9,7);
insert into Provedor_Repartidor values(0,4);
insert into Provedor_Repartidor values(2,7);
insert into Provedor_Repartidor values(6,7);
insert into Provedor_Repartidor values(7,3);
insert into Provedor_Repartidor values(4,4);
insert into Provedor_Repartidor values(7,2);
insert into Provedor_Repartidor values(4,0);
insert into Provedor_Repartidor values(4,9);
insert into Provedor_Repartidor values(5,5);
insert into Provedor_Repartidor values(6,5);

create table Provedor_Categoria(
	idProvedor int(25),
	idCategoria int(25),
foreign key (idProvedor) references Provedor(idProvedor),
foreign key (idCategoria) references Categoria(idCategoria)
);

insert into Provedor_Categoria values(0,0);
insert into Provedor_Categoria values(0,1);
insert into Provedor_Categoria values(0,2);
insert into Provedor_Categoria values(0,3);
insert into Provedor_Categoria values(0,4);
insert into Provedor_Categoria values(0,5);
insert into Provedor_Categoria values(0,6);
insert into Provedor_Categoria values(0,7);
insert into Provedor_Categoria values(1,0);
insert into Provedor_Categoria values(1,2);
insert into Provedor_Categoria values(1,3);
insert into Provedor_Categoria values(1,1);
insert into Provedor_Categoria values(1,4);
insert into Provedor_Categoria values(1,5);
insert into Provedor_Categoria values(2,0);
insert into Provedor_Categoria values(2,1);
insert into Provedor_Categoria values(2,2);
insert into Provedor_Categoria values(3,0);
insert into Provedor_Categoria values(8,9);
insert into Provedor_Categoria values(1,10);

create table Pedidos_Repartidor(
	idPedido int(25),
	idRepartidor int(25),
foreign key (idPedido) references Pedido(idPedido),
foreign key (idRepartidor) references Repartidor(idRepartidor)
);

insert into Pedidos_Repartidor values(10,0);
insert into Pedidos_Repartidor values(10,1);
insert into Pedidos_Repartidor values(10,2);
insert into Pedidos_Repartidor values(10,3);
insert into Pedidos_Repartidor values(10,4);
insert into Pedidos_Repartidor values(9,0);
insert into Pedidos_Repartidor values(9,1);
insert into Pedidos_Repartidor values(9,2);
insert into Pedidos_Repartidor values(8,0);
insert into Pedidos_Repartidor values(8,1);
insert into Pedidos_Repartidor values(8,2);
insert into Pedidos_Repartidor values(8,3);
insert into Pedidos_Repartidor values(8,4);
insert into Pedidos_Repartidor values(6,0);
insert into Pedidos_Repartidor values(6,1);
insert into Pedidos_Repartidor values(6,2);
insert into Pedidos_Repartidor values(5,2);
insert into Pedidos_Repartidor values(5,1);
insert into Pedidos_Repartidor values(5,0);
insert into Pedidos_Repartidor values(0,2);

create table Provedor_Pedidos(
	idPedido int(25),
	idProvedor int(25),
foreign key (idPedido) references Pedido(idPedido),
foreign key (idProvedor) references Provedor(idProvedor)
);

insert into Provedor_Pedidos values(19,19);
insert into Provedor_Pedidos values(19,18);
insert into Provedor_Pedidos values(19,17);
insert into Provedor_Pedidos values(19,16);
insert into Provedor_Pedidos values(15,15);
insert into Provedor_Pedidos values(15,14);
insert into Provedor_Pedidos values(15,12);
insert into Provedor_Pedidos values(15,0);
insert into Provedor_Pedidos values(6,1);
insert into Provedor_Pedidos values(4,5);
insert into Provedor_Pedidos values(4,6);
insert into Provedor_Pedidos values(4,7);
insert into Provedor_Pedidos values(6,2);
insert into Provedor_Pedidos values(8,1);
insert into Provedor_Pedidos values(8,0);
insert into Provedor_Pedidos values(7,0);
insert into Provedor_Pedidos values(7,1);
insert into Provedor_Pedidos values(7,2);
insert into Provedor_Pedidos values(7,3);
insert into Provedor_Pedidos values(3,6);

/*-------------------------------------------*/


create table Entidad_Direccion(
	id int(25),
	idDireccion int(25),
foreign key (idDireccion) references Direccion(idDireccion)
);

insert into Entidad_Direccion values(1,0);
insert into Entidad_Direccion values(2,0);
insert into Entidad_Direccion values(3,0);
insert into Entidad_Direccion values(4,0);
insert into Entidad_Direccion values(5,0);
insert into Entidad_Direccion values(6,1);
insert into Entidad_Direccion values(7,1);
insert into Entidad_Direccion values(8,1);
insert into Entidad_Direccion values(9,1);
insert into Entidad_Direccion values(10,1);
insert into Entidad_Direccion values(1,2);
insert into Entidad_Direccion values(2,2);
insert into Entidad_Direccion values(3,2);
insert into Entidad_Direccion values(4,2);
insert into Entidad_Direccion values(5,2);
insert into Entidad_Direccion values(6,3);
insert into Entidad_Direccion values(7,3);
insert into Entidad_Direccion values(8,3);
insert into Entidad_Direccion values(9,3);
insert into Entidad_Direccion values(10,3);

create table Cliente_Metodo(
	idCliente int(25),
	idMetodo int(25),
foreign key (idCliente) references Cliente(idCliente),
foreign key (idMetodo) references Metodo(idMetodo)
);

insert into Cliente_Metodo values(0,0);
insert into Cliente_Metodo values(0,1);
insert into Cliente_Metodo values(0,2);
insert into Cliente_Metodo values(0,3);
insert into Cliente_Metodo values(0,4);
insert into Cliente_Metodo values(0,5);
insert into Cliente_Metodo values(0,6);
insert into Cliente_Metodo values(0,7);
insert into Cliente_Metodo values(1,0);
insert into Cliente_Metodo values(1,2);
insert into Cliente_Metodo values(1,3);
insert into Cliente_Metodo values(1,1);
insert into Cliente_Metodo values(1,4);
insert into Cliente_Metodo values(1,5);
insert into Cliente_Metodo values(2,0);
insert into Cliente_Metodo values(2,1);
insert into Cliente_Metodo values(2,2);
insert into Cliente_Metodo values(3,0);
insert into Cliente_Metodo values(8,9);
insert into Cliente_Metodo values(1,10);

create table Repartidor_Zona(
	idRepartidor int(25),
	idZona int(25),
foreign key (idRepartidor) references Repartidor(idRepartidor),
foreign key (idZona) references Zona(idZona)
);

insert into Repartidor_Zona values(19,19);
insert into Repartidor_Zona values(19,18);
insert into Repartidor_Zona values(19,17);
insert into Repartidor_Zona values(19,16);
insert into Repartidor_Zona values(15,15);
insert into Repartidor_Zona values(15,14);
insert into Repartidor_Zona values(15,12);
insert into Repartidor_Zona values(15,0);
insert into Repartidor_Zona values(6,1);
insert into Repartidor_Zona values(4,5);
insert into Repartidor_Zona values(4,6);
insert into Repartidor_Zona values(4,7);
insert into Repartidor_Zona values(6,2);
insert into Repartidor_Zona values(8,1);
insert into Repartidor_Zona values(8,0);
insert into Repartidor_Zona values(7,0);
insert into Repartidor_Zona values(7,1);
insert into Repartidor_Zona values(7,2);
insert into Repartidor_Zona values(7,3);
insert into Repartidor_Zona values(3,6);

create table Empleado_Pedido(
	idEmpleado int(25),
	idPedido int(25),
foreign key (idEmpleado) references Empleado(idEmpleado),
foreign key (idPedido) references Pedido(idPedido)
);

insert into Empleado_Pedido values(0,0);
insert into Empleado_Pedido values(0,1);
insert into Empleado_Pedido values(1,2);
insert into Empleado_Pedido values(8,6);
insert into Empleado_Pedido values(7,0);
insert into Empleado_Pedido values(0,2);
insert into Empleado_Pedido values(1,1);
insert into Empleado_Pedido values(0,5);
insert into Empleado_Pedido values(7,4);
insert into Empleado_Pedido values(0,3);
insert into Empleado_Pedido values(9,5);
insert into Empleado_Pedido values(10,2);
insert into Empleado_Pedido values(8,7);
insert into Empleado_Pedido values(3,9);
insert into Empleado_Pedido values(3,7);
insert into Empleado_Pedido values(3,6);
insert into Empleado_Pedido values(8,4);
insert into Empleado_Pedido values(7,1);
insert into Empleado_Pedido values(6,0);

create table Pedido_Producto(
	idPedido int(25) not null,
	idProducto int(25) not null,
	cantidad int(25),
foreign key (idPedido) references Pedido(idPedido),
foreign key (idProducto) references Producto(idProducto)
);

insert into Pedido_Producto values(10,0);
insert into Pedido_Producto values(10,1);
insert into Pedido_Producto values(10,2);
insert into Pedido_Producto values(10,3);
insert into Pedido_Producto values(10,4);
insert into Pedido_Producto values(9,0);
insert into Pedido_Producto values(9,1);
insert into Pedido_Producto values(9,2);
insert into Pedido_Producto values(8,0);
insert into Pedido_Producto values(8,1);
insert into Pedido_Producto values(8,2);
insert into Pedido_Producto values(8,3);
insert into Pedido_Producto values(8,4);
insert into Pedido_Producto values(6,0);
insert into Pedido_Producto values(6,1);
insert into Pedido_Producto values(6,2);
insert into Pedido_Producto values(5,2);
insert into Pedido_Producto values(5,1);
insert into Pedido_Producto values(5,0);
insert into Pedido_Producto values(0,2);

select * from Pedido_Producto;

create table Provedor_Producto(
	idProvedor int(25),
	idProducto int(25) not null,
foreign key (idProvedor) references Provedor(idProvedor),
foreign key (idProducto) references Producto(idProducto)
);

insert into Provedor_Producto values(1,0);
insert into Provedor_Producto values(2,0);
insert into Provedor_Producto values(3,0);
insert into Provedor_Producto values(4,0);
insert into Provedor_Producto values(5,0);
insert into Provedor_Producto values(6,1);
insert into Provedor_Producto values(7,1);
insert into Provedor_Producto values(8,1);
insert into Provedor_Producto values(9,1);
insert into Provedor_Producto values(10,1);
insert into Provedor_Producto values(1,2);
insert into Provedor_Producto values(2,2);
insert into Provedor_Producto values(3,2);
insert into Provedor_Producto values(4,2);
insert into Provedor_Producto values(5,2);
insert into Provedor_Producto values(6,3);
insert into Provedor_Producto values(7,3);
insert into Provedor_Producto values(8,3);
insert into Provedor_Producto values(9,3);
insert into Provedor_Producto values(10,3);


create table Bitacora(
	idBitcora int(25),
    idProducto int(25) not null,
	descripcion varchar(500),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
	ON UPDATE CURRENT_TIMESTAMP,
    tipo varchar(10),
foreign key (idProducto) references Producto(idProducto)
);

insert into Bitacora values(0,0,'registro de pedido','2020-06-16','registro');
insert into Bitacora values(1,0,'registro de pedido','2020-06-25','registro');
insert into Bitacora values(2,0,'modificacion de pedido','2020-05-24','modificacion');
insert into Bitacora values(3,1,'cancelacion de pedido','2020-05-16','cancelacion');
insert into Bitacora values(4,1,'registro de pedido','2020-06-30','registro');
insert into Bitacora values(5,1,'registro de pedido','2020-05-10','registro');
insert into Bitacora values(6,1,'registro de pedido','2020-05-16','registro');
insert into Bitacora values(7,2,'registro de pedido','2020-06-23','registro');
insert into Bitacora values(8,2,'cancelacion de pedido','2020-06-01','cancelacion');
insert into Bitacora values(9,2,'registro de pedido','2020-06-02','registro');
insert into Bitacora values(10,2,'registro de pedido','2020-06-13','registro');
insert into Bitacora values(11,3,'registro de pedido','2020-06-15','registro');
insert into Bitacora values(12,3,'modificacion de pedido','2020-04-05','modificacion');
insert into Bitacora values(13,3,'registro de pedido','2020-06-03','registro');
insert into Bitacora values(14,3,'registro de pedido','2020-06-04','registro');
insert into Bitacora values(15,3,'registro de pedido','2020-05-03','registro');
insert into Bitacora values(16,4,'modificacion de pedido','2020-06-26','modificacion');
insert into Bitacora values(17,5,'registro de pedido','2020-06-20','registro');
insert into Bitacora values(18,6,'cancelacion de pedido','2020-05-01','cancelacion');
insert into Bitacora values(19,7,'registro de pedido','2020-05-18','registro');
