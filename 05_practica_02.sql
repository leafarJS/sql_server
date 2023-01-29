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

go 


-- insertar datos
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

  select titulo, actor from peliculas;
  select titulo, duracion from peliculas;
  select titulo, cantidad from peliculas;




  if object_id('empleados') is not null
    drop table empleados;

-- crear la tabla empleados
 create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

-- Vea la estructura de la tabla:
 exec sp_columns empleados;

 go


-- Ingrese algunos registros:
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);

  select * from empleados;
  select nombre, documento, domicilio from empleados;
  select documento, sexo, sueldobasico from empleados;