--1. Liste todas as categorias da tbcategoria
SELECT * FROM tbcategoria;

--2. Liste somente o nome do filme da tb filme
SELECT nome_filme from tbfilme;

--3. Liste todos os clientes que são do estado do Paraná
SELECT * FROM tbcliente WHERE tbcliente.uf_cliente = 'PR';

--4. Faça a negação da consulta acima, para isso utilize NOT
SELECT * FROM tbcliente WHERE NOT tbcliente.uf_cliente = 'PR';

--5. Liste todos os clientes que são do estado do Paraná e a cidade de Curitiba
SELECT *
FROM tbcliente
WHERE
    tbcliente.uf_cliente = 'PR'
    AND tbcliente.cidade_cliente = 'Curitiba';

--6. Liste todos os emprestimos que tiveram a data de devolução efetiva no ano de 2018
SELECT *
FROM tbemprestimo
WHERE
    tbemprestimo.data_devolucao_efetiva_emprestimo LIKE '2018%';

--7. Liste todos os filmes com codigo entre 70 e 80
SELECT * FROM tbfilme WHERE tbfilme.cod_filme BETWEEN 70 AND 80;

--8. Liste o Nome de todos os filmes locados
SELECT tbfilme.nome_filme
FROM tbfilme, tbemprestimo
WHERE
    tbfilme.cod_filme = tbemprestimo.cod_filme;

--9. Usando INNER JOIN liste os empréstimos de Cade Cline
SELECT *
FROM tbemprestimo
    INNER JOIN tbcliente ON tbcliente.cod_cliente = tbemprestimo.cod_cliente
WHERE
    tbcliente.nome_cliente = 'Cade Cline';

--10. Liste todos os nomes de filmes  com seus respectivos nomes de titulos
SELECT tbfilme.nome_filme, tbtitulo.nome_titulo
FROM tbfilme
    INNER JOIN tbtitulo ON tbtitulo.cod_titulo = tbfilme.cod_titulo;

--11. Liste todos os nomes dos clientes e suas respectivas multas
SELECT tbcliente.nome_cliente, tbemprestimo.valor_multa_emprestimo
FROM tbcliente
    INNER JOIN tbemprestimo ON tbcliente.cod_cliente = tbemprestimo.cod_cliente;

--12. Liste todos os filmes emprestados no em 2018
SELECT tbfilme.nome_filme, tbemprestimo.data_emprestimo
FROM tbfilme
    INNER JOIN tbemprestimo ON tbfilme.cod_filme = tbemprestimo.cod_filme
WHERE
    tbemprestimo.data_emprestimo LIKE "2018%";

--13. Liste os filmes e suas respectiva categorias
SELECT tbfilme.nome_filme, tbcategoria.nome_categoria
FROM
    tbfilme
    INNER JOIN tbtitulo ON tbtitulo.cod_titulo = tbfilme.cod_titulo
    INNER JOIN tbcategoria ON tbcategoria.cod_categoria = tbtitulo.cod_categoria;

--14. Liste os filmes da classe Lançamento
SELECT tbtitulo.nome_titulo, tbclasse.nome_classe
FROM tbclasse
    INNER JOIN tbtitulo ON tbclasse.cod_classe = tbtitulo.cod_classe
WHERE
    tbclasse.nome_classe = 'Lancamento';

--15. Liste os filmes da classe Catálogo
SELECT tbtitulo.nome_titulo, tbclasse.nome_classe
FROM tbclasse
    INNER JOIN tbtitulo ON tbclasse.cod_classe = tbtitulo.cod_classe
WHERE
    tbclasse.nome_classe = 'Catalogo';