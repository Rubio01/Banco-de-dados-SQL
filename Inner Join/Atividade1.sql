CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe BIGINT NOT NULL,
    CONSTRAINT fk_personagens_classes
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);
INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, com alto poder de ataque e defesa.'),
('Mago', 'Lança feitiços poderosos, mas possui baixa defesa.'),
('Arqueiro', 'Especialista em ataques à distância com grande precisão.'),
('Assassino', 'Mestre em ataques furtivos e críticos.'),
('Curandeiro', 'Habilidade em curar aliados e suporte no campo de batalha.');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) 
VALUES
('Tharok', 80, 70, 5, 1),  
('Elyra', 50, 30, 4, 2),  
('Lorien', 60, 40, 3, 3),  
('Shadow', 90, 20, 6, 4),  
('Aeryn', 30, 50, 2, 5),  
('Kael', 75, 65, 5, 1),  
('Zephyr', 45, 35, 3, 3),  
('Nyssa', 85, 25, 6, 4);  

-- São as mesmas instruções da atividade somente mudou os valores
SELECT*FROM tb_personagens WHERE poder_ataque > 20;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 20 AND 40;

SELECT* FROM tb_personagens WHERE nome LIKE "%h%";

SELECT*FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT*FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome= "Arqueiro";

