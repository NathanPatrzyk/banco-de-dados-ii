-- Active: 1719951308867@@127.0.0.1@3306@dblocadora2024

-- Parte 1: Stored Procedures

-- Criando Stored Procedure
DELIMITER $$

CREATE PROCEDURE sp_exibir_clientes()
BEGIN
    SELECT * FROM tbcliente;
END $$

DELIMITER ;

-- Excluindo Stored Procedure
DROP PROCEDURE sp_exibir_clientes;

-- Exibindo Stored Procedures Dentro da Base de Dados
SHOW PROCEDURE STATUS WHERE db="dblocadora2024";

-- Exibindo Stored Procedure
SHOW CREATE PROCEDURE sp_exibir_clientes;

-- Chamando Stored Procedure
CALL sp_exibir_clientes();

-- Procedure para Exibir Data do Sistema
DELIMITER $$
CREATE PROCEDURE sp_exibir_datahora()
BEGIN
    SELECT CURRENT_TIMESTAMP();
END $$
DELIMITER ;

CALL sp_exibir_datahora();

-- Parte 2: Variáveis

-- Variáveis de Sessão
SELECT @X;
SET @X=5;

-- Criando um Stored Procedure que Extraia a Média dos Valores da tbclasse
DELIMITER $$
CREATE PROCEDURE sp_exibirmedia()
BEGIN
    SET @media = 0;

    SELECT AVG(tbclasse.preco_classe) INTO @media FROM tbclasse;

    SELECT @media AS "Valor Médio da Classe";
END $$
DELIMITER ;

CALL sp_exibirmedia();

-- Variáveis Locais

-- Criando um Procedure que Some os Valores das Classes
DELIMITER $$
CREATE PROCEDURE sp_totalclasse()
BEGIN
    -- Declarando Variável Local
    DECLARE total DOUBLE;
    
    SELECT SUM(tbclasse.preco_classe) INTO total FROM tbclasse;

    -- Exibindo Variável Local
    SELECT total AS "Total da Classe";    
END $$
DELIMITER ;

CALL sp_totalclasse();

-- Parte 3: Parâmetros

-- Crie um procedimento que conte quantos clientes tem uma determinada string no nome:
DELIMITER $$
CREATE PROCEDURE sp_contar_cliente_nome(IN nome VARCHAR(30), OUT qtd INT)
BEGIN
    SELECT COUNT(cod_cliente) INTO qtd
    FROM tbcliente
    WHERE tbcliente.nome_cliente LIKE nome;
END $$
DELIMITER ;

CALL sp_contar_cliente_nome("Cullen%", @qtd);
SELECT @qtd;

CALL sp_contar_cliente_nome("B%", @qtd);
SELECT @qtd;

CALL sp_contar_cliente_nome("%a%", @qtd);
SELECT @qtd;

-- Crie um procedimento usando somente o parametro IN em que o usuário deve informar a quantidadade de clientes que o select deve exibir a partir da tabela clientes:
DELIMITER $$
CREATE PROCEDURE sp_exibir_qtd_limitada_clientes(IN qtd INT)
BEGIN
    SELECT * FROM tbcliente LIMIT qtd;
END $$
DELIMITER ;

CALL sp_exibir_qtd_limitada_clientes(10);

CALL sp_exibir_qtd_limitada_clientes(20);

CALL sp_exibir_qtd_limitada_clientes(30);

-- Parâmetro INOUT - Faça um procedimento que some dois numeros passados pelo usuário:
DELIMITER $$
CREATE PROCEDURE sp_soma(INOUT a INT, IN b INT)
BEGIN
    SET a = a + b;
END $$
DELIMITER ;

SET @a = 8;
CALL sp_soma(@a, 5);
SELECT @a;

-- Criar um stored procedure para contar quantos filmes são de um determinado ano definido pelo usuário usando o parametro INOUT:
DELIMITER $$
CREATE PROCEDURE sp_quantidade_filmes_ano(INOUT ano_quantidade INT)
BEGIN
    SELECT COUNT(tbtitulo.cod_titulo) INTO ano_quantidade 
    FROM tbtitulo 
    WHERE tbtitulo.ano_titulo = ano_quantidade;
END $$
DELIMITER ;

SET @ano_quantidade = 2018;
CALL sp_quantidade_filmes_ano(@ano_quantidade);
SELECT @ano_quantidade;