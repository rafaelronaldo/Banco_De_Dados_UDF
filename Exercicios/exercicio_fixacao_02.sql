-- Departamentos

CREATE TABLE Departamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    sigla VARCHAR(10),
    responsavel VARCHAR(100),
    ativo BOOLEAN
);
-- Professores

CREATE TABLE Professores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    departamentos_id INT,
    titulacao VARCHAR(50),
    FOREIGN KEY (departamentos_id) REFERENCES Departamentos(id)
);

-- Cursos

CREATE TABLE Cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    carga_horaria INT,
    professor_id INT,
    nivel VARCHAR(50),
    FOREIGN KEY (professor_id) REFERENCES Professores(id)
);
-- Alunos

CREATE TABLE Alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE,
    ativo BOOLEAN
);

CREATE TABLE Matriculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT,
    curso_id INT,
    data_matricula DATE,
    status VARCHAR(20),
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

-- Alterar tabelas

ALTER TABLE Cursos ADD modalidade VARCHAR(20);
ALTER TABLE Alunos ADD telefone VARCHAR(20);

-- Inserir dados

INSERT INTO Departamentos (nome, sigla, responsavel, ativo) VALUES
('Computação', 'COMP', 'Dr. Luiz Costa', TRUE),
('Matemática', 'MAT', 'Dra. Paula Silva', TRUE),
('Física', 'FIS', 'Dr. Renato Lima', TRUE);

INSERT INTO Professores (nome, email, departamentos_id, titulacao) VALUES
('Carlos Mendes', 'carlos@email.com', 1, 'Mestre'),
('Fernanda Alves', 'fernanda@email.com', 2, 'Doutora'),
('João Pires', 'joao@email.com', 3, 'Doutor');

INSERT INTO Cursos (nome, carga_horaria, professor_id, nivel, modalidade) VALUES
('Banco de Dados', 60, 1, 'Tecnólogo', 'Presencial'),
('Cálculo I', 80, 2, 'Bacharelado', 'Presencial'),
('Física Moderna', 70, 3, 'Licenciatura', 'EAD');

INSERT INTO Alunos (nome, email, data_nascimento, ativo, telefone) VALUES
('Mariana Costa', 'mariana@email.com', '2000-05-10', TRUE, '61999999999'),
('Lucas Pereira', 'lucas@email.com', '1999-08-15', TRUE, '61988888888'),
('Aline Rocha', 'aline@email.com', '2001-02-20', TRUE, '61977777777');

INSERT INTO Matriculas (aluno_id, curso_id, data_matricula, status) VALUES
(1, 1, '2025-01-10', 'ativa'),
(2, 2, '2025-01-11', 'ativa'),
(3, 3, '2025-01-12', 'ativa');

-- Consulta com INNER JOIN

SELECT 
    a.nome AS aluno,
    c.nome AS curso,
    p.nome AS professor
FROM Matriculas m
INNER JOIN Alunos a ON m.aluno_id = a.id
INNER JOIN Cursos c ON m.curso_id = c.id
INNER JOIN Professores p ON c.professor_id = p.id;

-- Remover tabelas

DROP TABLE Matriculas;
DROP TABLE Alunos;
DROP TABLE Cursos;
DROP TABLE Professores;
DROP TABLE Departamentos;