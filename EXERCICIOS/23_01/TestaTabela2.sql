USE db_quitanda;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255) NOT NULL
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_produtos;

INSERT INTO tb_categoria (descricao) values ("Fruta");
INSERT INTO tb_categoria (descricao) values ("Verdura");
INSERT INTO tb_categoria (descricao) values ("Legume");

ALTER TABLE tb_produtos ADD categoria_id BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);


INSERT INTO tb_produtos(nome, quantidade, preco, categoria_id) values("Pitaya doce", 10, 15.00, 1);
INSERT INTO tb_produtos(nome, quantidade, preco, categoria_id) values("Agrião", 15, 3.00, 2);
INSERT INTO tb_produtos(nome, quantidade, preco, categoria_id) values("Cenoura", 18, 3.50, 3);

SELECT nome, quantidade,descricao,preco FROM tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT nome, quantidade, preco, descricao from tb_produtos
LEFT JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

SELECT nome, quantidade, preco, descricao from tb_categoria
RIGHT JOIN tb_produtos ON tb_produtos.categoria_id = tb_categoria.id;
