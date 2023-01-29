-- lote de comandos sql

--borrar la tabla
if OBJECT_ID('usuarios') is not null
drop table usuarios;


create table usuarios(
	nombre varchar(30),
	clave varchar(10)
);

-- insertar valores a una tabla
insert into usuarios(nombre, clave) values('Mariano', '123abc');

-- recuperar o acceder a los valores de la tabla

select * from usuarios;

insert into usuarios(nombre, clave) values('jorge', '123abc');

select nombre from usuarios;