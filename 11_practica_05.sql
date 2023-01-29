if OBJECT_ID('agenda') is not null
	drop table agenda;

create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
);

go

-- procedimiento almacenado
exec sp_columns agenda;

insert into agenda(apellido, nombre, domicilio, telefono) values(' Alvarez','Alberto','Colon 123','4234567')
insert into agenda(apellido, nombre, domicilio, telefono) values('Juarez','Juan','Avellaneda 135','4458787')
insert into agenda(apellido, nombre, domicilio, telefono) values('Lopez','Maria','Urquiza 333','4545454')
insert into agenda(apellido, nombre, domicilio, telefono) values('Lopez','Jose','Urquiza 333','4545454')
insert into agenda(apellido, nombre, domicilio, telefono) values('Lopez','Susana','Paz 1234','4123456')

select * from agenda;

delete from agenda
where nombre = 'Juan';

delete from agenda
where telefono = '4545454';

select * from agenda;

delete from agenda;

select * from agenda;

if OBJECT_ID('articulos') is not null
	drop table articulos;

 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

 exec sp_columns articulos;

 go

 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

select * from articulos;

delete from articulos
where precio > 500;

select * from articulos;

delete from articulos
where nombre = 'impresora';

select * from articulos;

delete from articulos 
where codigo != 4;

select * from articulos;

