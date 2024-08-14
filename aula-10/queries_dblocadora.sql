-- Active: 1719951308867@@127.0.0.1@3306@dblocadora2024

-- Listar os nomes dos clientes que realizaram empréstimos:
SELECT c.nome_cliente AS "Nome do Cliente", e.data_emprestimo AS "Data do Empréstimo"
FROM tbcliente c
    INNER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente;

-- Listar todos os clientes que não efetuaram empréstimo:
SELECT c.nome_cliente AS "Nome do Cliente", e.data_emprestimo AS "Data do Empréstimo"
FROM tbcliente c
    LEFT OUTER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente
WHERE
    e.data_emprestimo IS NULL;

-- Listar os empréstimos em que não foram registrados os clientes que o realizaram:
SELECT c.nome_cliente AS "Nome do Cliente", e.data_emprestimo AS "Data do Empréstimo"
FROM tbcliente c
    RIGHT OUTER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente
WHERE
    c.nome_cliente IS NULL;