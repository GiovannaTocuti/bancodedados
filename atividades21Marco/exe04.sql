CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT NOT NULL,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY(id)
);
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
fornecedor VARCHAR(255),
datavalidade DATE,
preco DECIMAL(6,2) NOT NULL,
categoriaid BIGINT,
PRIMARY KEY(id)
);
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(tipo)
VALUES("Carne Bovina");
INSERT INTO tb_categorias(tipo)
VALUES("Carne Suína");
INSERT INTO tb_categorias(tipo)
VALUES("Carne de Frango");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Embutidos", "Produtos embutidos");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Outros", "Temperos e utensílios para cozinha");

INSERT INTO tb_produtos(nome, fornecedor, datavalidade, preco, categoriaid)
VALUES("Salsicha", "Sadia", "2024-05-23", 24.99, 4);
INSERT INTO tb_produtos(nome, fornecedor, datavalidade, preco, categoriaid)
VALUES("Linguiça", "Perdigão", "2024-04-10", 32.90, 4);
INSERT INTO tb_produtos(nome, fornecedor, datavalidade, preco, categoriaid)
VALUES("Sobrecoxa", "Swift", "2024-03-30", 34.99, 3);
INSERT INTO tb_produtos(nome, fornecedor, datavalidade, preco, categoriaid)
VALUES("Costelinha", "Swift", "2024-03-30", 38.98, 2);
INSERT INTO tb_produtos(nome, fornecedor, datavalidade, preco, categoriaid)
VALUES("Picanha", "Swift", "2024-03-27", 89.90, 1);
INSERT INTO tb_produtos(nome, fornecedor, datavalidade, preco, categoriaid)
VALUES("Filé Mignon", "Swift", "2024-03-27", 119.90, 1);
INSERT INTO tb_produtos(nome, preco, categoriaid)
VALUES("Espeto de Churrasco", 9.90, 5);
INSERT INTO tb_produtos(nome, fornecedor, preco, categoriaid)
VALUES("Sal Grosso", "Cisne", 4.99, 5);

SELECT nome, preco FROM tb_produtos WHERE preco > 50.00;
SELECT nome, preco FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT nome, preco FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = "carne bovina";


