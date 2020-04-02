/*PROCEDIMIENTOS PARA CITAS*/

CREATE OR ALTER PROCEDURE ctsAgregarCita 
	@id_cliente INT,
	@fecha DATETIME,
	@hora INT
AS
	DECLARE @v_id_cliente INT
	BEGIN	
		DECLARE cita_cursor CURSOR FOR
		SELECT Id_cliente FROM cliente WHERE Id_cliente = @id_cliente;
		OPEN cita_cursor
		FETCH NEXT FROM cita_cursor INTO @v_id_cliente

		IF @@FETCH_STATUS <> 0
			RAISERROR('No existe este id en nuestra lista de clientes.', 20, -1) WITH LOG
		
		INSERT INTO cita VALUES(CONVERT(DATETIME, @fecha), @hora, @v_id_cliente)
	END
GO
