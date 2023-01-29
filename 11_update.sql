if OBJECT_ID('usuarios') is not null
drop table usuarios;


create table usuarios(
	nombre varchar(30),
	clave varchar(10)
);

--procedimiento almacenado
exec sp_columns usuarios;

go

-- insertar valores a una tabla
insert into usuarios(nombre, clave) values('Mariano', '123abc');
insert into usuarios(nombre, clave) values('Mariano', '123abc');
insert into usuarios(nombre, clave) values('Mariano', '123abc');
insert into usuarios(nombre, clave) values('Mariano', '123abc');
insert into usuarios(nombre, clave) values('Pedro', 'abc123');
insert into usuarios(nombre, clave) values('Pedro', 'abc123');
insert into usuarios(nombre, clave) values('Pedro', 'abc123');
insert into usuarios(nombre, clave) values('Joaquin', '0101aa');
insert into usuarios(nombre, clave) values('Joaquin', '0101aa');
insert into usuarios(nombre, clave) values('Joaquin', '0101aa');
insert into usuarios(nombre, clave) values('Joaquin', '0101aa');

select * from usuarios;

update usuarios
set clave = 'Barcelona';

select * from usuarios;

update usuarios
set clave = 'Boca'
where nombre = 'Mariano';

select * from usuarios;

update usuarios
set clave = 'Migaja'
where nombre = 'Pedro';

select * from usuarios;

update usuarios 
set clave = 'Paraiso'
where nombre = 'Joaquin';

select * from usuarios;


