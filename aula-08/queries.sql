-- Active: 1719951308867@@127.0.0.1@3306@dblocadora2024

-- Quantos títulos temos em uma determinada categoria?
SELECT * FROM tbtitulo t LIMIT 10;

SELECT * FROM tbcategoria c LIMIT 10;

SELECT t.nome_titulo, c.nome_categoria
FROM tbtitulo t
    INNER JOIN tbcategoria c ON c.cod_categoria = t.cod_categoria
LIMIT 10;

SELECT COUNT(t.cod_titulo) AS "Quantidade de Títulos", c.nome_categoria AS "Categoria dos Títulos"
FROM tbtitulo t
    INNER JOIN tbcategoria c ON c.cod_categoria = t.cod_categoria
GROUP BY
    c.nome_categoria
LIMIT 10;

-- Contabilizar e listar a quantidade de titulos de filmes locados por cliente sem contar filmes repetidos ordenados pela quantidade de filmes?
SELECT * FROM tbcliente LIMIT 10;

SELECT * FROM tbfilme LIMIT 10;

SELECT * FROM tbemprestimo LIMIT 10;

SELECT e.data_emprestimo, c.nome_cliente, f.nome_filme
FROM
    tbemprestimo e
    INNER JOIN tbcliente c ON e.cod_cliente = c.cod_cliente
    INNER JOIN tbfilme f ON e.cod_filme = f.cod_filme;

SELECT c.nome_cliente AS "Nome do Cliente", COUNT(DISTINCT f.nome_filme) AS "Quantidade de Empréstimos"
FROM
    tbemprestimo e
    INNER JOIN tbcliente c ON e.cod_cliente = c.cod_cliente
    INNER JOIN tbfilme f ON e.cod_filme = f.cod_filme
GROUP BY
    c.nome_cliente
ORDER BY COUNT(DISTINCT f.nome_filme);

-- Listar a quantidade de empréstimos agrupados por cliente. Devem ser exibidos somente os clientes que emprestaram acima de 3 filmes.
SELECT c.nome_cliente AS "Nome do Cliente", COUNT(e.data_emprestimo) AS "Quantidade de Empréstimos"
FROM tbcliente c
    INNER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente
GROUP BY
    nome_cliente
HAVING
    COUNT(e.data_emprestimo) > 3;

-- Listar a quantidade de empréstimos agrupados por cliente entre 2018 e 2019. Devem ser exibidos somente os clientes que emprestaram acima de 3 filmes.
SELECT c.nome_cliente AS "Nome do Cliente", COUNT(e.data_emprestimo) AS "Quantidade de Empréstimos"
FROM tbcliente c
    INNER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente
WHERE
    e.data_emprestimo BETWEEN '2018-01-01' AND '2019-12-31'
GROUP BY
    c.nome_cliente
HAVING
    COUNT(e.data_emprestimo) > 3;

-- Listar todos os clientes que estão em atraso até a presente data.
UPDATE tbemprestimo
SET
    data_devolucao_efetiva_emprestimo = NULL
WHERE
    data_emprestimo BETWEEN '2017-10-01' AND '2017-10-31';

SELECT c.nome_cliente AS 'Clientes em Atraso'
FROM tbcliente c
    INNER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente
WHERE
    e.data_devolucao_prevista_emprestimo < CURDATE()
    AND e.data_devolucao_efetiva_emprestimo IS NULL;

SELECT c.nome_cliente AS 'Clientes Pontuais'
FROM tbcliente c
    INNER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente
WHERE
    e.data_devolucao_prevista_emprestimo < CURDATE()
    AND e.data_devolucao_efetiva_emprestimo IS NOT NULL;

-- Listar todos os clientes que tiveram mais do que 4 empréstimos.
SELECT tbDerivada.nome_cliente, tbDerivada.qtd_emprestimo FROM (
        SELECT c.nome_cliente, COUNT(e.data_emprestimo) AS "qtd_emprestimo"
        FROM tbcliente c
            INNER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente
        GROUP BY
            c.nome_cliente
    ) AS tbDerivada
WHERE
    tbDerivada.qtd_emprestimo > 4;

-- 