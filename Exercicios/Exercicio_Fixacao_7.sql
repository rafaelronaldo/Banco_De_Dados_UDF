-- DDL (DATA DEFITION LANGUAGE)

-- Criar Tabela Filmes
CREATE TABLE filmes (
  id_filme INTEGER PRIMARY KEY,
  titulo TEXT NOT NULL,
  duracao INT NOT NULL
);

-- Criar Tabela Clientes
CREATE TABLE clientes (
  id_cliente INTEGER PRIMARY KEY,
  nome TEXT NOT NULL,
  cpf TEXT NOT NULL,
  idade INT NOT NULL
);

-- Criar Tabela Ingressos
CREATE TABLE ingressos (
  id_ingresso INTEGER PRIMARY KEY,
  id_cliente INT,
  id_filme INT,
  valor_pago DECIMAL (10,2) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
  FOREIGN KEY (id_filme) REFERENCES filmes(id_filme)
);

-- DML (DATA MANIPULATION LANGUAGE)

-- Inserir Tuplas do filmes
INSERT INTO filmes (id_filme, titulo, duracao) VALUES
(1, 'Batman', 175),
(2, 'O Auto da Compadecida', 104),
(3, 'Interestelar', 169);

-- Inserir Tuplas de clientes
INSERT INTO clientes (id_cliente, nome, cpf, idade) VALUES
(1, 'Lucas Silva', '123.456.789-00', 25),
(2, 'Rafael Ronaldo', '987.654.321-00', 30),
(3, 'Roberto Gomes', '111.222.333-25', 19);

-- Inserir Tuplas de ingressos
INSERT INTO ingressos (id_ingresso, id_cliente, id_filme, valor_pago) VALUES
(1, 1, 1, 35.00), -- Lucas viu Batman
(2, 2, 3, 40.00), -- Mariana viu Interestelar
(3, 3, 2, 25.00); -- Roberto viu O Auto da Compadecida

-- DQL (DATA QUERY LANGUAGE)

-- Retornar: O nome do cliente;O título do filme assistido;A duração do filme;O valor pago pelo ingresso

SELECT
  clientes.nome AS nome_cliente,
  filmes.titulo AS titulo_filme,
  filmes.duracao,
  ingressos.valor_pago
FROM ingressos
INNER JOIN clientes ON ingressos.id_cliente = clientes.id_cliente
INNER JOIN filmes on ingressos.id_filme = filmes.id_filme;
