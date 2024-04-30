drop table clientes2;

create table clientes2(

    id_cliente int not null,
    nombre varchar2(30),
    edad numeric(2),
    direccion varchar(60),
    salario number(6,2)
);

COMMIT;

insert into clientes2 values (1,'Ramon Rodriguez',32,'Calle primera numero 001',2000.00); 
insert into clientes2 values (2,'Jose Tomas',25,'Calle segunda numero 002',1500.00); 
insert into clientes2 values (3,'Ana Jimenez',23,'Calle tercera numero 003',2000.00); 
insert into clientes2 values (4,'Emilio Contreras',25,'Calle cuarta numero 004',6500.00); 
insert into clientes2 values (6,'Pedro Sandoval',22,'Calle quinta numero 005',4500.00); 


ROLLBACK;

-- TODOS LOS CAMBIOS REALIZADOS ANTERIORMENTE , SERAN CANCELADOR, HASTA EL COMMIT.


insert into  clientes2 values (7,'Esther Sanchez',27,'Calle sexta numero 006',5500.00 ); 
insert into  clientes2 values (8,'Antonio Peralta',21,'Calle septima numero 007',4500.00 ); 


SAVEPOINT PUNT1;

UPDATE clientes2
set salario = salario + 100;

ROLLBACK TO PUNT1;
