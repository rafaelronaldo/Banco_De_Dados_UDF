-- Criar os registros da tabela

CREATE TABLE Comprador (id INT PRIMARY KEY, nome VARCHAR(100), data_nascimento DATE, cpf INT); 

CREATE TABLE Carro (id INT PRIMARY KEY, nome_carro VARCHAR(100), comprador_id INT, data_compra DATE, 
valor_compra FLOAT, FOREIGN KEY (comprador_id) REFERENCES Comprador(id));

show tables;
describe Comprador;
describe Carro;

-- Adicionar os Dados

INSERT INTO Comprador(id, nome, data_nascimento, cpf) VALUES (1, 'Rafael Ronaldo', '2006-05-29', 45648464), (2, 'Fernanda', '1998-12-12', 456465448);
INSERT INTO Carro(id, comprador_id, nome_carro, data_compra, valor_compra) VALUES (1, 1, 'Celta', '2026-01-12', 50.000);

-- Consultar Dados

select * from Comprador; 
select * from Carro; 


