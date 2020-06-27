USE empresa;

/*Vista 1*/
create view vista1
as
select * from Pedido having fecha=curdate() 
UNION ALL
select * from Cliente
order by fecha DESC;
drop view vista1;

/*Vista 2*/
create view vista2 
as 
select Producto.nombre,Producto.stock,Producto.precio,Producto.categoria,Provedor_Producto.idProvedor
from Producto
inner join Pedido_Producto on Producto.idProducto=Pedido_Producto.idProducto
inner join Provedor_Producto on Producto.idProducto=Provedor_Producto.idProducto
having count(Pedido_Producto.idProducto)>1 order by Producto.categoria;

select * from vista2;
drop view vista2;

/*Vista 3*/
create view vista3
as
select Pedido.fecha,Pedido.Calificacion,Pedido.precioProducto,Pedido.precioEnvio,Zona.municipio 
from Pedido inner join Zona on Pedido.idZona=Zona.idZona;
select * from vista3;
drop view vista3;
