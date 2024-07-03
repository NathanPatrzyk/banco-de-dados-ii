SELECT tbclasse.nome_classe AS 'Nome da Classe' FROM tbclasse;

SELECT tbclasse.nome_classe AS 'Nome da Classe', tbclasse.preco_classe * 1.05 AS 'Preco com 5% de aumento'
FROM tbclasse;

SELECT tbcliente.nome_cliente FROM tbcliente;

SELECT C.nome_cliente FROM tbcliente AS C;

/* Altere e exiba as colunas nome_titulo para "Nome do Título" e ano_titulo para "Ano de Lançamento". Altere também o nome da tbtitulo para T*/
SELECT T.nome_titulo AS 'Nome do Título', T.ano_titulo AS 'Ano de Lançamento'
FROM tbtitulo AS T;

SELECT T.nome_titulo AS 'Nome do Título', CT.nome_categoria AS 'Nome da Categoria'
FROM tbtitulo T
    INNER JOIN tbcategoria CT ON T.cod_categoria = CT.cod_categoria;

SELECT T.nome_titulo AS 'Nome do Título', T.ano_titulo AS 'Ano de Lançamento'
FROM tbtitulo T
WHERE
    T.nome_titulo LIKE "M%";

SELECT T.nome_titulo AS 'Nome do Título', T.ano_titulo AS 'Ano de Lançamento'
FROM tbtitulo T
WHERE
    T.nome_titulo LIKE "%AM%";

SELECT T.nome_titulo AS 'Nome do Título', T.ano_titulo AS 'Ano de Lançamento'
FROM tbtitulo T
WHERE
    T.nome_titulo LIKE "%A";

SELECT T.nome_titulo AS 'Nome do Título', T.ano_titulo AS 'Ano de Lançamento'
FROM tbtitulo T
WHERE
    T.nome_titulo LIKE "_____";

SELECT T.nome_titulo AS 'Nome do Título', T.ano_titulo AS 'Ano de Lançamento'
FROM tbtitulo T
WHERE
    T.nome_titulo LIKE "L___M";

SELECT T.nome_titulo AS 'Nome do Título', T.ano_titulo AS 'Ano de Lançamento'
FROM tbtitulo T
WHERE
    T.nome_titulo NOT LIKE "M%";

SELECT AVG(C.preco_classe) AS 'Média' FROM tbclasse C;

SELECT AVG(E.valor_multa_emprestimo) AS 'Média das Multas'
FROM tbemprestimo E;

SELECT SUM(E.valor_multa_emprestimo) AS 'Somatório das Multas'
FROM tbemprestimo E;

SELECT MIN(C.data_cadastro_cliente) AS 'Cadastro Cliente Mais Antigo'
FROM tbcliente C;

SELECT MAX(C.data_cadastro_cliente) AS 'Cadastro Cliente Mais Recente'
FROM tbcliente C;

SELECT COUNT(*) AS 'Quantidade de Filmes' FROM tbfilme;

SELECT COUNT(T.cod_titulo) AS 'Quantidade de Filmes de Terror'
FROM tbtitulo T
    INNER JOIN tbcategoria CT ON CT.cod_categoria = T.cod_categoria
WHERE
    CT.nome_categoria LIKE "TERROR";