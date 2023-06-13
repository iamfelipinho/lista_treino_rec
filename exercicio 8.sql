create database exe8;
use exe8;

CREATE TABLE Cargo (
  id_cargo INT PRIMARY KEY,
  nome_cargo VARCHAR(100)
);

CREATE TABLE Departamento (
  id_departamento INT PRIMARY KEY,
  nome_departamento VARCHAR(100),
  codigo_departamento VARCHAR(10)
);

CREATE TABLE Funcionario (
  id_funcionario INT PRIMARY KEY,
  nome_completo VARCHAR(100),
  data_nascimento DATE,
  cpf VARCHAR(11),
  salario_atual DECIMAL(10, 2),
  id_cargo INT,
  id_departamento INT,
  FOREIGN KEY (id_cargo) REFERENCES Cargo(id_cargo),
  FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);

CREATE TABLE Cliente (
  id_cliente INT PRIMARY KEY,
  nome_completo VARCHAR(100),
  cnpj VARCHAR(14)
);

CREATE TABLE Projeto (
  id_projeto INT PRIMARY KEY,
  nome_projeto VARCHAR(100),
  data_inicio DATE,
  data_fim DATE,
  id_cliente INT,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Projeto_Funcionario (
  id_projeto INT,
  id_funcionario INT,
  FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto),
  FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);
