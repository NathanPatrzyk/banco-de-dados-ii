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

-- E: Crie um procedure que insira ...