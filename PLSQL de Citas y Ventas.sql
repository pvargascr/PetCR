--PROCEDIMIENTOS PARA CITAS

--USE Pet_Store;

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
		CLOSE cita_cursor
		DEALLOCATE cita_cursor
		
		INSERT INTO cita VALUES(CONVERT(DATETIME, @fecha), @hora, @v_id_cliente)
	END
GO

CREATE OR ALTER PROCEDURE ctsActualizarCita
	@fecha DATETIME,
	@hora INT,
	@id_cliente INT
AS
	DECLARE @varFecha DATETIME
	DECLARE @varHora INT
	DECLARE @varId INT
	DECLARE cursor_verificar CURSOR FOR
	SELECT fecha, hora, id_cliente FROM cita WHERE id_cliente = @id_cliente;
	OPEN cursor_verificar
		FETCH NEXT FROM cursor_verificar INTO @varFecha, @varHora, @varId
		IF @@FETCH_STATUS <> 0
			RAISERROR('No se asignó una cita con este id.', 20, -1) WITH LOG
	CLOSE cursor_verificar
	DEALLOCATE cursor_verificar

	IF @varFecha = @fecha OR @varHora = @hora
		RAISERROR('Hay datos que se repiten.', 20, -1) WITH LOG
	ELSE
		UPDATE cita SET fecha = CONVERT(DATETIME, @fecha), hora = @hora WHERE Id_cliente = @varId;
GO

CREATE OR ALTER PROCEDURE ctsBorrarCita
	@id_cliente INT
AS
	DELETE FROM cita WHERE Id_cliente = @id_cliente;
GO

--NECESARIO PARA EL GRIDVIEW 
CREATE OR ALTER PROCEDURE ctsCargarCitas
AS
	SELECT * FROM cita;
GO
