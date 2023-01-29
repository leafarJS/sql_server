-- campo de atributo identity
if OBJECT_ID('libros') is not null
	drop table libros;

create table libros(
	codigo int identity(1000,3),
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

select IDENT_SEED('libros');

-- on
set identity_insert libros on;
insert into libros(codigo, titulo, autor, editorial, precio, cantidad) values(1009, 'El Misterio II',  'Alequin', 'Alfaguara', 1027.77, 3);

select * from libros;

--off
set identity_insert libros off;
insert into libros(titulo, autor, editorial, precio, cantidad) values('El Misterio III',  'Alequin', 'Alfaguara', 1000.77, 3);
select * from libros;

