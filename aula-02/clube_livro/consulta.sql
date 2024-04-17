/*1. Quais os livros foram cadastrados?*/
SELECT tblivro.nome_livro FROM tblivro;

/*2. Quais os nomes e a cidade dos alunos?*/
SELECT tbaluno.nome_aluno, tbaluno.cidade_aluno FROM tbaluno;

/*3. Quais os autores dos livros?*/
SELECT tblivro.autor_livro FROM tblivro;

/*4. Quais os alunos que moram em Curitiba?*/
SELECT tbaluno.nome_aluno FROM tbaluno WHERE tbaluno.cidade_aluno = "Joinville";

/*5. Quais os emprestimos do aluno com matricula 28?*/
SELECT tbemprestimo.matr_aluno, tbemprestimo.isbn_livro FROM tbemprestimo WHERE tbemprestimo.matr_aluno = 28;