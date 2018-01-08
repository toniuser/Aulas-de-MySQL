create database cadastro
default character set utf8
default collate utf8_general_ci;


use cadastro;

CREATE TABLE pessoas(
id int NOT NULL AUTO_INCREMENT,
nome varchar(30) NOT NULL,
nacimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) DEFAULT 'Brasil',
PRIMARY KEY(id)
) DEFAULT CHARSET = utf8;


use cadastro;


INSERT INTO pessoas VALUES
(DEFAULT,'Gomes da Costa', '1998-01-01','F','65.00','1.65','lada'),
(DEFAULT,'Rogerio Tedesco','2004-05-05','M','109.22','1.92','EUA'),
(DEFAULT,'Mumia Tavarez','2000-12-12','M','12.5','2.15','Egito'),
(DEFAULT,'Mirna Mirneira','1999-08-06','F','72.5','1.72',DEFAULT),
(DEFAULT,'Tatiane ou Tatiana','1952-11-21','F','69.69','1.42','Cuba'),
(DEFAULT,'Samara','1666-11-13','F','65.5','1.82','Japão');

SELECT * FROM pessoas;



DESCRIBE pessoas;
DESCRIBE pessoinhas;

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

ALTER TABLE pessoas
DROP COLUMN profissao;

ALTER TABLE pessoas 
ADD COLUMN profissao varchar(10) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN test int FIRST;

ALTER TABLE pessoas
DROP COLUMN test;

ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20) NOT NULL DEFAULT ''; /** Não Funcionou mas unica solução encontrada ate agora**/


ALTER TABLE pessoas 
CHANGE COLUMN profissao prof varchar(20);

ALTER TABLE pessoas
RENAME TO pessoinhas;


ALTER TABLE pessoinhas
RENAME TO pessoas;
