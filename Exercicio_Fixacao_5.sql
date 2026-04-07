-- Criar Tabela Frutas

CREATE TABLE frutas (

 id_fruta INTEGER PRIMARY KEY,
 nome TEXT NOT NULL,
 preco INT
);

-- Inserir Valores de Frutas

INSERT INTO frutas (id_fruta, nome, preco) VALUES (1, 'Maçã', 7);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (2, 'Banana', 4);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (3, 'Uva', 9);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (4, 'Manga', 5);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (5, 'Melancia', 3);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (6, 'Morango', 5);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (7, 'Manga', 5);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (8, 'Kiwi', 12);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (9, 'Abacaxi', 6);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (10, 'Pêra', 8);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (11, 'Caju', 7);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (12, 'Melão', 4);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (13, 'Goiaba', 5);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (14, 'Ameixa', 9);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (15, 'Pitaya', 15);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (16, 'Carambola', 4);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (17, 'Jabuticaba', 13);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (18, 'Framboesa', 16);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (19, 'Cereja', 25);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (20, 'Figo', 11);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (21, 'Nectarina', 7);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (22, 'Tamarindo', 6);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (23, 'Pêssego', 6);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (24, 'Romã', 9);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (25, 'Coco', 3);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (26, 'Acerola', 8);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (27, 'Lichia', 18);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (28, 'Graviola', 10);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (29, 'Mamão', 4);
INSERT INTO frutas (id_fruta, nome, preco) VALUES (30, 'Caqui', 6);

-- Consultar Dados 
 SELECT * FROM frutas;