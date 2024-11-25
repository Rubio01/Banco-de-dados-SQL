CREATE DATABASE db_quitanda;
USE db_quitanda;
CREATE TABLE tb_produtos(-- criar a tabela já com as colunas 
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,-- para valores monetários e menos alocação de memoria
PRIMARY KEY (id)
);

SELECT*FROM tb_produtos;
INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco) 
VALUES("tomate",100,"2023-12-15",9.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);
-- Selecionando dados da tabela
SELECT nome,id FROM tb_produtos;

SELECT * FROM tb_produtos WHERE nome="pêra";
SELECT*FROM tb_produtos WHERE nome IN("tomate","uva");
SELECT * FROM tb_produtos WHERE preco>5;
SELECT * FROM tb_produtos WHERE preco>5 AND quantidade< 100;

SET SQL_SAFE_UPDATES=0; -- Destrava proteção de delete sem where -0 - 1- ativa

UPDATE tb_produtos SET preco = 10 WHERE id = 2; 

select*from tb_produtos;

-- DDL 
ALTER TABLE tb_produtos CHANGE preco preco DECIMAL(6,2);

DELETE FROM tb_produtos WHERE id = 5;





