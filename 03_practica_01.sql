/*
Un videoclub que alquila películas en video almacena la información de sus películas en alquiler en 
una tabla llamada "peliculas".

1- Elimine la tabla, si existe:
 if object_id('peliculas') is not null
  drop table peliculas;

2- Cree la tabla:
 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

3- Vea la estructura de la tabla (sp_columns).

4- Ingrese alos siguientes registros:
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

5- Realice un "select" mostrando solamente el título y actor de todas las películas

6- Muestre el título y duración de todas las peliculas

7- Muestre el título y la cantidad de copias
*/

if OBJECT_ID('peliculas') is not null
	drop table peliculas;

create table peliculas(
	titulo varchar(50),
	actor varchar(30),
	duracion integer,
	cantidad integer
);

-- procedimiento almacenado
exec sp_columns 'peliculas';

 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

select * from peliculas;

select titulo, actor from peliculas;

select actor, cantidad from peliculas;

/*
Segundo problema:
 Una empresa almacena los datos de sus empleados en una tabla llamada "empleados".

1- Elimine la tabla, si existe:
 if object_id('empleados') is not null
  drop table empleados;

2- Cree la tabla:
 create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

3- Vea la estructura de la tabla:
 exec sp_columns empleados;

4- Ingrese algunos registros:
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);

5- Muestre todos los datos de los empleados

6- Muestre el nombre, documento y domicilio de los empleados

7- Realice un "select" mostrando el documento, sexo y sueldo básico de todos los empleados
*/

if OBJECT_ID('empleados') is not null
	drop table empleados;

create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldo_basico float
);

-- procedimiento almacenado
-- estructura de la tabla empleados
exec sp_columns empleados;

 insert into empleados (nombre, documento, sexo, domicilio, sueldo_basico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldo_basico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldo_basico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);

  select * from empleados;
  select nombre, documento, domicilio from empleados;
  select documento, sueldo_basico, sexo from empleados;