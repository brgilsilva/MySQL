CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255)
);

CREATE TABLE tb_produtos (
id_prod BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
preco DECIMAL,
id_cat BIGINT
);

ALTER TABLE tb_produtos ADD CONSTRAINT
FOREIGN KEY (id_cat) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (tipo) VALUES ("COSMÉTICOS");
INSERT INTO tb_categorias (tipo) VALUES ("COMPRIMIDOS");
INSERT INTO tb_categorias (tipo) VALUES ("INJETÁVEL");
INSERT INTO tb_categorias (tipo) VALUES ("GOTAS");
INSERT INTO tb_categorias (tipo) VALUES ("BEBIDAS");

INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("DIPIRONA",4.99,1);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("SHAMPOO",14.99,2);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("IBUPROFENO",25.99,3);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("MORFINA",65.99,4);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("COCA COLA",5,5);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("FRALDA",45.99,2);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("LISADOR",15.50,3);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("ANTIBIÓTICO",73.50,4);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE preco > 50;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE preco >= 5 AND preco >= 60;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE nome LIKE "C%";

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE tipo = "COSMÉTICOS";



