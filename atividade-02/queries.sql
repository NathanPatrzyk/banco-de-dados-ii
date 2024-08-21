-- Exercícios:

-- A: Crie um procedure para contar a quantidade de clientes:
DELIMITER $$
CREATE PROCEDURE sp_contar_clientes()
BEGIN
    SELECT COUNT(c.cod_cliente) AS "Quantidade de Clientes" FROM tbcliente c;
END $$
DELIMITER ;

CALL sp_contar_clientes();

-- B: Crie um procedure para somar todos os valores de multa de emprestimo:
DELIMITER $$
CREATE PROCEDURE sp_soma_valor_multa_emprestimo()
BEGIN
    SELECT SUM(e.valor_multa_emprestimo) AS "Total de Multas" FROM tbemprestimo e;
END $$
DELIMITER ;

CALL sp_soma_valor_multa_emprestimo();

-- C: Crie um procedure que exiba todos os filmes iniciados com a letra A:
DELIMITER $$
CREATE PROCEDURE sp_mostrar_filmes_com_a()
BEGIN
    SELECT f.nome_filme AS "Nome do Filme" FROM tbfilme f WHERE f.nome_filme LIKE "A%";
END $$
DELIMITER ;

CALL sp_mostrar_filmes_com_a();

-- D: Crie um procedure para exibir o nome dos filmes de Terror:
DELIMITER $$
CREATE PROCEDURE sp_mostrar_filmes_terror()
BEGIN
    SELECT f.nome_filme AS "Nome do Filme"
    FROM tbfilme f
    INNER JOIN tbtitulo t ON t.cod_titulo = f.cod_titulo
    INNER JOIN tbcategoria c ON c.cod_categoria = t.cod_categoria
    WHERE c.nome_categoria = "Terror";
END $$
DELIMITER ;

CALL sp_mostrar_filmes_terror();

-- E: Crie um procedure que insira o filme Clube da Luta:
DELIMITER $$
CREATE PROCEDURE sp_criar_filme()
BEGIN
    INSERT INTO tbfilme
        (cod_filme, nome_filme) 
    VALUES 
        (101, "Clube da Luta");
END $$
DELIMITER ;

CALL sp_criar_filme();

-- F: Elabore uma procedure que dado o código do cliente verificar se ele devolveu o filme caso haja a consulta deve mostrar a mensagem cliente inadimplente. E exibir qual filme ele não devolveu.
DELIMITER $$
CREATE PROCEDURE sp_cliente_esta_inadimplente(IN cod_cliente INT)
BEGIN
    DECLARE quantidade_filmes_nao_devolvidos INT;

    SELECT COUNT(e.data_emprestimo) INTO quantidade_filmes_nao_devolvidos
    FROM tbemprestimo e
    WHERE e.cod_cliente = cod_cliente
    AND data_devolucao_efetiva_emprestimo IS NULL;

    IF (quantidade_filmes_nao_devolvidos = 0) THEN
        SELECT "Cliente sem Pendências";
    ELSEIF (quantidade_filmes_nao_devolvidos > 0) THEN
        SELECT "Cliente Inadimplente";
        SELECT f.nome_filme AS "Filme Não Devolvido" FROM tbfilme f WHERE f.cod_filme IN (
            SELECT e.cod_filme FROM tbemprestimo e 
            WHERE e.cod_cliente = cod_cliente
            AND data_devolucao_efetiva_emprestimo IS NULL
        );
    END IF;
END $$
DELIMITER ;

CALL sp_cliente_esta_inadimplente(1);
CALL sp_cliente_esta_inadimplente(2);
CALL sp_cliente_esta_inadimplente(14);
CALL sp_cliente_esta_inadimplente(17);

-- G: Crie um procedure que passe por parâmetros datas do cadastro exiba todos os clientes cadastrados nesta data:
DELIMITER $$
CREATE PROCEDURE sp_mostrar_clientes_por_data_de_cadastro(IN data_cadastro DATE)
BEGIN
    SELECT c.nome_cliente AS "Nome do Cliente" FROM tbcliente c WHERE c.data_cadastro_cliente = data_cadastro;
END $$
DELIMITER ;

CALL sp_mostrar_clientes_por_data_de_cadastro("2017-04-05");
CALL sp_mostrar_clientes_por_data_de_cadastro("2018-10-10");
CALL sp_mostrar_clientes_por_data_de_cadastro("2018-01-19");

-- H: Crie um procedure que passe como parâmetro a data de empréstimo conte quantos clientes emprestaram filme na data:
DELIMITER $$
CREATE PROCEDURE sp_mostrar_quantidade_cliente_por_data_de_emprestimo(IN data_emprestimo DATE)
BEGIN
    SELECT COUNT(e.cod_cliente) AS "Quantidade de Clientes que Emprestaram" FROM tbemprestimo e WHERE e.data_emprestimo = data_emprestimo;
END $$
DELIMITER ;

CALL sp_mostrar_quantidade_cliente_por_data_de_emprestimo("2018-10-22");
CALL sp_mostrar_quantidade_cliente_por_data_de_emprestimo("2019-04-25");

-- I: Crie um procedure que receba como parametro o ano inicial e ano final, após receber o parâmetro o procedimento deve realizar o UPDATE do código da classe para "lançamento" de todos os títulos compreendidos entre o ano inicial e o ano final. A seguir o procedure deve exibir os titulos que foram alterados.

--j. Crie um procedure que  receba como parametro o código do filme apresente uma mensagem dizendo "O Filme nunca foi locado" ou caso contrário apresente a mensagem "O filme foi locado X vezes."
--l. Crie um procedure que gere o nome  e valor  ambos da tabela classe. O procedure deve gravar os dados gerados na tabela. O nome e a quantidade de nomes a serem gerados e o preço devem ser passado por parâmetro pelo usuário. Exemplo:
--Dados passados por parâmetro na chamada da função: Promocional, 10, 15.
--Dados gerados e gravados pelo procedure : 
--Promocional 1,  15
--Promocional 2,  20
--Promocional 3,  25 ......
--Dentro desta procedure crie uma consulta que retorne os valores na tabela e na sequência apague todos os  novos valores que foram inseridos.