if OBJECT_ID('usuarios') is not null
	drop table usuarios;

create table usuarios(
	nombre varchar(50),
	clave varchar(10),
);

go

-- procedimiento almacenado
exec sp_columns usuarios;

insert into usuarios(nombre, clave) values('jorge', '12345');
insert into usuarios(nombre, clave) values('jose', 'abcde');
insert into usuarios(nombre, clave) values('marco', '57890');
insert into usuarios(nombre, clave) values('antonio', 'abc45');
insert into usuarios(nombre, clave) values('lucas', '123cd');
insert into usuarios(nombre, clave) values('rafael', '123kk');

select * from usuarios;

select * from usuarios
where nombre = 'jorge';

select * from usuarios
where clave = '12345';

select * from usuarios
where clave = 'abcde';