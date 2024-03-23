CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT NOT NULL,
tipo VARCHAR(255) NOT NULL,
DESCRICAO VARCHAR(255),
PRIMARY KEY (id)
);
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
marca VARCHAR(255),
descricao VARCHAR(255),
preco DECIMAL(5,2) NOT NULL,
categoriaid BIGINT,
PRIMARY KEY (id)
);
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(tipo, descricao)
VALUES("Ferramentas", "Ferramentas para manutenção e construção.");
INSERT INTO tb_categorias(tipo)
VALUES("Telhados e Coberturas");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Cozinha e Lavanderia", "Materias para cozinha e lavanderia");
INSERT INTO tb_categorias(tipo)
VALUES("Caixas d'água");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Elétrica Básica", "Materiais de elétrica básica");

INSERT INTO tb_produtos(nome, marca, descricao, preco, categoriaid)
VALUES("Caixa d'água", "Fortlev", "Caixa d'água de 500l em Polietileno", 224.90, 4);
INSERT INTO tb_produtos(nome, marca, descricao, preco, categoriaid)
VALUES("Eletroduto Corrugado", "Plastilit", "50m", 127.90, 5);
INSERT INTO tb_produtos(nome, marca, descricao, preco, categoriaid)
VALUES("Lixeira", "Brinox", "Lixeira para cozinha de 20l em Inox", 168.90, 3);
INSERT INTO tb_produtos(nome, marca, preco, categoriaid)
VALUES("Trena Laser", "Bosch", 449.90, 1);
INSERT INTO tb_produtos(nome, marca, preco, categoriaid)
VALUES("Furadeira e Parafusadeira", "Bosch", 639.90, 1);
INSERT INTO tb_produtos(nome, marca, descricao, preco, categoriaid)
VALUES("Telha Fibrocimento", "Brasilit", "2,44mX1,10mX5mm", 52.90, 2);
INSERT INTO tb_produtos(nome, marca, preco, categoriaid)
VALUES("Telha Ecológica Stilo Vermelho", "Onduline", 75.90, 2);
INSERT INTO tb_produtos(nome, marca, preco, categoriaid)
VALUES("Fita Isolante", "3M", 14.90, 5);

SELECT nome, preco FROM tb_produtos WHERE preco > 100.00;
SELECT nome, preco FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT nome, preco FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = "ferramentas";