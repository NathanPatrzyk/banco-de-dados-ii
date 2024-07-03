SELECT * FROM tbcategoria, tbtitulo;

SELECT *
FROM tbcategoria, tbtitulo
WHERE
    tbcategoria.cod_categoria = tbtitulo.cod_categoria;

SELECT * FROM tbclasse;

SELECT * FROM tbtitulo;

SELECT * FROM tbclasse, tbtitulo;

SELECT tbtitulo.nome_titulo, tbclasse.nome_classe
FROM tbclasse, tbtitulo
WHERE
    tbclasse.cod_classe = tbtitulo.cod_classe;

SELECT tbtitulo.nome_titulo, tbfilme.nome_filme
FROM tbtitulo, tbfilme
WHERE
    tbtitulo.cod_titulo = tbfilme.cod_titulo;

SELECT tbtitulo.nome_titulo, tbclasse.nome_classe
FROM tbclasse, tbtitulo
WHERE
    tbclasse.cod_classe = tbtitulo.cod_classe
    AND tbclasse.nome_classe = 'Lancamento';

SELECT tbtitulo.nome_titulo, tbclasse.nome_classe
FROM tbclasse, tbtitulo
WHERE
    tbclasse.cod_classe = tbtitulo.cod_classe
    AND tbtitulo.cod_classe = 1;

SELECT tbtitulo.nome_titulo, tbcategoria.nome_categoria
FROM tbcategoria
INNER JOIN tbtitulo
ON tbcategoria.cod_categoria = tbtitulo.cod_categoria;

SELECT tbtitulo.nome_titulo, tbclasse.nome_classe
FROM tbclasse
INNER JOIN tbtitulo
ON tbclasse.cod_classe = tbtitulo.cod_classe;

SELECT tbtitulo.nome_titulo, tbfilme.nome_filme
FROM tbtitulo
INNER JOIN tbfilme
ON tbtitulo.cod_titulo = tbfilme.cod_titulo;

SELECT tbtitulo.nome_titulo, tbclasse.nome_classe
FROM tbclasse
INNER JOIN tbtitulo
ON tbclasse.cod_classe = tbtitulo.cod_classe;