-- tipo de texto
if OBJECT_ID('visitantes') is not null
	drop table visitantes;

create table visitantes(
nombre varchar(30),
edad integer,
sexo char(1),
domicilio varchar(50),
ciudad varchar(20),
telefono varchar(11)
);

go

--procedimiento almacenado
exec sp_columns visitantes;

insert into visitantes(nombre, edad, sexo, domicilio, ciudad, telefono) values('jorge', 45, 'M', 'ciudad satelite', 'la paz', '123456789');

select * from visitantes;