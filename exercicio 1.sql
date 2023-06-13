create database exe1;
use exe1;

CREATE TABLE Livro (
  id_livro bigint not null auto_increment,
  titulo VARCHAR(100),
  ano_publicacao bigint not null,
  id_autor bigint not null,
  PRIMARY KEY(id_livro),
  FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

CREATE TABLE Autor (
  id_autor bigint not null auto_increment,
  nome_autor VARCHAR(100),
  primary key(id_autor)
);
