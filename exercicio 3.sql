create database exe3;
use exe3;

CREATE TABLE medicamento (
    id_medicamento INT PRIMARY KEY,
    nome_comercial VARCHAR(60),
    id_principioAtivo_FK INT,
    id_fornecedor_FK INT,
    qtd_estoque INT,
    FOREIGN KEY (id_principioAtivo_FK) REFERENCES principioativo(id_principioAtivo),
    FOREIGN KEY (id_fornecedor_FK) REFERENCES fornecedor(id_fornecedor)
);

CREATE TABLE fornecedor (
    id_fornecedor INT PRIMARY KEY,
    nome_fornecedor VARCHAR(60)
);

CREATE TABLE principioativo (
    id_principioAtivo INT PRIMARY KEY,
    nome_principioativo VARCHAR(60)
);
