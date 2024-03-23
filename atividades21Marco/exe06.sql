CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT NOT NULL,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY (id)
);
CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT NOT NULL,
titulo VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
instrutor VARCHAR(255) NOT NULL,
valor DECIMAL(7,2) NOT NULL,
categoriaid BIGINT,
PRIMARY KEY (id)
);
ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(tipo, descricao)
VALUES("Formação Básica", "Cozinha para iniciantes");
INSERT INTO tb_categorias(tipo)
VALUES("Cozinha Internacional");
INSERT INTO tb_categorias(tipo)
VALUES("Cozinha vegetariana e vegana");
INSERT INTO tb_categorias(tipo)
VALUES("Doces");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Serviços", "Aula de prestação de serviços relacionados à cozinha");

INSERT INTO tb_cursos(titulo, instrutor, valor, categoriaid)
VALUES("Cardápio Francês", "Julia", 1500.00, 2);
INSERT INTO tb_cursos(titulo, instrutor, valor, categoriaid)
VALUES("Formação Básica em Gastronomia", "Julia", 900.00, 1);
INSERT INTO tb_cursos(titulo, instrutor, valor, categoriaid)
VALUES("Bolos e Tortas Doces", "Olivier", 1000.00, 4);
INSERT INTO tb_cursos(titulo, descricao, instrutor, valor, categoriaid)
VALUES("Cozinha Vegana", "Receitas sem ingredientes de origem animal", "Bela", 800.00, 3);
INSERT INTO tb_cursos(titulo, instrutor, valor, categoriaid)
VALUES("Básico em Serviços de Alimentos e Bebidas", "Paul", 550.00, 5);
INSERT INTO tb_cursos(titulo, descricao, instrutor, valor, categoriaid)
VALUES("Cozinha Vegetariana", "Receitas ovolactovegetarianas", "Bela", 700.00, 3);
INSERT INTO tb_cursos(titulo, instrutor, valor, categoriaid)
VALUES("Cardápio Português", "Joaquim", 900.00, 2);
INSERT INTO tb_cursos(titulo, instrutor, valor, categoriaid)
VALUES("Cardápio Árabe", "Khai", 900.00, 2);

SELECT titulo, valor FROM tb_cursos WHERE valor > 500.00;
SELECT titulo, valor FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT titulo FROM tb_cursos WHERE titulo LIKE "%j%";

SELECT titulo, valor, instrutor, tb_categorias.tipo, tb_categorias.descricao
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT titulo, valor, instrutor, tb_categorias.tipo, tb_categorias.descricao
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id;

SELECT titulo, valor, instrutor, tb_categorias.tipo, tb_categorias.descricao
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = "cozinha internacional";