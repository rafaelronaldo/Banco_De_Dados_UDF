
-- DDL (DATA DEFINITION LANGUAGE)

-- Criar Tabela e Atributos da Tabela Alunos
CREATE TABLE tb_alunos (
    id_alunos INTEGER PRIMARY KEY,
    name_alunos TEXT NOT NULL,
    rg_alunos INTEGER NOT NULL
);

-- Criar Tabela e Atributos da Tabela Cursos
CREATE TABLE tb_cursos (
    id_cursos INTEGER PRIMARY KEY,
    name_cursos TEXT NOT NULL,
    carga_horaria_cursos INTEGER NOT NULL
);

-- Apresentar as tabelas criadas
show tables;




-- DDL (DATA MANIPULATION LANGUAGE)

-- Detalhar as tabelas criadas
describe tb_alunos;
describe tb_cursos;

-- Adicionar a coluna "email_alunos" na tabela "tb_alunos"
ALTER TABLE tb_alunos
ADD COLUMN email_alunos TEXT;

-- Detalhar a tabela alunos
describe tb_alunos;

-- Deletar a coluna "rg_alunos" na "tb_alunos"
ALTER TABLE tb_alunos
DROP COLUMN rg_alunos;

-- Detalhar a tabela alunos
describe tb_alunos;

-- INSERIR TUPLAS

-- Primeira Forma
INSERT INTO tb_alunos VALUES (0001, 'Clark', '112345010');
INSERT INTO tb_alunos VALUES (0002, 'DAVE', '320917489');
INSERT INTO tb_alunos VALUES (0003, 'Ava', '47843211');

-- Segunda Forma
INSERT INTO tb_alunos (id_alunos, name_alunos, email_alunos) 
VALUES 
(0004, 'Clark2', 'clargmail.com'),
(0005, 'Dave 2', 'davegmail.com'), 
(0006, 'Ava2', 'avagmail.com');

-- Terceira Forma

INSERT INTO tb_alunos
VALUES
(0007, 'Clark3', 112345015),
(0008, 'Dave3', 11232115),
(0009, 'Ava3', 1145245015);



-- DQL (DATA QUERY LANGUAGE)

-- CONSULTAR OS DADOS

-- Buscar em Geral
SELECT * FROM tb_alunos;

-- Buscar apenas nome e email dos alunos
SELECT name_alunos, email_alunos FROM tb_alunos; 

-- Buscar alunos com email específico:
SELECT * FROM tb_alunos
WHERE email_alunos ='clargmail.com';

-- Buscar aluno cujo nome começa com "Dave"

SELECT * FROM tb_alunos
WHERE name_alunos LIKE 'Dave%';

