CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
preco DECIMAL,
id_cat BIGINT
);

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR (255)
);

ALTER TABLE tb_produtos ADD CONSTRAINT
FOREIGN KEY (id_cat) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (tipo) VALUES ("AVE");
INSERT INTO tb_categorias (tipo) VALUES ("BOVINO");
INSERT INTO tb_categorias (tipo) VALUES ("SUINO");
INSERT INTO tb_categorias (tipo) VALUES ("PEIXE");
INSERT INTO tb_categorias (tipo) VALUES ("CHURRASCO");

INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("COXA E SOBRECOXA",15,1);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("ACEM",29.9,2);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("COSTELA",19.99,3);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("PESCADA",15,4);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("CARVÃO",28,5);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("MUSCULO",35.9,2);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("ESPETO",5.99,5);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("ORELHA",12.99,3);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE preco > 50;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE preco >= 50 AND preco >= 150;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE nome LIKE "C%";

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE tipo = "BOVINO";
