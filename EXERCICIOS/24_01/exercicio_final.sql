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

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
preco DECIMAL,
id_cat BIGINT
);

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR (255)
);

ALTER TABLE tb_cursos ADD CONSTRAINT
FOREIGN KEY (id_cat) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (tipo) VALUES ("JAVA");
INSERT INTO tb_categorias (tipo) VALUES ("SQL");
INSERT INTO tb_categorias (tipo) VALUES ("FRONT END");
INSERT INTO tb_categorias (tipo) VALUES ("BACK END");
INSERT INTO tb_categorias (tipo) VALUES ("WEB");

INSERT INTO tb_cursos (nome,preco,id_cat) VALUES ("TURMA 1",850,1);
INSERT INTO tb_cursos (nome,preco,id_cat) VALUES ("TURMA 2",1500,2);
INSERT INTO tb_cursos (nome,preco,id_cat) VALUES ("TURMA 3",2000,3);
INSERT INTO tb_cursos (nome,preco,id_cat) VALUES ("TURMA 4",3000,4);
INSERT INTO tb_cursos (nome,preco,id_cat) VALUES ("TURMA 5",400,5);
INSERT INTO tb_cursos (nome,preco,id_cat) VALUES ("TURMA 6",800,1);
INSERT INTO tb_cursos (nome,preco,id_cat) VALUES ("TURMA 7",2800,4);
INSERT INTO tb_cursos (nome,preco,id_cat) VALUES ("TURMA 8",2500,3);

SELECT * FROM tb_cursos;
SELECT * FROM tb_categorias;

SELECT nome,preco,tipo FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_cat = tb_categorias.id;

SELECT nome,preco,tipo FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_cat = tb_categorias.id WHERE preco > 500;

SELECT nome,preco,tipo FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_cat = tb_categorias.id WHERE preco >= 600 AND preco >= 1000;

SELECT nome,preco,tipo FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_cat = tb_categorias.id WHERE nome LIKE "%3%";

SELECT nome,preco,tipo FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_cat = tb_categorias.id WHERE tipo = "JAVA";


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



CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id_clas BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255)NOT NULL,
faixa_etaria VARCHAR(255)
);
CREATE TABLE tb_personagens (
id_pers BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255)NOT NULL,
arma VARCHAR(255),
poder int(255),
vidas int
);


INSERT INTO tb_classes (tipo,faixa_etaria) VALUES ("AÇÃO","12 anos");
INSERT INTO tb_classes (tipo,faixa_etaria) VALUES ("AÇÃO, AVENTURA","12 anos");
INSERT INTO tb_classes (tipo,faixa_etaria) VALUES ("INFANTIL","LIVRE");
INSERT INTO tb_classes (tipo,faixa_etaria) VALUES ("CORRIDA","LIVRE");
INSERT INTO tb_classes (tipo,faixa_etaria) VALUES ("AÇÃO, TERROR, FICÇÃO","18 anos");

ALTER TABLE tb_personagens ADD cat_id BIGINT;
ALTER TABLE tb_personagens ADD CONSTRAINT
FOREIGN KEY (cat_id) REFERENCES tb_classes (id_clas);

INSERT INTO tb_personagens (nome,arma,poder,vidas,cat_id) VALUES ("Mario","Pulo",100,3,3);
INSERT INTO tb_personagens (nome,arma,poder,vidas,cat_id) VALUES ("IOSHI","Pulo extra alto",2100,3,2);
INSERT INTO tb_personagens (nome,arma,poder,vidas,cat_id) VALUES ("Panda","Soco",1900,5,1);
INSERT INTO tb_personagens (nome,arma,poder,vidas,cat_id) VALUES ("Homem Aranha","Teia",3000,10,2);
INSERT INTO tb_personagens (nome,arma,poder,vidas,cat_id) VALUES ("Mario Kart","Correr",8000,3,4);
INSERT INTO tb_personagens (nome,arma,poder,vidas,cat_id) VALUES ("Cond Dracula","Mordida",2500,100,5);
INSERT INTO tb_personagens (nome,arma,poder,vidas,cat_id) VALUES ("Fofão","Riso",80,1000,3);
INSERT INTO tb_personagens (nome,arma,poder,vidas,cat_id) VALUES ("Super Homem","VOA",15000,100,2);


SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;


SELECT nome, arma,poder,vidas,tipo,faixa_etaria FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.cat_id = tb_classes.id_clas;


SELECT nome, arma,poder,vidas,tipo,faixa_etaria FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.cat_id = tb_classes.id_clas WHERE poder > 2000;

SELECT nome, arma,poder,vidas,tipo,faixa_etaria FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.cat_id = tb_classes.id_clas WHERE poder >=1000 AND poder <= 2000;

SELECT nome, arma,poder,vidas,tipo,faixa_etaria FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.cat_id = tb_classes.id_clas WHERE nome LIKE "C%";

SELECT nome, arma,poder,vidas,tipo,faixa_etaria FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.cat_id = tb_classes.id_clas WHERE cat_id = 3;
