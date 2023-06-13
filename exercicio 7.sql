create database exe7;
use exe7;

CREATE TABLE Aluno (
  aluno_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  matricula VARCHAR(20) NOT NULL,
  data_nascimento DATE NOT NULL,
  email VARCHAR(255) NOT NULL,
  telefone VARCHAR(20) NOT NULL
);

-- Criação da tabela Curso
CREATE TABLE Curso (
  curso_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  codigo VARCHAR(20) NOT NULL,
  tipo ENUM('bacharelado', 'tecnólogo', 'licenciatura') NOT NULL
);

-- Criação da tabela Disciplina
CREATE TABLE Disciplina (
  disciplina_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  carga_horaria INT NOT NULL,
  codigo VARCHAR(20) NOT NULL,
  curso_id INT NOT NULL,
  FOREIGN KEY (curso_id) REFERENCES Curso(curso_id)
);

-- Criação da tabela Matricula
CREATE TABLE Matricula (
  matricula_id INT AUTO_INCREMENT PRIMARY KEY,
  aluno_id INT NOT NULL,
  disciplina_id INT NOT NULL,
  semestre VARCHAR(20) NOT NULL,
  FOREIGN KEY (aluno_id) REFERENCES Aluno(aluno_id),
  FOREIGN KEY (disciplina_id) REFERENCES Disciplina(disciplina_id)
);