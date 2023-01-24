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