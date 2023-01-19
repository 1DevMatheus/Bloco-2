CREATE DATABASE db_farmacia_bem_estar;


USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,

Tipo VARCHAR(255),
Marca VARCHAR (255),

PRIMARY KEY (id)

);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,

nome VARCHAR(255),
preco DECIMAL(6,2),
quantidade  VARCHAR(255),
tem_efeito_colateral BOOLEAN,

categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);



INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Cosmetico","Makeb");

INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Cosmetico","Genex");

INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Cosmetico","Embelleze");


INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Cosmetico","Lara Makup");


INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Medicamento","Generico");


INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Medicamento","Gemax");

INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Medicamento","Medimax");

INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Curativo","Bandage");

INSERT INTO tb_categoria(Tipo,Marca)
VALUES("Curativo","Curamuito");

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Batom",1.99,"1 Unidade",false,2);

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Batom",22.99,"1 Unidade",false,1);

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Base",12.90,"1 Unidade",true,3);

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Maleta de makes",62.99,"1 Unidade",false,4);

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Dipirona",3.99,"9 Comprimidos",false,5);

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Gincobiloba",19.99,"1 Unidade",true,7);

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Omega 3",121.99,"60 Capsulas",false,6);

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Band-Aid",6.99,"4 Unidade",false,8);

INSERT INTO tb_produtos(nome,preco,quantidade,tem_efeito_colateral,categoria_id)
VALUES ("Curativão",61.99,"60 Unidade",false,9);

SELECT * FROM tb_categoria;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >50;


SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produtos.categoria_id;
