--1. Listar a quantidade de titulos agrupados por classe.
SELECT c.nome_classe, COUNT(t.cod_titulo)
FROM tbclasse c
    INNER JOIN tbtitulo t ON c.cod_classe = t.cod_classe
GROUP BY
    c.nome_classe;

--2. Listar a quantidade de empréstimos agrupados pela classe dos titulos.

--3. Liste a quantidade de clientes agrupados por cidade. Só devem ser listadas as cidades de Curitiba, Guarapuava e Itabuna

--4. Utilizando o conceito de tabelas derivada, liste a quantidade de clientes agrupados por cidade. Só devem ser listadas as cidades com mais de 2 clientes.

--5. Liste a quantidade de clientes agrupados por Estado. Só devem ser listados o Estado do PR

--6. Liste quais o nomes dos clientes e nomes dos filmes dos clientes que estão em atraso.

--7. Liste a quantidade de clientes agrupados por cidade. Só devem ser listadas as cidades do Estado do Paraná