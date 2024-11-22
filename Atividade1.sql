CREATE DATABASE db_recursosHumanos;

USE db_recursosHumanos;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
idade INT,
cpf CHAR(11),
departamento VARCHAR(255),
salario_base DECIMAL(7,2)
);

INSERT INTO tb_colaboradores(nome,idade,cpf,departamento,salario_base)
VALUES
('Ana Silva', 28, '12345678901', 'Financeiro', 3500.00),
('Carlos Souza', 35, '23456789012', 'TI', 4500.50),
('Beatriz Oliveira', 24, '34567890123', 'Marketing', 3200.75),
('Eduardo Santos', 40, '45678901234', 'RH', 4000.00),
('Fernanda Lima', 30, '56789012345', 'Operacional', 3700.00);
SELECT *FROM tb_colaboradores;
SELECT*FROM tb_colaboradores WHERE salario_base>2000;
SELECT*FROM tb_colaboradores WHERE salario_base<2000;

UPDATE tb_colaboradores SET salario_base = 4000 WHERE id =3;



