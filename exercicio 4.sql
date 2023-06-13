create database exe4;
use exe4;

CREATE TABLE Empresa (
  id_empresa INT PRIMARY KEY,
  nome_empresa VARCHAR(100),
  id_departamento INT,
  FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);

CREATE TABLE Departamento (
  id_departamento INT PRIMARY KEY,
  nome_departamento VARCHAR(100)
);

CREATE TABLE Funcionario (
  id_funcionario INT PRIMARY KEY,
  nome_funcionario VARCHAR(100),
  id_empresa INT,
  FOREIGN KEY (id_empresa) REFERENCES Empresa(id_empresa)
);

