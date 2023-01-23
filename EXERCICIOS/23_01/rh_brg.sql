CREATE DATABASE rh_brg;


USE rh_brg;

CREATE TABLE funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
idade INT,
profissao VARCHAR (255),
salario INT,
entrada INT,
saida INT,
PRIMARY KEY (id)
);

INSERT INTO funcionarios (nome, idade, profissao, salario, entrada, saida)
VALUES ("Bruno", 31, "Gerente",15000, 8, 17); 
INSERT INTO funcionarios (nome, idade, profissao, salario, entrada, saida)
VALUES ("João", 41, "Suporte",5000, 9, 18); 
INSERT INTO funcionarios (nome, idade, profissao, salario, entrada, saida)
VALUES ("Luíza", 25, "Supervisor",7000, 8, 17); 
INSERT INTO funcionarios (nome, idade, profissao, salario, entrada, saida)
VALUES ("Stella", 22, "Auxiliar ADM",3000, 9, 18); 
INSERT INTO funcionarios (nome, idade, profissao, salario, entrada, saida)
VALUES ("Daniel", 30, "Recursos Humanos",4500, 9, 18); 
INSERT INTO funcionarios (nome, idade, profissao, salario, entrada, saida)
VALUES ("Roberto", 35, "Ajudante Geral",1500, 7, 16); 


SELECT * FROM funcionarios; 

SELECT * FROM funcionarios WHERE salario >2000;
SELECT * FROM funcionarios WHERE salario <2000;
UPDATE funcionarios SET nome = "Justus" WHERE id = 6;



