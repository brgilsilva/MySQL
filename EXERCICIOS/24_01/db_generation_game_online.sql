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



