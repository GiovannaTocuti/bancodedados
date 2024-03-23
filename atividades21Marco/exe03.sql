CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT NOT NULL,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY (id)
);
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
marca VARCHAR(255),
preco DECIMAL(5,2),
categoriaid BIGINT,
PRIMARY KEY (id)
);
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(tipo)
VALUES("Medicamentos");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Vida saudável", "Vitaminas, pré e pós-treino");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Beleza", "Maquiagem, cuidados com a pele, dermocosméticos");
INSERT INTO tb_categorias(tipo)
VALUES("Cabelo");
INSERT INTO tb_categorias(tipo, descricao)
VALUES("Higiene pessoal", "Higiene bucal, higiene diária");

INSERT INTO tb_produtos(nome, descricao, marca, preco, categoriaid)
VALUES("Atrofem", "Atrofem é um analgésico que promove ação rápida e eficaz, além de efeito prolongado no alívio das dores do período menstrual: dor de cabeça, dor muscular, cólica menstrual, dor abdominal e dor nas costas.", "Cosmed", 4.99, 1 );
INSERT INTO tb_produtos(nome, descricao, marca, preco, categoriaid)
VALUES("Kit de Shampoo e Condicionadore", "Kit de Shampoo e Condicionador", "Elseve", 23.69, 4);
INSERT INTO tb_produtos(nome, descricao, marca, preco, categoriaid)
VALUES("Sabonete em Barra", "Sabonete cremoso em barra com base vegetal.Enriquecido com manteiga de murumuru. Limpa, hidrata e nutre a pele. Proporciona uma perfumação prolongada.", "Phebo", 7.90, 5);
INSERT INTO tb_produtos(nome, descricao, marca, preco, categoriaid)
VALUES("Whey Protein", "Proteínas do soro de leite, albumina e colágeno. Fonte de BCAA, com vitaminas e minerais. Melhor performance em treinos em alta intensidade.", "Integralmedica", 89.90, 2);
INSERT INTO tb_produtos(nome, marca, preco, categoriaid)
VALUES("Escova de dente", "Curaprox", 38.90, 5);
INSERT INTO tb_produtos(nome, descricao, marca, preco, categoriaid)
VALUES("Protetor Solar Facial", "Enriquecido com ácido Hialurônico e prebiótico. Toque seco com textura leve e fluída.Indicado para todos os tipos de pele.", "Needs", 49.90, 3);
INSERT INTO tb_produtos(nome, marca, preco, categoriaid)
VALUES("Hidratante labial- Carmed", "Cimed", 27.90, 3);
INSERT INTO tb_produtos(nome, descricao, marca, preco, categoriaid)
VALUES("Loção hidratante", "Indicado para peles secas e extrassecas. Hidrata profundamente por até 48 horas.Promove uma pele macia e sedosa.", "Nivea", 19.99, 3);

SELECT nome, preco FROM tb_produtos WHERE preco > 50.00;
SELECT nome, preco FROM tb_produtos WHERE preco BETWEEN  5.00 AND 60.00;
SELECT nome FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = "higiene pessoal";
