  USE Pet_Store;

  --inserts cliente
  insert into cliente values (207440757, 'Jose', 'Matamoros', 'Quesada', 'j@hotmail.com', 88958947, 'grecia centro');
  insert into cliente values (307440757, 'Manuel', 'Arias', 'Loria', 'm@hotmail.com', 88958989, 'Belen centro');
  insert into cliente values (407440757, 'Karla', 'Quesada', 'Lizano', 'k@hotmail.com', 88596824, 'tres rios centro');


  --inserts empleado
  insert into empleado values (207441111, 'Juan', 'Mata', 'Quiros', 600000);
    insert into empleado values (307442222, 'Julita', 'Vega', 'Quesada', 500000);
	  insert into empleado values (407443333, 'Carlos', 'Murillo', 'Lizano', 620000);

	  --inserts empleado login
	  insert into empleado_login values (207441111, 'ju@hotmail.com', 'nepe123');
	  	  insert into empleado_login values (307442222, 'jul@hotmail.com', 'gaber123');
		  	  insert into empleado_login values (407443333, 'c@hotmail.com', 'pussy123');


			  
			  --inserts venta
			  SET IDENTITY_INSERT Pet_Store. dbo.venta ON;
			  insert into venta (Id_Venta, costo_bruto, costo_neto, tipo) values (1, 60000, 55000, 'debito');
			  insert into venta (Id_Venta, costo_bruto, costo_neto, tipo) values (2, 70000, 65000, 'debito');
			  insert into venta (Id_Venta, costo_bruto, costo_neto, tipo) values (3, 50000, 45000, 'credito');


			  --inserts mascota

			insert into mascota values (1111, 'Firulais', 'Doberman', 2, 207440757);
						insert into mascota values (2222, 'Joss', 'n/d', 12, 307440757);
									insert into mascota values (3333, 'Egon', 'Boxer', 4, 407440757);

			--inserts cita
						  SET IDENTITY_INSERT Pet_Store. dbo.cita ON;
			insert into cita (id_cita, fecha, hora, Id_cliente) values (1, '2/10/2019', 10, 207440757);
						insert into cita (id_cita, fecha, hora, Id_cliente) values (2, '3/10/2019', 10, 307440757);
									insert into cita (id_cita, fecha, hora, Id_cliente)  values (3, '3/10/2019', 10, 407440757);

		--inserts consulta 

		  SET IDENTITY_INSERT Pet_Store. dbo.consulta ON;
		  insert into consulta (Id_consulta, id_cita, Id_Venta, Id_Empleado, id_mascota) values (1, 1, 1, 207441111, 1111);
		  		  insert into consulta (Id_consulta, id_cita, Id_Venta, Id_Empleado, id_mascota) values (2, 2, 2, 307442222, 2222);
				  		  insert into consulta (Id_consulta, id_cita, Id_Venta, Id_Empleado, id_mascota) values (3, 3, 3, 407443333, 3333);


