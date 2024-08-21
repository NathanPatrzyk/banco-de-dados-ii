-- Estruturas Condicionais:

-- Verificar se um cliente tem multas a partir do código caso tenha deve dizer se as multas estão: acima da média, abaixo da média ou não possui multas

DELIMITER $$
CREATE PROCEDURE sp_verificar_multa_cliente(IN codigo INT, OUT situacao VARCHAR(50))
BEGIN
	DECLARE soma_multa, media_multa DOUBLE;

	SELECT AVG(tbemprestimo.valor_multa_emprestimo) INTO media_multa
	FROM tbemprestimo;

	SELECT SUM(tbemprestimo.valor_multa_emprestimo) INTO soma_multa
	FROM tbemprestimo
	WHERE tbemprestimo.cod_cliente = codigo;

	IF (soma_multa = 0.0) THEN
		SET situacao = "CLIENTE NÃO POSSUI MULTAS";

	ELSEIF (soma_multa > media_multa) THEN
		SET situacao = "CLIENTE COM MULTAS ACIMA DA MÉDIA";
	
	ELSE
		SET situacao = "CLIENTE COM MULTAS ABAIXO DA MÉDIA";
	
	END IF;
END $$
DELIMITER ;

CALL sp_verificar_multa_cliente(1, @situacao);
SELECT @situacao;

-- Laços de Repetição:

-- Criar um procedimento que gere e insira 5 nomes na tbcliente

DELIMITER $$
CREATE PROCEDURE sp_cadastrar_clientes()
BEGIN
	DECLARE cont INT;
	DECLARE nome VARCHAR(50);
	DECLARE cpf VARCHAR(11);

	SET cont = 0;
	WHILE (cont < 5) DO
		SET nome = "Ze";
		SET cpf = "00000000";

		SET nome = CONCAT(nome, " ", cont);
		SET cpf = CONCAT(cpf, cont);

		INSERT INTO tbcliente VALUES(cod_cliente, nome, cpf, "2024-08-20", "Irati", "PR");

		SET cont = cont + 1;
	END WHILE;

END $$
DELIMITER ;

CALL sp_cadastrar_clientes();

DELIMITER $$
CREATE PROCEDURE sp_cadastrar_clientes_repeat()
BEGIN
	DECLARE cont INT;
	DECLARE nome VARCHAR(50);
	DECLARE cpf VARCHAR(11);

	SET cont = 0;
	REPEAT
		SET nome = "Juca";
		SET cpf = "11111111";

		SET nome = CONCAT(nome, " ", cont);
		SET cpf = CONCAT(cpf, cont);

		INSERT INTO tbcliente VALUES(cod_cliente, nome, cpf, "2024-08-20", "Irati", "PR");

		SET cont = cont + 1;
	UNTIL cont > 5
	END REPEAT;

END $$
DELIMITER ;

CALL sp_cadastrar_clientes_repeat();