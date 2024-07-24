/**********************************************************************************
* Prezados alunos, 
*
* Para realização desta atividade utilizar a base de dados da Locadora que temos 
* usado em nossas aulas.
* Os scripts para as consultas devem ser colocados logo abaixo de cada uma das
* questões a seguir.
* A entrega deve ser realizada no GoogleClassroom.
* Para entrega renomeie este arquivo para: atividade_nome_sobrenome.sql
*
* Lembre-se para que o aprendizado em realização de consultas SQL seja efetivo
* é necessário praticar! Logo utilize este exercício para efetivar seu 
* aprendizado. 
*
**********************************************************************************/

/*1.Realize uma consulta em que retorne o nome dos clientes e as multas dos clientes. A consulta deve usar WHERE sem INNER JOIN*/
SELECT C.nome_cliente AS "Nome do Cliente", E.valor_multa_emprestimo AS "Multa do Cliente"
FROM tbcliente C, tbemprestimo E
WHERE
    C.cod_cliente = E.cod_cliente;

/*2.Reescreva a consulta acima usando INNER JOIN*/
SELECT C.nome_cliente AS "Nome do Cliente", E.valor_multa_emprestimo AS "Multa do Cliente"
FROM tbcliente C
    INNER JOIN tbemprestimo E ON C.cod_cliente = E.cod_cliente;

/*3.Realize uma consulta em que retorne o nome dos clientes e as multas dos clientes que possuem a substring "on" no nome.*/
SELECT C.nome_cliente AS "Nome do Cliente", E.valor_multa_emprestimo AS "Multa do Cliente"
FROM tbcliente C
    INNER JOIN tbemprestimo E ON C.cod_cliente = E.cod_cliente
WHERE
    C.nome_cliente LIKE "%on%";

/*4.Realize uma consulta as  retorne o nome e as multas do cliente "Leo Copeland" .*/
SELECT C.nome_cliente AS "Nome do Cliente", E.valor_multa_emprestimo AS "Multa do Cliente"
FROM tbcliente C
    INNER JOIN tbemprestimo E ON C.cod_cliente = E.cod_cliente
WHERE
    C.nome_cliente LIKE "Leo Copeland";

/*5.Realize uma consulta em que retorne o nome  e a MÉDIA das multa dos cliente  "Leo Copeland"*/
SELECT C.nome_cliente AS "Nome do Cliente", AVG(E.valor_multa_emprestimo) AS "Média das Multas do Cliente"
FROM tbcliente C
    INNER JOIN tbemprestimo E ON C.cod_cliente = E.cod_cliente
WHERE
    C.nome_cliente LIKE "Leo Copeland";

/*6. Realize uma consulta para verificar se o cliente Cullen Puckett está cadastrado na base de dados*/
SELECT C.nome_cliente AS "Nome do Cliente"
FROM tbcliente C
WHERE
    C.nome_cliente LIKE "Cullen Puckett";

/*7. Realize uma consulta para exibir clientes que possuem como primeiro nome Cullen cadastrados na base de dados*/
SELECT C.nome_cliente AS "Nome do Cliente"
FROM tbcliente C
WHERE
    C.nome_cliente LIKE "Cullen%";

/*8. Quantos empréstimos o cliente Cullen Puckett realizou?*/
SELECT C.nome_cliente AS "Nome do Cliente", COUNT(E.data_emprestimo) AS "Contagem dos Empréstimos do Cliente"
FROM tbcliente C
    INNER JOIN tbemprestimo E ON C.cod_cliente = E.cod_cliente
WHERE
    C.nome_cliente LIKE "Cullen Puckett";

/*9. Qual o valor das multas de emprestimos de Cullet Puckett?*/
SELECT C.nome_cliente AS "Nome do Cliente", SUM(E.valor_multa_emprestimo) AS "Valor das Multas de Empréstimos do Cliente"
FROM tbcliente C
    INNER JOIN tbemprestimo E ON C.cod_cliente = E.cod_cliente
WHERE
    C.nome_cliente LIKE "Cullen Puckett";

/*10. Exiba o nome e a cidade de todos os clientes que residem no estado de SP*/
SELECT C.nome_cliente AS "Nome do Cliente", C.cidade_cliente AS "Cidade do Cliente", C.uf_cliente AS "Estado do Cliente"
FROM tbcliente C
WHERE
    C.uf_cliente LIKE "SP";

/*11. Realize uma consulta que retorne a quantidade de clientes que residem em Piracicaba */
SELECT COUNT(C.cod_cliente) AS "Contagem dos Clientes Residentes em Piracicaba"
FROM tbcliente C
WHERE
    C.cidade_cliente LIKE "Piracicaba";

/*12. Realize a média de multas de todas as pessoas que tem o nome iniciado com a letra B*/
SELECT AVG(E.valor_multa_emprestimo) AS "Média das Multas dos Cliente com Nome Iniciado na Letra B"
FROM tbcliente C
    INNER JOIN tbemprestimo E ON C.cod_cliente = E.cod_cliente
WHERE
    C.nome_cliente LIKE "B%";

/*13. Realize uma consulta que retorne o nome do cliente com o cadastro mais recente que reside em piracicaba*/
SELECT C.nome_cliente AS "Cliente com o Cadastro Mais Recente Residente em Piracicaba", MAX(C.data_cadastro_cliente) AS "Data do Cadastro"
FROM tbcliente C
WHERE
    C.cidade_cliente LIKE "Piracicaba";

/*14. Exiba o valor da menor multa, maior multa, quantidade de multas, somatório de multas e valor medio de multas em uma mesma consulta*/
SELECT MIN(E.valor_multa_emprestimo) AS "Menor Multa", MAX(E.valor_multa_emprestimo) AS "Maior Multa", COUNT(E.valor_multa_emprestimo) AS "Quantidade de Multas", SUM(E.valor_multa_emprestimo) AS "Somatório de Multas", AVG(E.valor_multa_emprestimo) AS "Valor Médio de Multas"
FROM tbemprestimo E;

/*15.Realize uma consulta em que o nome do Cliente não seja iniciada com R */
SELECT C.nome_cliente AS "Cliente com Nome Não Iniciado na Letra R"
FROM tbcliente C
WHERE
    C.nome_cliente NOT LIKE "R%";

/*16.Realize uma consulta que apresente o número de pessoas que não possuem o nome iniciado com R */
SELECT COUNT(C.nome_cliente) AS "Quantidade de Clientes com Nome Não Iniciado na Letra R"
FROM tbcliente C
WHERE
    C.nome_cliente NOT LIKE "R%";

/*17. Realize uma consulta em que apresente as cidades */
SELECT DISTINCT
    C.cidade_cliente AS "Cidade do Cliente"
FROM tbcliente C;

/*18. Pesquise a utilização do comando ORDER BY e realize a consulta anterior ordenando em ordem crescente */
SELECT DISTINCT
    C.cidade_cliente AS "Cidade do Cliente"
FROM tbcliente C
ORDER BY C.cidade_cliente ASC;

/*19. Pesquise a utilização do comando ORDER BY e realize a consulta anterior ordenando em ordem crescente */
SELECT DISTINCT
    C.cidade_cliente AS "Cidade do Cliente"
FROM tbcliente C
ORDER BY C.cidade_cliente DESC;

/*20. Liste o nome dos clientes que tiveram seus cadastros realizados a partir da segunda quinzena de julho */
SELECT C.nome_cliente AS "Nome do Cliente", C.data_cadastro_cliente AS "Data do Cadastro"
FROM tbcliente C
WHERE
    MONTH(C.data_cadastro_cliente) >= 7
    AND DAY(C.data_cadastro_cliente) >= 16;

/*21. Teste a consulta e descreva o que ela retorna*/
/*Retorna os cadastros com messes iguais ou maiores que Julho e com dias iguais ou maiores que 16.*/

/*22. Ordene o resultado da consulta anterior, em ordem crescente de data*/
SELECT C.nome_cliente AS "Nome do Cliente", C.data_cadastro_cliente AS "Data do Cadastro"
FROM tbcliente C
WHERE
    MONTH(C.data_cadastro_cliente) >= 7
    AND DAY(C.data_cadastro_cliente) >= 16
ORDER BY C.data_cadastro_cliente ASC;

/*23.Liste os nomes do Filmes e a sua respectiva data de emprestimo exiba ordenado pela data de emprestimo */
SELECT F.nome_filme AS "Nome do Filme", E.data_emprestimo AS "Data de Emprestimo"
FROM tbfilme F
    INNER JOIN tbemprestimo E
WHERE
    F.cod_filme = E.cod_filme
ORDER BY E.data_emprestimo ASC;

/*24. Liste os nomes dos Filmes e a sua respectiva data de emprestimo nos 6 primeiros meses de 2017*/
SELECT F.nome_filme AS "Nome do Filme", E.data_emprestimo AS "Data de Emprestimo"
FROM tbfilme F
    INNER JOIN tbemprestimo E
WHERE
    F.cod_filme = E.cod_filme
    AND MONTH(E.data_emprestimo) <= 6
    AND YEAR(E.data_emprestimo = 2017)
ORDER BY E.data_emprestimo ASC;

/*25 -Liste os filmes e suas respectiva categorias*/
SELECT F.nome_filme AS "Nome do Filme", C.nome_categoria AS "Nome da Categoria"
FROM
    tbfilme F
    INNER JOIN tbtitulo T ON T.cod_titulo = F.cod_titulo
    INNER JOIN tbcategoria C ON C.cod_categoria = T.cod_categoria;

/*26 - Liste os títulos, ano, e categoria. Os titulos devem ser do ano de 2014, categoria suspense. Ordene pelo nome do titulo */
SELECT T.nome_titulo AS "Nome do Título", T.ano_titulo AS "Ano do Título", C.nome_categoria AS "Nome da Categoria"
FROM tbtitulo T
    INNER JOIN tbcategoria C ON C.cod_categoria = T.cod_categoria
WHERE
    T.ano_titulo = 2014
    AND C.nome_categoria LIKE "Suspense"
ORDER BY T.nome_titulo;

/*27 -Liste os filmes e suas respectivas classes*/
SELECT F.nome_filme AS "Nome do Filme", C.nome_classe AS "Nome da Classe"
FROM
    tbfilme F
    INNER JOIN tbtitulo T ON T.cod_titulo = F.cod_titulo
    INNER JOIN tbclasse C ON C.cod_classe = T.cod_classe;

/*28 - Liste os títulos, ano, e classe. Os titulos devem ser do ano de 2015, classe Lancamento. Ordene pelo nome do titulo */
SELECT T.nome_titulo AS "Nome do Título", T.ano_titulo AS "Ano do Título", C.nome_classe AS "Nome da Classe"
FROM tbtitulo T
    INNER JOIN tbclasse C ON C.cod_classe = T.cod_classe
WHERE
    T.ano_titulo = 2015
    AND C.nome_classe LIKE "Lan_amento"
ORDER BY T.nome_titulo;

/*29 - Liste todos o nome de todos os filmes  que foram devolvidos após as data prevista, ordenados pela data prevista de devolução*/
SELECT F.nome_filme AS "Nome do Filme", E.data_devolucao_prevista_emprestimo AS "Data de Devolução Prevista", E.data_devolucao_efetiva_emprestimo AS "Data de Devolução Efetiva"
FROM tbfilme F
    INNER JOIN tbemprestimo E ON F.cod_filme = E.cod_filme
WHERE
    E.data_devolucao_efetiva_emprestimo > E.data_devolucao_prevista_emprestimo;

/*30 - Liste todos o nome de todos os filmes  que foram devolvidos após as data prevista, ordenados pela data prevista de devolução*/
SELECT F.nome_filme AS "Nome do Filme", E.data_devolucao_prevista_emprestimo AS "Data de Devolução Prevista", E.data_devolucao_efetiva_emprestimo AS "Data de Devolução Efetiva"
FROM tbfilme F
    INNER JOIN tbemprestimo E ON F.cod_filme = E.cod_filme
WHERE
    E.data_devolucao_efetiva_emprestimo > E.data_devolucao_prevista_emprestimo;