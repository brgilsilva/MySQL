CREATE DATABASE escola_brg;

USE escola_brg;

CREATE TABLE alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) not null,
disciplina VARCHAR (255),
turno VARCHAR (255),
nota DECIMAL,
PRIMARY KEY (id)
);

INSERT INTO alunos (nome, disciplina, turno, nota)
VALUES ("Bruno","MATEMÁTICA","MANHÃ",6.0);
INSERT INTO alunos (nome, disciplina, turno, nota)
VALUES ("Mario","MATEMÁTICA","MANHÃ",7.0);
INSERT INTO alunos (nome, disciplina, turno, nota)
VALUES ("José","MATEMÁTICA","MANHÃ",8.0);
INSERT INTO alunos (nome, disciplina, turno, nota)
VALUES ("Mauricio","PORTUGUÊS","TARDE",5.0);
INSERT INTO alunos (nome, disciplina, turno, nota)
VALUES ("Janaina","PORTUGUÊS","TARDE",5.5);
INSERT INTO alunos (nome, disciplina, turno, nota)
VALUES ("Paula","CIÊNCIA","TARDE",8.5);
INSERT INTO alunos (nome, disciplina, turno, nota)
VALUES ("Jenoveva","CIÊNCIA","NOITE",9.5);
INSERT INTO alunos (nome, disciplina, turno, nota)
VALUES ("Etevilna","INGLÊS","NOITE",10.0);

SELECT * FROM alunos;
SELECT * FROM alunos WHERE nota >7.0;
SELECT *FROM alunos WHERE nota <7.0;

UPDATE alunos SET nota = 9.0 WHERE id = 1;



