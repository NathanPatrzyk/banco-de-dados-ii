SELECT tbaluno.nome_aluno
FROM tbaluno
WHERE tbaluno.matr_aluno = 102;
------------------------------------------------------------------------------------------------------
SELECT *
FROM tbemprestimo
WHERE tbemprestimo.cod_aluno = 102;
------------------------------------------------------------------------------------------------------
SELECT tbaluno.nome_aluno,
    tbemprestimo.data_emprestimo
FROM tbaluno,
    tbemprestimo
WHERE tbemprestimo.cod_aluno = 102
    AND tbaluno.matr_aluno = tbemprestimo.cod_aluno;
------------------------------------------------------------------------------------------------------
SELECT tbaluno.nome_aluno,
    tblivro.nome_livro,
    tbemprestimo.data_emprestimo
FROM tbaluno,
    tblivro,
    tbemprestimo
WHERE tbemprestimo.cod_aluno = 102
    AND tbaluno.matr_aluno = tbemprestimo.cod_aluno
    AND tblivro.cod_livro = tbemprestimo.cod_livro;
------------------------------------------------------------------------------------------------------
SELECT tbaluno.nome_aluno,
    tblivro.nome_livro,
    tbemprestimo.data_devolucao
FROM tbaluno,
    tblivro,
    tbemprestimo
WHERE tbaluno.matr_aluno = 102
    AND tbemprestimo.cod_aluno = tbaluno.matr_aluno
    AND tblivro.nome_livro = "Projeto de Banco de Dados";
------------------------------------------------------------------------------------------------------
SELECT tblivro.nome_livro,
    tbaluno.nome_aluno
FROM tblivro,
    tbaluno
WHERE tblivro.nome_livro = "Projeto de Banco de Dados"
    AND tblivro.matr_aluno = tbaluno.matr_aluno;
------------------------------------------------------------------------------------------------------
SELECT tblivro.nome_livro,
    tbaluno.nome_aluno
FROM tblivro,
    tbaluno,
    tbemprestimo
WHERE tblivro.nome_livro = "Projeto de Banco de Dados"
    AND tbemprestimo.cod_livro = tblivro.cod_livro
    AND tbemprestimo.cod_aluno = tbaluno.matr_aluno;
------------------------------------------------------------------------------------------------------
SELECT tblivro.nome_livro,
    tbarea.nome_area
FROM tblivro,
    tbarea
WHERE tblivro.cod_area = 1
    AND tblivro.cod_area = tbarea.cod_area;
------------------------------------------------------------------------------------------------------
SELECT tbaluno.nome_aluno,
    tblivro.nome_livro
FROM tblivro,
    tbarea,
    tbaluno
WHERE tbarea.nome_area = "Literatura"
    AND tblivro.cod_area = tbarea.cod_area
    AND tblivro.matr_aluno = tbaluno.matr_aluno;