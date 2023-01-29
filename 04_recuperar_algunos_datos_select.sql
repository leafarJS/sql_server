if OBJECT_ID('libros') is not null
	drop table libros;

create table libros(
	titulo varchar(80),
	autor varchar(40),
	editorial varchar(30),
	precio float,
	cantidad integer
);
-- palabra go comando propio de sql server
go

-- procedimiento almacenado
exec sp_columns libros;

-- insertar valores

insert into libros(titulo, autor, editorial, precio, cantidad) values('El Aleph',  'Borges', 'Alfaguara', 25.55, 10);
insert into libros(titulo, autor, editorial, precio, cantidad) values('El Origen',  'Brown', 'Suman', 125.55, 50);
insert into libros(titulo, autor, editorial, precio, cantidad) values('El Misterio',  'Alequin', 'Alfaguara', 27.77, 75);

select * from libros; 
select titulo, autor from libros;
select titulo, precio, cantidad from libros;
select titulo, autor, editorial from libros;


