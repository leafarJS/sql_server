/*
Trabaje con la tabla "agenda" en la que registra los datos de sus amigos.

1- Elimine "agenda", si existe:
 if object_id('agenda') is not null
  drop table agenda;

2- Cree la tabla, con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20), 
domicilio (cadena de 30) y telefono (cadena de 11).

3- Visualice la estructura de la tabla "agenda".

4- Ingrese los siguientes registros:
 Acosta, Ana, Colon 123, 4234567;
 Bustamante, Betina, Avellaneda 135, 4458787;
 Lopez, Hector, Salta 545, 4887788; 
 Lopez, Luis, Urquiza 333, 4545454;
 Lopez, Marisa, Urquiza 333, 4545454.

5- Seleccione todos los registros de la tabla

6- Seleccione el registro cuyo nombre sea "Marisa" (1 registro)

7- Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez" (3 registros)

8- Muestre el nombre de quienes tengan el teléfono "4545454" (2 registros)
*/
if OBJECT_ID('agenda') is not null
	drop table agenda;

create table agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

-- procedimiento almacenado
exec sp_columns agenda;

insert into agenda(apellido, nombre, domicilio, telefono) values ('callejo','jorge','c456','123456789');
insert into agenda(apellido, nombre, domicilio, telefono) values ('parada','luis','c987','012345678');
insert into agenda(apellido, nombre, domicilio, telefono) values ('camacho','elio','c165','901234567');
insert into agenda(apellido, nombre, domicilio, telefono) values ('vasquez','marcelo','c798','890123456');
insert into agenda(apellido, nombre, domicilio, telefono) values ('nael','pedro','c159','789012345');
insert into agenda(apellido, nombre, domicilio, telefono) values ('mendoza','daniel','c357','123456789');

select * from agenda;

select nombre from agenda
where nombre = 'jorge';

select nombre, domicilio from agenda 
where domicilio = 'c123';

select nombre, telefono from agenda 
where telefono = '123456789';

/*
Segundo problema:
Trabaje con la tabla "libros" de una librería que guarda información referente a sus libros 
disponibles para la venta.

1- Elimine la tabla si existe.

2- Cree la tabla "libros". Debe tener la siguiente estructura:
 create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15));

3- Visualice la estructura de la tabla "libros".

4- Ingrese los siguientes registros:
 El aleph,Borges,Emece;
 Martin Fierro,Jose Hernandez,Emece;
 Martin Fierro,Jose Hernandez,Planeta;
 Aprenda PHP,Mario Molina,Siglo XXI;

5- Seleccione los registros cuyo autor sea "Borges" (1 registro)

6- Seleccione los títulos de los libros cuya editorial sea "Emece" (2 registros)

7- Seleccione los nombres de las editoriales de los libros cuyo titulo sea "Martin Fierro" (2 
registros)
*/
if OBJECT_ID('libros') is not null
	drop table libros;

create table libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
);

--procedimiento ejecutado
exec sp_columns libros;

go

insert into libros(titulo, autor, editorial) values('Martin Fierro','Jose Hernandez','Emece');
insert into libros(titulo, autor, editorial) values('Martin Fierro','Jose Hernandez','Planeta');
insert into libros(titulo, autor, editorial) values('Aprenda PHP','Siglo XXI','Mario Molina');
insert into libros(titulo, autor, editorial) values('El Aleph','Borges','Mario Molina');

select * from libros;

select titulo, autor from libros
where autor = 'Borges';

select titulo, editorial from libros
where editorial =  'Emece';

select * from libros 
where titulo = 'Martin Fierro';
