use empresa;

/*Consulta de cantidad de pedidos por producto*/
select Producto.nombre,count(Pedido_Producto.idProducto) as 'Pedidos',Pedido_Producto.cantidad
from Producto
inner join Pedido_Producto on Producto.idProducto=Pedido_Producto.idProducto 
group by(Pedido_Producto.idProducto) order by (Pedidos) DESC limit 10;

/*Consulta de un cliente por sus pedidos*/
select * from Cliente inner join Cliente_Pedidos on Cliente.idCliente=Cliente_Pedidos.idCliente having count(Cliente.idCliente)>1; 

/*Consulta de la calificacion del pedido*/
select * from Pedido having calificacion>avg(calificacion);

/*Consulta de un producto de marca coca-cola*/
select nombre from Producto where marca='COCA-COLA';

/*Consulta solicitudes del producto mas solicitado*/
select Producto.nombre,count(Pedido_Producto.idProducto) as 'CantidadDeVecesSoli',Producto.categoria from Producto
inner join Pedido_Producto on Producto.idProducto=Pedido_Producto.idProducto 
having MAX(CantidadDeVecesSoli) order by Producto.categoria;

/*Consultas por fechas de pedido*/
select * from Pedido where fecha between 2020-01-01 and 2020-08-01;

/*Consultas por fecha de nacicimiento*/
select nombre from Cliente where FechaNacimiento< 2010-01-1 order by FechaNacimiento;

/*Modificacion de el tipo de dato en el atributo fecha de nacimiento*/
alter table Cliente modify FechaNacimiento nvarchar(200);

/*Consulta a la tabla de Pedidos del cliente*/
select * from Cliente_Pedidos;
