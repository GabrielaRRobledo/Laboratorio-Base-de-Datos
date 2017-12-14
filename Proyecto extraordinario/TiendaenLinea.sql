create database Tienda_en_linea
use Tienda_en_linea


create table productos(
no_producto int not null primary key,
tipo varchar(50),
marca varchar(50),
descripcion varchar(50),
precio int not null)


insert into productos values(1000,'Electronicos','Samsung','Pantalla samsung 32 pulgadas',3299)
insert into productos values(1001,'Electronicos','Samsung','Pantalla samsung 49 pulgadas',7199)
insert into productos values(1002,'Electronicos','Samsung','Pantalla samsung 55 pulgadas',11542)
insert into productos values(1003,'Electronicos','DELL','laptop core i5 4gb ram',7999)
insert into productos values(1004,'Electronicos','DELL','laptop core i7 8gb ram',13999)
insert into productos values(1005,'Electronicos','Lenovo','Teclado lenovo ',199)
insert into productos values(1006,'Electronicos','Lenovo','Mouse lenovo',149)
insert into productos values(1008,'Souvenirs','imt','esponja antiestres',49)
insert into productos values(1009,'Souvenirs','Yeti','termo 30oz',899)
insert into productos values(1010,'Souvenirs','Yeti','termo 20oz',499)



create table inventario(
no_producto int not null foreign key references productos(no_producto),
cantidad int not null)

insert into inventario values(1000,8)
insert into inventario values(1001,5)
insert into inventario values(1002,3)
insert into inventario values(1003,10)
insert into inventario values(1004,15)
insert into inventario values(1005,30)
insert into inventario values(1006,30)
insert into inventario values(1007,45)
insert into inventario values(1008,170)
insert into inventario values(1009,30)
insert into inventario values(1010,22)


create table proveedores(
no_proveedor int not null primary key,
nombre varchar(50),
tipo varchar(50),
correo varchar(50),
telefono varchar(50))

insert into proveedores values(300,'Samsung','electronicos','samsung_support@hotmail.com','8114865972')
insert into proveedores values(301,'DELL','','dell_computers@hotmail.com','24896710')
insert into proveedores values(302,'Lenovo','','lenovo@hotmail.com','8185696358')
insert into proveedores values(304,'Yeti','','yeti_support@hotmail.com','1889574528')


create table empleados(
no_empleado int not null primary key,
nombre varchar(50),
tipo varchar(50),
fecha_nacimiento varchar(50),
telefono varchar(50))

insert into empleados values(64795,'Gabriela Robledo','Gerente','19971205','8115896741')
insert into empleados values(64804,'Estefa Lopez','supervisor','19920922','8023569875')
insert into empleados values(64813,'Jose Martinez','ejecutivo de ventas','19950523','8225698753')
insert into empleados values(64822,'Mario Medina','Soporte tecnico','19900103','8124896750')


create table clientes(
no_cliente int not null primary key,
nombre varchar(50),
fecha_nacimiento varchar(50),
correo_electronico varchar(50),
telefono varchar(50))

insert into clientes values(10214,'Carmen Ramirez','19751205','CarmenRamirez@hotmail.com','8114589658')
insert into clientes values(10216,'Glenda Rodriguez','19901201','GlendaRodriguez@hotmail.com','8112569874')
insert into clientes values(10218,'Alexis Fernandez','19970506','AlexisFernandez@hotmail.com','8112365897')
insert into clientes values(10220,'Jaime Rodriguez','19920109','JaimeRodriguez@hotmail.com','8114567894')
insert into clientes values(10222,'Gabriela Martinez','19950612','GabrielaMartinez@hotmail.com','8112569874')
insert into clientes values(10224,'Pedro Torres','19941014','PedroTorres@hotmail.com','8182569875')



create table ventas(
no_venta int not null primary key,
fecha varchar(50),
cliente int not null foreign key references clientes(no_cliente),
empleado int not null foreign key references empleados(no_empleado) ,
estatus varchar(50))

insert into ventas values(001,'20171212',10214,64795,'Aprobada')
insert into ventas values(002,'20171212',10214,64795,'Cancelada')
insert into ventas values(003,'20171212',10214,64795,'En espera')

select * from ventas


create table transacciones(
no_venta int not null foreign key references ventas(no_venta),
no_producto int not null foreign key references productos(no_producto),
cantidad int)

insert into transacciones values(1,1003,2)
insert into transacciones values(1,1006,2)
insert into transacciones values(1,1007,2)
insert into transacciones values(2,1000,2)
insert into transacciones values(2,1001,1)
insert into transacciones values(2,1002,1)
insert into transacciones values(3,1009,4)
insert into transacciones values(3,1010,2)

select * from transacciones where no_venta = 3


create table transacciones_tmp (no_producto int, cantidad int)




CREATE procedure sp_venta_aprobada
@no_venta int
as
update ventas set estatus = 'Aprobada'  where no_venta = @no_venta

insert into transacciones_tmp  
SELECT no_producto, cantidad FROM transacciones where no_venta = @no_venta

update inventario set
inventario.cantidad=inventario.cantidad - transacciones_tmp.cantidad
from transacciones_tmp inner join
inventario on inventario.no_producto=transacciones_tmp.no_producto 

delete from transacciones_tmp

GO

exec sp_venta_aprobada 3


CREATE VIEW ventas_diarias_por_empleado
AS
SELECT      ventas.fecha,empleados.nombre,empleados.no_empleado,   COUNT(ventas.no_venta) AS ventas
FROM            ventas INNER JOIN
                         empleados ON ventas.empleado = empleados.no_empleado
						 where ventas.estatus = 'Aprobada'
GROUP BY empleados.nombre, ventas.fecha ,empleados.no_empleado
GO


select * from ventas_diarias_por_empleado where fecha ='20171212'