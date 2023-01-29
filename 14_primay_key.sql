--clave primaria primarykey

if OBJECT_ID('usuarios') is not null
drop table usuarios;


create table usuarios(
	nombre varchar(30),
	clave varchar(10), 
	primary key(nombre)
);

--procedimiento almacenado
exec sp_columns usuarios;

go

-- insertar valores a una tabla
insert into usuarios(nombre, clave) values('Mariano1', '123abc');
insert into usuarios(nombre, clave) values('Mariano2', '123abce');
insert into usuarios(nombre, clave) values('Mariano3', '123abcf');
insert into usuarios(nombre, clave) values('Mariano4', '123abcg');
insert into usuarios(nombre, clave) values('Pedro1', 'abc123h');
insert into usuarios(nombre, clave) values('Pedro2', 'abc123i');
insert into usuarios(nombre, clave) values('Pedro3', 'abc123j');
insert into usuarios(nombre, clave) values('Joaquin1', '0101aak');
insert into usuarios(nombre, clave) values('Joaquin2', '0101aal');
insert into usuarios(nombre, clave) values('Joaquin3', '0101aam');
insert into usuarios(nombre, clave) values('Joaquin4', '0101aan');

/* en la primary key valor repetido no permite
no permite un valor null y no permite un nombre que no existe*/
select * from usuarios;

