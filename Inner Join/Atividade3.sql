CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria BIGINT NOT NULL,
    CONSTRAINT fk_produtos_categorias
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias (nome, descricao) 
VALUES
('Medicamentos', 'Produtos destinados ao tratamento de doenças e sintomas.'),
('Vitaminas', 'Suplementos alimentares e vitaminas.'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza.'),
('Infantil', 'Produtos destinados a crianças e bebês.'),
('Higiene', 'Itens para higiene pessoal.');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria)
 VALUES
('Paracetamol', 'Analgésico e antitérmico', 12.50, 100, 1),
('Vitamina C', 'Suplemento vitamínico', 25.00, 50, 2),
('Creme Hidratante', 'Hidratação profunda para a pele', 45.00, 30, 3),
('Pomada para Assaduras', 'Protege a pele do bebê', 20.00, 40, 4),
('Escova de Dentes', 'Escova para adultos', 10.00, 60, 5),
('Shampoo Anticaspa', 'Combate a caspa e limpa o couro cabeludo', 35.00, 25, 3),
('Ibuprofeno', 'Anti-inflamatório e analgésico', 18.00, 80, 1),
('Protetor Solar', 'Proteção contra raios UVA e UVB', 75.00, 20, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT*FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT*FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome ="Cosméticos";







