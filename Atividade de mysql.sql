-- Comando para criar o bando de dados

CREATE DATABASE RH;

-- Comando para definir qual data base começar a codar 

USE RH;

-- Comando de criação de tabelas e suas definições 

CREATE TABLE funcionarios(
	 -- chave primaria - referencia de um dado dentro da minha tabela
		-- chave estrangeira- referencia de outro dado de outra tabela dentro da tabel que eu estou referenciando
	id BIGINT auto_increment,
     nome VARCHAR (255),
     cpf BIGINT ,
     idade INT ,
     cargo VARCHAR (255),
     salario DECIMAL (7,2),
     
     PRIMARY KEY(id)
);

-- Inserção de dados na tabela

INSERT INTO funcionarios(nome,cpf,idade,cargo,salario)
VALUES 	("Matheus Silva",16093933922,24,"Gerente",3800.90);

INSERT INTO funcionarios(nome,cpf,idade,cargo,salario)
VALUES 	("Lucas Silva",17668821122,42,"Estagiario",1000);

INSERT INTO funcionarios(nome,cpf,idade,cargo,salario)
VALUES 	("Manuel Abreu",23812999922,29,"Funcionario",1947);

INSERT INTO funcionarios(nome,cpf,idade,cargo,salario)
VALUES 	("Lara Silva",99121309021,32,"Gerente",3988);

INSERT INTO funcionarios(nome,cpf,idade,cargo,salario)
VALUES 	("Silas Palla",13321442122,54,"Gerente",5000);
 
 -- Select que retorna todo os dados da tabela
SELECT * FROM funcionarios;

-- Select que retorna o valor menor que o definido
SELECT * FROM funcionarios WHERE salario < 2000;

-- Select que retorna o valor maior que o definido
SELECT * FROM funcionarios WHERE salario > 2000;

DELETE FROM funcionarios WHERE id=5;
UPDATE funcionarios
SET salario = 1989
WHERE id=3;

SET SQL_SAFE_UPDATES =0;


CREATE TABLE produtos(
	id BIGINT auto_increment,

nome VARCHAR (255),
preco DECIMAL(6,2),
tamanho CHAR(3),
cor VARCHAR(255),
marca VARCHAR(255),

PRIMARY KEY (id)
);
 INSERT INTO produtos(nome,preco,tamanho,cor,marca)
VALUES ("Camiseta",99.99,"G","Azul","Adidas");

INSERT INTO produtos(nome,preco,tamanho,cor,marca)
VALUES ("Camisa",59.99,"p","Azul","Nike");

INSERT INTO produtos(nome,preco,tamanho,cor,marca)
VALUES ("Bolsa",9990,"","Lapis Lazuli","Balenciaga");

INSERT INTO produtos(nome,preco,tamanho,cor,marca)
VALUES ("Calça",512.99,"M","Branca","Oracle");

INSERT INTO produtos(nome,preco,tamanho,cor,marca)
VALUES ("Camiseta",29.99,"M","Verde","Brás");

SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco <500;

SELECT * FROM produtos WHERE preco >500