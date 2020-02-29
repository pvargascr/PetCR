CREATE DATABASE veterinaria
ON 
PRIMARY
       (NAME = veterinariaPrimary,
		FILENAME = 'c:\veterinaria\veterinariaPrimary.mdf',
		SIZE = 50MB,
		MAXSIZE = 200,
		FILEGROWTH = 20),
FILEGROUP VentasFG
     ( NAME = veterinariaData1,
       FILENAME = 'c:\veterinaria\veterinariaData1.nfd',
	   SIZE = 200MB,
	   MAXSIZE = 800,
	   FILEGROWTH = 100),
      (NAME = veterinariaData2,
	   FILENAME = 'c:\veterinaria\veterinariaData2.nfd', 	
	   SIZE = 400MB,
	   MAXSIZE = 1200,
	   FILEGROWTH = 300),
FILEGROUP VentasHistoryFG
     ( NAME = veterinariaHistory1,
       FILENAME = 'c:\veterinaria\veterinariaHistory1.nfd',
	   SIZE = 100MB,
	   MAXSIZE = 500,
	   FILEGROWTH = 50)
LOG ON
( NAME = veterinariaLog,
       FILENAME = 'c:\veterinaria\veterinariaLog.lfd',
	   SIZE = 300MB,
	   MAXSIZE = 800,
	   FILEGROWTH = 100) 

	  

	   --Login Usuario 
	    use veterinaria
	   create TABLE Usuario
(ID_usuario int PRIMARY KEY,
 Contraseña varchar(30)NOT NULL,
 nombre_usuario varchar(50)NOT NULL,
 credencial int not null);

 -- Consulta creada con el fin de que el veterinari@ puedo generar informacion de la consulta
 Create TABLE Consulta
(ID_consulta int PRIMARY KEY,
ID_usuario int not null,
 ID_Mascota int,
 Nombre_Mascota varchar(50)not null,
 Comentarios varchar(max));

 --formulario de contacto 
 Create TABLE contacto
(ID int IDENTITY (1,1) PRIMARY KEY,
nombre varchar(max) not null,
 correo varchar(75)not null,
 comentarios varchar(max)not null,
 dirreccion varchar(250)not null);




