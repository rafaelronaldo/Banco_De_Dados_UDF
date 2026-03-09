-- Tabela de Alunos --
CREATE TABLE Alunos (
    id_alunos INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    gender TEXT NOT NULL
);
-- Inserir Valores
INSERT INTO Alunos VALUES (1, 'Rafael Ronaldo', 'M');
INSERT INTO Alunos VALUES (2, 'Gabriela Almeida', 'F');
INSERT INTO Alunos VALUES (3, 'Renan Martins', 'M');
INSERT INTO Alunos VALUES (4, 'Ryan Matos', 'M');
INSERT INTO Alunos VALUES (5, 'Vanessa Matos', 'F');
INSERT INTO Alunos VALUES (6, 'Ricardo Matheus', 'M');
INSERT INTO Alunos VALUES (7, 'Otavio Carvalho', 'M');
INSERT INTO Alunos VALUES (8, 'Fernando Mendes', 'M');
INSERT INTO Alunos VALUES (9, 'Renata Vasco', 'F');
INSERT INTO Alunos VALUES (10, 'Camila Mendes', 'F');
-- Buscar Valores
SELECT * FROM Alunos WHERE name = 'Rafael Ronaldo';
SELECT * FROM Alunos WHERE name = 'Gabriela Almeida';



-- Tabela de Cursos --
CREATE TABLE Cursos (
    id_cursos INTEGER PRIMARY KEY,
    name_curso TEXT NOT NULL
);
-- Inserir Valores
INSERT INTO Cursos VALUES (1, 'Psicologia');
INSERT INTO Cursos VALUES (2, 'Analise e Desenvolvimento de Sistemas');
INSERT INTO Cursos VALUES (3, 'Engenharia de Software');
INSERT INTO Cursos VALUES (4, 'Ciencia Da Computação');
INSERT INTO Cursos VALUES (5, 'Nutrição');
INSERT INTO Cursos VALUES (6, 'Enfermagem');
INSERT INTO Cursos VALUES (7, 'Biomedicina');
INSERT INTO Cursos VALUES (8, 'Educação Fisica');
INSERT INTO Cursos VALUES (9, 'Direito');
INSERT INTO Cursos VALUES (10, 'Historia');
-- Buscar Valores
SELECT * FROM Cursos WHERE name_curso = 'Psicologia';
SELECT * FROM Cursos WHERE name_curso = 'Enfermagem';
