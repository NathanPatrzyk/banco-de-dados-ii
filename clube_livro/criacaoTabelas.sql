-- Script de criação das tabelas do clube do livro
CREATE DATABASE dbclubelivro;
USE dbclubelivro;

CREATE TABLE tbaluno (
  matr_aluno INT NOT NULL,
  rg_aluno CHAR(9) NOT NULL,
  nome_aluno VARCHAR(50) NOT NULL,
  telefone_aluno CHAR(9) NOT NULL,
  cidade_aluno VARCHAR(20) DEFAULT "IRATI",
  CONSTRAINT pk_tbaluno PRIMARY KEY(matr_aluno),
  CONSTRAINT un_rg_aluno UNIQUE(rg_aluno)
) ENGINE = INNODB;

