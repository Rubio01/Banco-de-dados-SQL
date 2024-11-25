CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id_estudante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    turma VARCHAR(10) NOT NULL,
    nota DECIMAL(4,2) NOT NULL
);

INSERT INTO tb_estudantes (nome, idade, matricula, turma, nota) 
VALUES 
('Ana Silva', 14, 'MAT001', '9A', 8.5),
('Carlos Souza', 15, 'MAT002', '9B', 6.0),
('Beatriz Oliveira', 13, 'MAT003', '8A', 7.2),
('Eduardo Santos', 14, 'MAT004', '9C', 5.8),
('Fernanda Lima', 15, 'MAT005', '9A', 9.0),
('Lucas Pereira', 13, 'MAT006', '8B', 7.5),
('Mariana Costa', 14, 'MAT007', '9C', 6.8),
('Ricardo Mendes', 15, 'MAT008', '9B', 4.5);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- atualizar a nota do estudante "Carlos Souza" para 7.5
UPDATE tb_estudantes SET nota = 7.5 WHERE nome = 'Carlos Souza';

SELECT * FROM tb_estudantes;
