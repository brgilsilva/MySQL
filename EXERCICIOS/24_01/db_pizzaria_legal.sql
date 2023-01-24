CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY, 
sabor VARCHAR (255)NOT NULL,
valor DECIMAL,
id_categoria_2 BIGINT
);

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR (255),
tamanho VARCHAR (255)
);

ALTER TABLE tb_pizzas ADD CONSTRAINT
FOREIGN KEY (id_categoria_2) REFERENCES tb_categorias (id_categoria);

INSERT INTO tb_categorias (tipo,tamanho) VALUES ("SALGADA","EXTRA GRANDE");
INSERT INTO tb_categorias (tipo,tamanho) VALUES ("SALGADA","GRANDE");
INSERT INTO tb_categorias (tipo,tamanho) VALUES ("SALGADA","PEQUENA");
INSERT INTO tb_categorias (tipo,tamanho) VALUES ("DOCE","GRANDE");
INSERT INTO tb_categorias (tipo,tamanho) VALUES ("DOCE","PEQUENA");

INSERT INTO tb_pizzas (sabor,valor,id_categoria_2) VALUES ("Mussarela",52.00,2);
INSERT INTO tb_pizzas (sabor,valor,id_categoria_2) VALUES ("Calabresa",45.00,3);
INSERT INTO tb_pizzas (sabor,valor,id_categoria_2) VALUES ("Frango com catupiry",65.00,2);
INSERT INTO tb_pizzas (sabor,valor,id_categoria_2) VALUES ("Moda da casa",160.00,1);
INSERT INTO tb_pizzas (sabor,valor,id_categoria_2) VALUES ("Romeu e Julieta",65.00,4);
INSERT INTO tb_pizzas (sabor,valor,id_categoria_2) VALUES ("Brigadeiro",49.00,5);
INSERT INTO tb_pizzas (sabor,valor,id_categoria_2) VALUES ("Brócolis",47.00,2);
INSERT INTO tb_pizzas (sabor,valor,id_categoria_2) VALUES ("Chocolate branco com M&Ms",45.00,5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT sabor,valor,tipo,tamanho FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria_2 = tb_categorias.id_categoria;

SELECT sabor,valor,tipo,tamanho FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria_2 = tb_categorias.id_categoria WHERE valor > 45;

SELECT sabor,valor,tipo,tamanho FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria_2 = tb_categorias.id_categoria WHERE valor >= 50 AND valor <=100;

SELECT sabor,valor,tipo,tamanho FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria_2 = tb_categorias.id_categoria WHERE sabor LIKE "M%";

SELECT sabor,valor,tipo,tamanho FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria_2 = tb_categorias.id_categoria WHERE tipo = "SALGADA";

SELECT sabor,valor,tipo,tamanho FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria_2 = tb_categorias.id_categoria WHERE tipo = "DOCE";





