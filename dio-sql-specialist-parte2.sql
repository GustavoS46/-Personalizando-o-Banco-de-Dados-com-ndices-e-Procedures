-- procedure para um ecommerce
USE ecommerce;

CREATE PROCEDURE CRUD(
	IN opcao int, IN id int
)
BEGIN	
	CASE opcao		
		WHEN 1 THEN
			SELECT * FROM orders WHERE idOrder = id ; -- Mostrar order
        WHEN 2 THEN
			UPDATE orders SET orderStatus = 'Confirmado' WHERE idOrder = id; -- confirmar order
		WHEN 3 THEN
			DELETE FROM productOrder WHERE idPOorder = id; -- excluir produtos da order
			DELETE FROM orders WHERE idOrder = id; -- excluir order
	END CASE;
END 
