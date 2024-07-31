-- Quais os nomes e os anos dos titulos mais antigos da locadora?
SELECT t.nome_titulo AS "Nome do Título", t.ano_titulo AS "Ano do Título"
FROM tbtitulo t
WHERE
    t.ano_titulo = (
        SELECT MIN(t.ano_titulo)
        FROM tbtitulo t
    );

-- Qual a média do valor total de multas dos clientes?
SELECT AVG(
        tbsubconsulta.total_multa_emprestimo
    ) AS "Média do Total de Multas dos Clientes"
FROM (
        SELECT SUM(e.valor_multa_emprestimo) 
        AS total_multa_emprestimo
        FROM tbemprestimo e
            INNER JOIN tbcliente c 
            ON e.cod_cliente = c.cod_cliente
        GROUP BY
            c.nome_cliente
    ) AS tbsubconsulta;