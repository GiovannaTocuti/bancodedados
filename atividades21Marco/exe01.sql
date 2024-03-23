CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
decadaentrada INT,
descricao VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
nomecivil VARCHAR(255),
poderataque INT,
poderdefesa int,
PRIMARY KEY(id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(decadaentrada, descricao)
VALUES(1963, "Membro fundador");
INSERT INTO tb_classes(decadaentrada, descricao)
VALUES(1960, "Juntou-se aos Vingadores na Década de 1960");
INSERT INTO tb_classes(decadaentrada, descricao)
VALUES(1970, "Juntou-se aos Vingadores na Década de 1970");
INSERT INTO tb_classes(decadaentrada, descricao)
VALUES(1980, "Juntou-se aos Vingadores na Década de 1980");
INSERT INTO tb_classes(decadaentrada, descricao)
VALUES(1990, "Juntou-se aos Vingadores na Década de 1990");

INSERT INTO tb_personagens(nome, nomecivil, poderataque, poderdefesa)
VALUES("Viúva Negra", "Natasha Romanoff", 3500, 3000);
INSERT INTO tb_personagens(nome, nomecivil, poderataque, poderdefesa)
VALUES("Pantera Negra", "T'Challa", 2500, 3000);
INSERT INTO tb_personagens(nome, nomecivil, poderataque, poderdefesa)
VALUES("Feiticeira Escalarte", "Wanda Maximoff", 3000, 2000);
INSERT INTO tb_personagens(nome, nomecivil, poderataque, poderdefesa)
VALUES("Thor", "Thor Odinson", 3500, 3000);
INSERT INTO tb_personagens(nome, nomecivil, poderataque, poderdefesa)
VALUES("Homem de Ferro", "Tony Stark", 1500, 1500);
INSERT INTO tb_personagens(nome, nomecivil, poderataque, poderdefesa)
VALUES("Capitão América", "Steve Rogers", 2500, 1800);
INSERT INTO tb_personagens(nome, nomecivil, poderataque, poderdefesa)
VALUES("Capitã Marvel", "Monica Rambeau", 3500, 3500);
INSERT INTO tb_personagens(nome, nomecivil, poderataque, poderdefesa)
VALUES("Homem Aranha", "Peter Benjamin Parker", 1500, 1500);

ALTER TABLE tb_personagens ADD classeid BIGINT;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classeid) REFERENCES tb_classes(id);

SELECT nome, poderataque FROM tb_personagens WHERE poderataque > 2000;

SELECT nome, poderdefesa FROM tb_personagens WHERE poderdefesa >= 1000 AND poderdefesa <= 2000;

SELECT nome FROM tb_personagens WHERE nome LIKE "%c%";

UPDATE tb_personagens SET classeid = 3  WHERE id = 1;
UPDATE tb_personagens SET classeid = 2 WHERE id = 2;
UPDATE tb_personagens SET classeid = 2 WHERE id = 3;
UPDATE tb_personagens SET classeid = 1 WHERE id = 4;
UPDATE tb_personagens SET classeid = 1 WHERE id = 5;
UPDATE tb_personagens SET classeid = 2 WHERE id = 6;
UPDATE tb_personagens SET classeid = 4 WHERE id = 7;
UPDATE tb_personagens SET classeid = 5 WHERE id = 8;

SELECT nome, tb_classes.decadaentrada
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT nome, tb_classes.decadaentrada
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.decadaentrada = 1960;