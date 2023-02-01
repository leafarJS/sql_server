--tipo de dato numerico
if OBJECT_ID('cuentas') is not null
	drop table cuentas;

create table cuentas(
	numero integer not null primary key,
	documento char(8) not null,
	nombre varchar(30),
	saldo float
);

go

exec sp_columns cuentas;

insert into cuentas(numero,documento,nombre,saldo)
  values('1234','25666777','Pedro Perez',500000.60);
 insert into cuentas(numero,documento,nombre,saldo)
  values('2234','27888999','Juan Lopez',-250000);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3344','27888999','Juan Lopez',4000.50);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3346','32111222','Susana Molina',1000);

select * from cuentas;

select nombre, saldo from cuentas
where saldo > 4000;

select numero, saldo from cuentas
where nombre = 'Juan Lopez';

select numero, nombre from cuentas 
where saldo < 0;

select * from cuentas 
where numero >= 3000;