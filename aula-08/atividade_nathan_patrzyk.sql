--1. Listar a quantidade de titulos agrupados por classe.
SELECT c.nome_classe AS 'Nome da Classe', COUNT(t.cod_titulo) AS 'Quantidade de Títulos'
FROM tbclasse c
    INNER JOIN tbtitulo t ON c.cod_classe = t.cod_classe
GROUP BY
    c.nome_classe;

--2. Listar a quantidade de empréstimos agrupados pela classe dos titulos.
SELECT c.nome_classe AS 'Nome da Classe', COUNT(e.data_emprestimo) AS 'Quantidade de Empréstimos'
FROM
    tbemprestimo e
    INNER JOIN tbfilme f ON f.cod_filme = e.cod_filme
    INNER JOIN tbtitulo t ON t.cod_titulo = f.cod_titulo
    INNER JOIN tbclasse c ON c.cod_classe = t.cod_classe
GROUP BY
    c.nome_classe;

--3. Liste a quantidade de clientes agrupados por cidade. Só devem ser listadas as cidades de Curitiba, Guarapuava e Itabuna
SELECT c.cidade_cliente AS 'Cidade do Cliente', COUNT(c.cod_cliente) AS 'Quantidade de Clientes'
FROM tbcliente c
GROUP BY
    c.cidade_cliente
HAVING
    c.cidade_cliente IN (
        'Curitiba',
        'Guarapuava',
        'Itabuna'
    );

--4. Utilizando o conceito de tabelas derivada, liste a quantidade de clientes agrupados por cidade. Só devem ser listadas as cidades com mais de 2 clientes.
SELECT tbderivada.cidade_cliente AS 'Cidade do Cliente', tbderivada.quantidade_cliente AS 'Quantidade de Clientes'
FROM (
        SELECT c.cidade_cliente, COUNT(c.cod_cliente) AS 'quantidade_cliente'
        FROM tbcliente c
        GROUP BY
            c.cidade_cliente
    ) AS tbderivada
WHERE
    tbderivada.quantidade_cliente > 2;

--5. Liste a quantidade de clientes agrupados por Estado. Só devem ser listados o Estado do PR
SELECT c.uf_cliente AS 'Estado do Cliente', COUNT(c.cod_cliente) AS 'Quantidade de Clientes'
FROM tbcliente c
GROUP BY
    c.uf_cliente
HAVING
    c.uf_cliente = 'PR';

--6. Liste quais o nomes dos clientes e nomes dos filmes dos clientes que estão em atraso.
SELECT c.nome_cliente AS 'Nome do Cliente', f.nome_filme AS 'Nome do Filme'
FROM
    tbcliente c
    INNER JOIN tbemprestimo e ON c.cod_cliente = e.cod_cliente
    INNER JOIN tbfilme f ON f.cod_filme = e.cod_filme
WHERE
    e.data_devolucao_prevista_emprestimo < CURDATE()
    AND e.data_devolucao_efetiva_emprestimo IS NULL;

--7. Liste a quantidade de clientes agrupados por cidade. Só devem ser listadas as cidades do Estado do Paraná
SELECT c.uf_cliente AS 'Estado do Cliente', c.cidade_cliente AS 'Cidade do Cliente', COUNT(c.cod_cliente) AS 'Quantidade de Clientes'
FROM tbcliente c
GROUP BY
    c.cidade_cliente
HAVING
    c.uf_cliente = 'PR';