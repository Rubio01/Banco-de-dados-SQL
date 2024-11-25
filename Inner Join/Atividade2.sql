CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ingredientes TEXT NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    id_categoria BIGINT NOT NULL,
    CONSTRAINT fk_pizzas_categorias
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias (nome, descricao) 
VALUES
('Tradicional', 'Pizzas com sabores clássicos e conhecidos.'),
('Especial', 'Pizzas com combinações de ingredientes premium.'),
('Doce', 'Pizzas com sabores doces, ideais para sobremesas.'),
('Vegetariana', 'Pizzas sem carnes, com foco em vegetais.'),
('Apimentada', 'Pizzas com sabores picantes e temperos fortes.');

INSERT INTO tb_pizzas (nome, ingredientes, tamanho, valor, id_categoria) 
VALUES
('Mussarela', 'Mussarela, molho de tomate, orégano', 'Grande', 35.00, 1),
('Pepperoni', 'Mussarela, pepperoni, molho de tomate', 'Grande', 50.00, 1),
('Brigadeiro', 'Chocolate, granulado, leite condensado', 'Média', 40.00, 3),
('Quatro Queijos', 'Mussarela, parmesão, gorgonzola, catupiry', 'Grande', 60.00, 2),
('Vegetariana', 'Abobrinha, berinjela, tomate seco, rúcula', 'Grande', 55.00, 4),
('Calabresa', 'Calabresa, cebola, azeitonas, orégano', 'Grande', 45.00, 1),
('Chocolate com Morango', 'Chocolate, morango, leite condensado', 'Média', 70.00, 3),
('Mexicana', 'Mussarela, carne moída, pimenta jalapeño, molho picante', 'Grande', 65.00, 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT*FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT*FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.nome ="Doce";







