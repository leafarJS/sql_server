-- campo de atributo identity
if OBJECT_ID('libros') is not null
	drop table libros;

create table libros(
	codigo int identity,
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

insert into libros(titulo, autor, editorial, precio, cantidad) values('El Misterio II',  'Alequin', 'Alfaguara', 127.88, 12);
insert into libros(titulo, autor, editorial, precio, cantidad) values('El Misterio III',  'Alequin', 'Alfaguara', 227.99, 84);

select * from libros; 

delete from libros
where autor = 'Brown';

select * from libros; 

--se borra el numero asignado y al volver a calgarlo se le asigna el correlativo
insert into libros(titulo, autor, editorial, precio, cantidad) values('El Origen',  'Brown', 'Suman', 125.55, 50);
select * from libros; 