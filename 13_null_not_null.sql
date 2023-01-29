-- valores null (is null)
if OBJECT_ID('libros') is not null
	drop table libros;

create table libros(
	titulo varchar(80) not null,
	autor varchar(40) not null,
	editorial varchar(30) null,
	precio float ,
	cantidad integer
);

-- procedimiento almacenado
exec sp_columns libros;

-- insertar valores

insert into libros(titulo, autor, editorial, precio, cantidad) values('El Aleph',  'Borges', 'Alfaguara', 125.77, 20);
insert into libros(titulo, autor, editorial, precio, cantidad) values('El tren',  'Brown', 'El faro', 21.60, 187);
insert into libros(titulo, autor, editorial, precio, cantidad) values('El pez',  'Kusaini', 'Alfaguara', 25.55, 60);
insert into libros(titulo, autor, editorial) values('El pez',  'Kusaini', 'Alfaguara');
insert into libros(titulo, autor, editorial, precio, cantidad) values('El pez',  'Kusaini', '', 100.6,94);
select * from libros;

insert into libros(titulo, autor, editorial, precio, cantidad) values('El pez',  'Kusaini', null, 100.6,94);
select * from libros;

insert into libros(titulo, autor, editorial, precio, cantidad) values('',  'Kusaini', null, 100.6,1194);
select * from libros;

select * from libros
where editorial = '';

select * from libros
where editorial is null;

select * from libros
where editorial is not null;