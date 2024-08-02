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
        SELECT SUM(e.valor_multa_emprestimo) AS total_multa_emprestimo
        FROM tbemprestimo e
            INNER JOIN tbcliente c ON e.cod_cliente = c.cod_cliente
        GROUP BY
            c.nome_cliente
    ) AS tbsubconsulta;

-- Quais os nomes, cidades e estados dos clientes que moram na região Sul do Brasil?
SELECT c.nome_cliente AS "Nome do Cliente", c.cidade_cliente AS "Cidade do Cliente", c.uf_cliente AS "Estado do Cliente"
FROM tbcliente c
WHERE
    c.uf_cliente IN ("PR", "SC", "RS");

-- Quais os nomes dos filmes que já foram emprestados?
SELECT f.nome_filme AS "Nome do Filme"
FROM tbfilme f
WHERE
    f.cod_filme IN (
        SELECT e.cod_filme
        FROM tbemprestimo e
    );

-- Quais clientes NÃO realizaram um empréstimo?
SELECT c.nome_cliente AS "Nome do Cliente"
FROM tbcliente c
WHERE
    c.cod_cliente NOT IN (
        SELECT e.cod_cliente
        FROM tbemprestimo e
    );

-- Quais os nomes e categorias dos títulos que NÃO são de Terror, Suspense ou Drama?
SELECT 
    t.nome_titulo AS "Nome do Título",
    c.nome_categoria AS "Nome da Categoria"
FROM tbtitulo t
    INNER JOIN tbcategoria c
    ON t.cod_categoria = c.cod_categoria
WHERE
    c.nome_categoria
    NOT IN("Terror", "Suspense", "Drama");
