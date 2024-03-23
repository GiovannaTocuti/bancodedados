CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY (id)
);
CREATE TABLE tb_pizzas(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ingredientes VARCHAR(255),
foto VARCHAR(255),
preco DECIMAL(5,2) NOT NULL,
categoriaid BIGINT,
PRIMARY KEY (id)
);
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(tipo, descricao)
VALUES("Salgada - Vegetariana", "Pizzas salgadas sem carnes");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Salgada - Frango", "Pizzas salgadas com recheio de frango");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Salgada - Suína e Bovina", "Pizzas salgadas com recheio de carne bovina e/ou suína");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Salgada - Peixe", "Pizzas salgadas com recheio de peixe");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Doce", "Pizzas doces");

INSERT INTO tb_pizzas(nome, ingredientes, preco, categoriaid, foto)
VALUES("Calabresa", "Calabresa e cebola", 40.00, 3, "https://www.designi.com.br/a266f4a4add25fcc");
INSERT INTO tb_pizzas(nome, ingredientes, preco, categoriaid, foto)
VALUES("Frango", "Frango e catupiry", 58.00, 2, "https://www.receitasnestle.com.br/sites/default/files/styles/recipe_detail_desktop/public/srh_recipes/86f7100c92218a97fac8e3bbd18ed787.webp?itok=OmkFULcb");
INSERT INTO tb_pizzas(nome, ingredientes, preco, categoriaid)
VALUES("Henry", "Frango catupity e mussarela", 58.00, 2);
INSERT INTO tb_pizzas(nome, ingredientes, preco, categoriaid, foto)
VALUES("Mussarela", "Mussarela e tomate", 40.00, 1, "https://caldobom.com.br/uploads/2017/07/pizza-mussarela.jpg");
INSERT INTO tb_pizzas(nome, ingredientes, preco, categoriaid)
VALUES("Portuguesa", "Presunto, ervilha, ovos, cebola, mussarela e bacon", 58.00, 3);
INSERT INTO tb_pizzas(nome, ingredientes, preco, categoriaid)
VALUES("Mineira", "Mussarela e doce de leite", 43.00, 5);
INSERT INTO tb_pizzas(nome, ingredientes, preco, categoriaid, foto)
VALUES("Banana Nevada", "Banana, creme de leite e chocolate branco caramelizado", 48.00, 5, "https://receitinhas.com.br/wp-content/uploads/2022/09/image.jpg");
INSERT INTO tb_pizzas(nome, ingredientes, preco, categoriaid)
VALUES("Primavera", "Atum, milho verde, catupiry, molho de tomate, azeitonas e orégano.", 58.00, 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, preco, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT nome, preco, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";
