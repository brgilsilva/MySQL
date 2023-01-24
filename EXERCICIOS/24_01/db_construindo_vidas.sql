CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

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

INSERT INTO tb_categorias (tipo) VALUES ("FERRAGENS");
INSERT INTO tb_categorias (tipo) VALUES ("ELETRICA");
INSERT INTO tb_categorias (tipo) VALUES ("ELETRONICO");
INSERT INTO tb_categorias (tipo) VALUES ("ENCANAMENTO");
INSERT INTO tb_categorias (tipo) VALUES ("UTENSILIOS");

INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("PREGO",20,1);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("FIO",129.9,2);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("FERRO DE PASSAR",149.99,3);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("CANO PVC",89.9,4);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("GARFO",78,5);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("MARTELO",45.9,1);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("TOMADA",7.99,2);
INSERT INTO tb_produtos (nome,preco,id_cat) VALUES ("PEGADOR DE MACARRÃO",15.99,5);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE preco > 100;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE preco >= 70 AND preco >= 150;

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE nome LIKE "C%";

SELECT nome,preco,tipo FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_cat = tb_categorias.id WHERE tipo = "ENCANAMENTO";
