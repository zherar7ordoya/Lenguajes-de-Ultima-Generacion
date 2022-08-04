USE PedidosDeInsumosDeOficina

GO

CREATE PROCEDURE Login
(
	@Usuario        VARCHAR(50),
	@Contraseņa     VARCHAR(50)
)

AS
BEGIN
	SELECT COUNT(*) FROM Empleados WHERE Usuario = @Usuario AND Contraseņa = @Contraseņa
END