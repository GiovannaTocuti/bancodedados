CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_registros(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
dataNascimento DATE,
turma INT,
nota DECIMAL(2,1),
PRIMARY KEY (id)
);

INSERT INTO tb_registros(nome, dataNascimento, turma, nota)
VALUES("Maria", "2015-12-09", 7, 8.9),
("Pedro", "2015-08-18", 7, 5.0),
("João", "2010-12-09", 3, 9.5),
("Ana", "2011-10-09", 2, 5.9),
("Luísa", "2015-03-01", 7, 9.0),
("Manuela", "2011-12-07", 2, 9.9),
("José", "2010-05-31", 3, 7.3),
("Antônio", "2010-09-30", 3, 5.5);

SELECT nome, turma, nota FROM tb_registros WHERE nota < 7.0;

SELECT nome, turma, nota FROM tb_registros WHERE nota > 7.0;

UPDATE tb_registros SET nota = 6.0 WHERE id = 2;

SELECT * FROM tb_registros;