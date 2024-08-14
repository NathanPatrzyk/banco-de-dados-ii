-- 1. Explique e apresenta a sintaxe do LEFT OUTER JOIN, RIGHT OUTER JOIN e FULL OUTER  JOIN:

-- LEFT OUTER JOIN: Este comando é utilizado para retornar todos os registros da tabela da esquerda (primeira tabela) junto com os dados correspondentes da tabela da direita (segunda tabela), os quais, caso não existam, ficam com o valor NULL.
-- Sua sintaxe é:
SELECT nomeDasColunas
FROM
    tabelaDaEsquerda
    LEFT OUTER JOIN tabelaDaDireita ON tabelaDaEsquerda.chaveEstrangeira = tabelaDaDireita.chavePrimaria;

-- RIGHT OUTER JOIN: Este comando é utilizado para retornar todos os registros da tabela da direita (segunda tabela) junto com os dados correspondentes da tabela da esquerda (primeira tabela), os quais, caso não existam, ficam com o valor NULL.
-- Sua sintaxe é:
SELECT nomeDasColunas
FROM
    tabelaDaEsquerda
    RIGHT OUTER JOIN tabelaDaDireita ON tabelaDaEsquerda.chaveEstrangeira = tabelaDaDireita.chavePrimaria;

-- FULL OUTER JOIN: É a junção dos dois comandos anteriores, pois retorna todos os registros da tabela da esquerda (primeira tabela) E todos os registros da tabela da direita (segunda tabela), caso não acha alguma correspondência o campo fica com o valor NULL.
-- Sua sintaxe é:
(
    SELECT nomeDasColunas
    FROM
        tabelaDaEsquerda
        LEFT OUTER JOIN tabelaDaDireita ON tabelaDaEsquerda.chaveEstrangeira = tabelaDaDireita.chavePrimaria
)
UNION
(
    SELECT nomeDasColunas
    FROM
        tabelaDaEsquerda
        RIGHT OUTER JOIN tabelaDaDireita ON tabelaDaEsquerda.chaveEstrangeira = tabelaDaDireita.chavePrimaria
);

-- 2. Selecione o nome dos atores que não participam de nenhuma novela:

-- 3. Selecione os atores que não possuem personagens:

-- 4. Selecione o nome e a idade dos atores que participam da novela “Mistérios de uma vida” ou outra novela que esteja cadastrada em sua base de dados:

-- 5. Selecione o nome de todos os atores que tiveram personagens com o nome “Anna” ou outro nome cadastrado em sua base de dados:

-- 6. Selecione o nome dos atores que trabalharam nas mesmas novelas que a atriz “Joaquina Penteado” ou outro nome cadastrado em sua base de dados:

-- 7. Selecione o nome dos atores que NÃO trabalharam nas mesmas novelas que a atriz “Joaquina Penteado” ou outro nome cadastrado em sua base de dados:

-- 8. Selecione o nome e a idade do personagem mais novo:

-- 9. Selecione o nome e o salário do ator que recebe o menor salário:

-- 10. Quais os nomes dos atores que nunca representaram personagens pobres nas novelas?

-- 11. Selecione o nome dos atores que trabalharam em pelo menos uma novela das 18 horas:

-- 12. Elabore uma consulta usando LEFT OUTER JOIN para a base de dados em questão:

-- 13. Elabore uma consulta usando RIGHT OUTER JOIN para a base de dados em questão:

-- 14. Elabore uma consulta usando FULL OUTER JOIN para a base de dados em questão:

-- 15. Quando deve - se usar os OPERADORES ALL, SOME E EXIST.Apresente uma consulta com cada um destes operadores: