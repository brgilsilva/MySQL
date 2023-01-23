CREATE DATABASE db_quitanda;

 -- CREATE DATABASE db_teste;

USE db_quitanda;

CREATE TABLE tb_produtos(
 id BIGINT AUTO_INCREMENT, 
 nome VARCHAR(255) NOT NULL,
 quantidade INT,
 preco DECIMAL NOT NULL,
 PRIMARY KEY (id)
);

-- Inserindo dados na Tabela

INSERT INTO tb_produtos(nome,preco) 
VALUES ("tomate",8.00);
INSERT INTO tb_produtos(nome, preco) 
values ("laranja", 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);


-- Selecionando dados da Tabela

SELECT * FROM tb_produtos;

SELECT nome FROM tb_produtos;

SELECT nome,preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

-- WHERE com Operados Relacionais

SELECT * FROM tb_produtos WHERE preco < 8;

-- Selecionando dados com os Operadores Lógicos

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;


 -- UPDATE
 
UPDATE tb_produtos SET nome = "Laranja" WHERE id = 1;

-- DELETE

DELETE FROM tb_produtos WHERE id = 2;





