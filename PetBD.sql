--Creacion de la base de datos y los archivos:
CREATE DATABASE Pet_Store

ON 
PRIMARY
       (NAME = Pet_Store,
		FILENAME = 'C:\Pet_Store\PT_Primary.mdf',
		SIZE = 50MB,
		MAXSIZE = 200,
		FILEGROWTH = 20),
FILEGROUP Pet_StoreFG
     ( NAME = Datos1,
       FILENAME = 'C:\Pet_Store\PT_Datos.nfd',
	   SIZE = 200MB,
	   MAXSIZE = 800,
	   FILEGROWTH = 100)
LOG ON
( NAME = Log1,
       FILENAME = 'C:\Pet_Store\PT_LOG.lfd',
	   SIZE = 300MB,
	   MAXSIZE = 800,
	   FILEGROWTH = 100);


 ------
	   USE Pet_Store;



--Creacion de Tabla Cliente:

Create table cliente(
Id_Cliente int primary key,
nombre varchar(20),
apellido1 varchar(20),
apellido2 varchar(20),
correo varchar(100),
telefono int,
domicilio varchar(100));

--Creacion de Tabla Bitacora_login:

create table bitacora_login(
Id_Bitacora int IDENTITY(1,1) PRIMARY KEY,
correo varchar(100),
fecha datetime,
hora int,
status int);



--Creacion de Tabla empleado:
create table empleado(
Id_Empleado int primary key,
nombre varchar(20),
apellido1 varchar(20),
apellido2 varchar(20),
salario money);


--Creacion de Tabla empleado-login:
create table empleado_login(
Id_Empleado int,
correo varchar(100),
contrasena varchar(50),
FOREIGN KEY (Id_Empleado) REFERENCES DBO.empleado(Id_Empleado));


--creacion de tabla Venta:
create table venta(
Id_Venta int IDENTITY(1,1) PRIMARY KEY,
costo_bruto money,
costo_neto money,
tipo varchar(10));

--creaacion de la tabla mascota:
create table mascota(
id_mascota int primary key,
nombre varchar(20),
raza varchar(20),
edad int,
Id_cliente int,
FOREIGN KEY (Id_Cliente)REFERENCES DBO.cliente(Id_cliente));

--creacion de la tabla cita:
create table cita(
id_cita int IDENTITY(1,1) primary key,
fecha datetime,
hora int,
Id_cliente int,
FOREIGN KEY (Id_Cliente)REFERENCES DBO.cliente(Id_cliente));


--creacion de la tabla  consulta:
create table consulta(
Id_consulta int IDENTITY(1,1) PRIMARY KEY,
id_cita int,
Id_Venta int,
Id_Empleado int,
id_mascota int,
FOREIGN KEY (Id_Cita)REFERENCES DBO.cita(Id_cita),
FOREIGN KEY (Id_venta)REFERENCES DBO.venta(Id_venta),
FOREIGN KEY (Id_empleado)REFERENCES DBO.empleado(Id_empleado),
FOREIGN KEY (Id_mascota)REFERENCES DBO.mascota(Id_mascota)
);