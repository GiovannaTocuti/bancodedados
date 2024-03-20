CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
preco DECIMAL(6,2),
quantidade INT,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, descricao, preco, quantidade)
VALUES("Cropped Cintia", "Blusa cropped, decote em V, manga 3/4 ampla, decote e botão nas costas e tiras para amarração na cintura.", 30.00, 10),
("Cardigan Dulce", "Cardigan de moletinho com lurex, botões frontais e manga levemente bufante.", 30.00, 5),
("A última Calça de Alfaiataria Listrada", "Calça em tecido poliéster, cintura alta, cós tradicional, fechamento frontal, bolsos frontais tipo faca e bolsos traseiros. ", 299.00, 4),
("Short Jeans Vintage", "Short jeans modelo vintage, cintura alta, bolsos frontais e traseiros e modelagem mais larguinha.", 100.00, 1),
("Vestido Alfaiataria Sophie", "Vestido manga longa, alfaiataria, saia envelope assimétrica, ombreiras e fechamento por zíper nas costas.", 80.00, 12),
("Conjunto de Pijama Lélia", "Nosso Conjunto Pijama Lélia é confeccionado tecido super maleável e suave. O shorts possui elástico e cordão para ajuste e amarração, enquanto a blusa é de manga comprida.", 50.00, 15),
("A Última Camisa Social", "Camisa de manga longa com botões frontais e modelagem soltinha.", 259.00, 7),
("Calça Jeans Gabi", "Calça jeans cintura alta com recorte na coxa e modelagem soltinha.", 50.00, 3);

SELECT nome, preco FROM tb_produtos WHERE preco > 500.00;

SELECT nome, preco FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 250.00 WHERE id = 3;




