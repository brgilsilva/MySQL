CREATE DATABASE ecommerce_brg;

USE ecommerce_brg;

CREATE TABLE vendas (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
quantidade INT,
valor DECIMAL NOT NULL,
obs VARCHAR (255),
PRIMARY KEY (id)
);	

INSERT INTO vendas (nome, quantidade, valor, obs)
VALUES ("Bolsa",200,59.90,"");
INSERT INTO vendas (nome, quantidade, valor, obs)
VALUES ("Vasoura",120,12.50,"Madeira");
INSERT INTO vendas (nome, quantidade, valor, obs)
VALUES ("Skate",300,125.60,"Esporte");
INSERT INTO vendas (nome, quantidade, valor, obs)
VALUES ("Bicicleta",40,459.90,"Infantil");
INSERT INTO vendas (nome, quantidade, valor, obs)
VALUES ("Caderno",1200,19.90," 10 matérias");
INSERT INTO vendas (nome, quantidade, valor, obs)
VALUES ("Notebook",56,1659.90,"LG");
INSERT INTO vendas (nome, quantidade, valor, obs)
VALUES ("Mouse sem fio",800,159.90,"Microsoft");
INSERT INTO vendas (nome, quantidade, valor, obs)
VALUES ("Kit Teclado e mouse",1500,340.99,"Microsoft");



SELECT * FROM vendas;
SELECT * FROM vendas WHERE valor > 500;
SELECT * FROM vendas WHERE valor <500;

UPDATE vendas SET obs = "Couro" WHERE id = 1; 


