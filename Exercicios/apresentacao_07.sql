-- DDL (DATA DEFINITION LANGUAGE)
-- Criar Tabela Frutas
CREATE TABLE frutas (
  id_fruta INTEGER PRIMARY KEY,
  nome TEXT NOT NULL,
  preco_unitario DECIMAL(10,2) NOT NULL
);

-- Criar Tabela Vendedores
CREATE TABLE vendedores (
  id_vendedor INTEGER PRIMARY KEY,
  nome TEXT NOT NULL
);

-- Criar Tabela Vendas
CREATE TABLE vendas (
  id_venda INTEGER PRIMARY KEY,
  id_fruta INT,
  id_vendedor INT,
  quantidade INT NOT NULL,
  data_venda DATE NOT NULL,
  FOREIGN KEY (id_fruta) REFERENCES frutas(id_fruta),
  FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedor)
);

-- DML (DATA MANIPULATION LANGUAGE)

-- Inserir Tuplas da Relação Frutas
INSERT INTO frutas(id_fruta, nome, preco_unitario) VALUES
(1, 'Banana', 2.50),
(2, 'Maçã', 3.00),
(3, 'Pera', 4.20),
(4, 'Uva', 5.00),
(5, 'Melancia', 7.00),
(6, 'Melão', 6.50),
(7, 'Mamão', 5.30),
(8, 'Abacaxi', 6.00),
(9, 'Manga', 4.80),
(10, 'Laranja', 2.80),
(11, 'Limão', 2.00),
(12, 'Coco', 7.50),
(13, 'Kiwi', 8.00),
(14, 'Amora', 10.00),
(15, 'Cereja', 12.00),
(16, 'Framboesa', 11.50),
(17, 'Goiaba', 3.20),
(18, 'Açai', 9.00),
(19, 'Jabuticaba', 10.50),
(20, 'Pêssego', 4.00),
(21, 'Nectarina', 4.50),
(22, 'Pitanga', 5.80),
(23, 'Tamarindo', 6.20),
(24, 'Maracujá', 5.70),
(25, 'Caju', 4.90),
(26, 'Graviola', 8.50),
(27, 'Figo', 7.80),
(28, 'Romã', 6.40),
(29, 'Carambola', 5.00),
(30, 'Abacate', 6.00);

-- Inserir Tuplas da Relação vendedores
INSERT INTO vendedores (id_vendedor, nome) VALUES
(1, 'Ana'),
(2, 'Bruno'),
(3, 'Carlos'),
(4, 'Daniela'),
(5, 'Eduardo');

-- Inserir Tuplas da Relação Vendas
INSERT INTO vendas (id_venda, id_fruta, id_vendedor, quantidade, data_venda) VALUES
(1, 1, 1, 10, '2025-04-01'),
(2, 5, 2, 5, '2025-04-02'),
(3, 10, 3, 20, '2025-04-03'),
(4, 12, 4, 7, '2025-04-04'),
(5, 8, 5, 12, '2025-04-05'),
(6, 20, 1, 15, '2025-04-06'),
(7, 17, 2, 8, '2025-04-07'),
(8, 3, 3, 6, '2025-04-08'),
(9, 15, 4, 4, '2025-04-09'),
(10, 30, 5, 9, '2025-04-10');

-- DQL (DATA QUERY LANGUAGE)

-- Listar todas as frutas e seus preços
SELECT * FROM frutas;

-- Listar todos os vendedores
SELECT * FROM vendedores;

-- Mostrar todas as vendas (com nome da fruta e nome do vendedor)
SELECT
  vendas.id_venda,
  frutas.nome,
  vendedores.nome,
  vendas.quantidade,
  frutas.preco_unitario,
  (vendas.quantidade * frutas.preco_unitario) AS valor_total
FROM vendas
INNER JOIN frutas ON vendas.id_Fruta = frutas.id_Fruta
INNER JOIN vendedores ON vendas.id_vendedor = vendedores.id_vendedor;

-- Mostrar o total de vendas (em dinheiro) por vendedor
SELECT
  vendedores.nome,
  SUM(vendas.quantidade * frutas.preco_unitario) AS total_vendas
FROM vendas
INNER JOIN frutas on vendas.id_fruta = frutas.id_fruta
INNER JOIN vendedores ON vendas.id_vendedor = vendedores.id_vendedor
GROUP BY vendedores.nome
ORDER BY total_vendas DESC;
  
