/*Script de criação das tabelas do clube do livro*/
DROP DATABASE IF EXISTS dbclubelivro;
CREATE DATABASE dbclubelivro;
USE dbclubelivro;

CREATE TABLE tbaluno
(
    matr_aluno INT NOT NULL,
    rg_aluno CHAR(9) NOT NULL,
    nome_aluno VARCHAR(50) NOT NULL,
    telefone_aluno  CHAR(9) NOT NULL,
    cidade_aluno VARCHAR(20) DEFAULT "IRATI",
    CONSTRAINT pk_tbaluno PRIMARY KEY(matr_aluno),
    CONSTRAINT un_rg_aluno UNIQUE(rg_aluno)
) ENGINE=INNODB;
DESC tbaluno;

CREATE TABLE tbarea
 (
    cod_area INT NOT NULL,
    nome_area VARCHAR(50) NOT NULL,

    CONSTRAINT pk_tbarea PRIMARY KEY (cod_area)
 )ENGINE=INNODB;

 CREATE TABLE tblivro
 (
    isbn_livro INT NOT NULL,
    nome_livro  VARCHAR(50) NOT NULL,
    autor_livro VARCHAR(50),
    matr_aluno INT,
    cod_area INT,

    CONSTRAINT pk_tblivro PRIMARY KEY(isbn_livro),
    
    CONSTRAINT fk_tblivro_tbaluno FOREIGN KEY (matr_aluno)
    REFERENCES tbaluno(matr_aluno),
    
    CONSTRAINT fk_tblivro_tbarea  FOREIGN KEY(cod_area)
    REFERENCES tbarea(cod_area)

     ON DELETE CASCADE ON UPDATE CASCADE    

 )ENGINE =INNODB;

 CREATE TABLE tbEmprestimo
 (
    matr_aluno INT NOT NULL,
    isbn_livro INT NOT NULL,
    data_emprestimo_livro DATE,
    data_devolucao_prevista_livro DATE,
    data_devolucao_efetiva DATE,

    CONSTRAINT pk_tbemprestimo PRIMARY KEY(matr_aluno,isbn_livro),

    CONSTRAINT fk_tbemprestimo_tbaluno FOREIGN KEY(matr_aluno)
    REFERENCES tbaluno(matr_aluno),

    CONSTRAINT fk_tbemprestimo_tblivro FOREIGN KEY(isbn_livro)
    REFERENCES tblivro(isbn_livro)

    ON DELETE CASCADE ON UPDATE CASCADE
 ) ENGINE=INNODB;

 /*Comandos para alteração da tabela ALTER*/

/*ADD - Adiciona um novo campo na tabela */
ALTER TABLE tbaluno
ADD cpf_aluno VARCHAR(5);

/*MODIFY - Modifica o tipo do atributo*/
ALTER TABLE tbaluno
MODIFY cpf_aluno CHAR(11);

/*DROP - Apaga um atributo da tabela */
ALTER TABLE tbaluno
DROP cpf_aluno;

/*DROP - Excluindo uma constraint FK*/
ALTER TABLE tblivro
DROP FOREIGN KEY fk_tblivro_tbaluno;

/*ADD - Adiciona constraint chave estrangeira*/
ALTER TABLE tblivro
ADD CONSTRAINT fk_tblivro_tbaluno FOREIGN KEY (matr_aluno)
REFERENCES tbaluno(matr_aluno);

/*ALTER COLUMN - Modificando um DEFAULT*/
ALTER TABLE tbaluno
ALTER COLUMN cidade_aluno SET DEFAULT 'Imbituva';