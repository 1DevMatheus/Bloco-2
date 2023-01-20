CREATE DATABASE db_PizzaPlanet;


USE db_PizzaPlanet;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,

nome_cat VARCHAR(255),

tamanho CHAR(3),

PRIMARY KEY (id)

);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,

sabor VARCHAR(255),
preco DECIMAL(6,2),
acompanhamento VARCHAR(255),
borda_recheada BOOLEAN,

categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);



INSERT INTO tb_categoria(nome_cat,tamanho)
VALUES("Salgada","P");

INSERT INTO tb_categoria(nome_cat,tamanho)
VALUES("Salgada","M");

INSERT INTO tb_categoria(nome_cat,tamanho)
VALUES("Salgada","G");


INSERT INTO tb_categoria(nome_cat,tamanho)
VALUES("Doce","P");


INSERT INTO tb_categoria(nome_cat,tamanho)
VALUES("Doce","M");


INSERT INTO tb_categoria(nome_cat,tamanho)
VALUES("Doce","G");

INSERT INTO tb_pizzas(sabor,preco,acompanhamento,borda_recheada,categoria_id)
VALUES ("Frango Catupiry",54.00,"Dolly 2lt",true,3);

INSERT INTO tb_pizzas(sabor,preco,acompanhamento,borda_recheada,categoria_id)
VALUES ("Brocolis com bacon",94.00,"CocaCola 2,5lt",true,3);

INSERT INTO tb_pizzas(sabor,preco,acompanhamento,borda_recheada,categoria_id)
VALUES ("Muzarella",44.00,"Dolly 2lt",false,3);

INSERT INTO tb_pizzas(sabor,preco,acompanhamento,borda_recheada,categoria_id)
VALUES ("M&M´s",54.00,"Nenhum",true,5);

INSERT INTO tb_pizzas(sabor,preco,acompanhamento,borda_recheada,categoria_id)
VALUES ("Romeu e Julieta",49.00,"Nenhum",false,6);

INSERT INTO tb_pizzas(sabor,preco,acompanhamento,borda_recheada,categoria_id)
VALUES ("Charge",34.00,"Nenhum",false,4);

INSERT INTO tb_pizzas(sabor,preco,acompanhamento,borda_recheada,categoria_id)
VALUES ("Frango Catupiry",24.00,"Nenhum",false,1);

INSERT INTO tb_pizzas(sabor,preco,acompanhamento,borda_recheada,categoria_id)
VALUES ("Calabresa",44.00,"Dolly 2lt",false,2);

SELECT * FROM tb_categoria;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco >45;

SELECT * FROM tb_pizzas WHERE preco <45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categoria 
ON tb_categoria.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria 
ON tb_categoria.id = tb_pizzas.categoria_id
WHERE nome_cat LIKE "doce";