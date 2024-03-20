CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
dataNascimento DATE,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL(6, 2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, dataNascimento, cargo, salario) 
VALUES ("Alice", "1996-09-15", "auxiliar administrativo", 4000.00),
("Nicolas", "1999-07-31", "vendedor", 1950.00),
("Júlia", "1998-11-11", "gerente", 3000.00),
("Ana", "2000-03-06", "caixa", 2000.00),
("João", "1999-05-11", "estoquista", 1800.00);

SELECT nome, salario FROM tb_colaboradores WHERE salario > 2000;

SELECT nome, salario FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET cargo = "vendedor" WHERE Id = 5;

UPDATE tb_colaboradores SET salario = 1950.00 WHERE Id = 5;

