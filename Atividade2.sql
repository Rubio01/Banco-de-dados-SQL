CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    categoria VARCHAR(50)
);

INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoria) 
VALUES 
('Notebook', 'Notebook de alto desempenho', 4500.00, 10, 'Informática'),
('Mouse', 'Mouse sem fio', 120.00, 50, 'Acessórios'),
('Teclado', 'Teclado mecânico RGB', 320.00, 30, 'Acessórios'),
('Smartphone', 'Smartphone com câmera de alta qualidade', 3200.00, 20, 'Eletrônicos'),
('Cadeira Gamer', 'Cadeira ergonômica para jogos', 950.00, 15, 'Móveis'),
('Monitor', 'Monitor 4K de 27 polegadas', 1500.00, 8, 'Informática'),
('Fone de Ouvido', 'Fone de ouvido Bluetooth', 250.00, 40, 'Acessórios'),
('Impressora', 'Impressora multifuncional', 800.00, 5, 'Informática');

SELECT *FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualização de um registro na tabela
-- Atualizar o preço da "Cadeira Gamer" para 990.00
UPDATE tb_produtos SET preco = 990.00 WHERE nome = 'Cadeira Gamer';

SELECT * FROM tb_produtos;
