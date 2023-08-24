drop database  db_cidade_das_carnes;
CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE  tb_categoria(

id bigint auto_increment,
classes varchar(50),
descricao varchar(50),
primary key(id)

);

CREATE TABLE  tb_produtos(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal(10,2),
dosagem decimal(10,2),
indicacao enum("todos"),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Carnes Bovinas', 'Produtos de carne derivados do gado bovino.');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Carnes Suínas', 'Produtos de carne derivados de porcos.');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Embutidos', 'Produtos de carne processada');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Aves', 'carne derivados de aves, como frango e peru.');



INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Bife de Alcatra', 20.99, 200, 'todos', 1);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Linguiça Toscana', 12.50, 300, 'todos', 3);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Peito de Peru', 18.75, 100, 'todos', 4);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Costela Suína', 15.25, 250, 'todos', 2);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Salsicha de Frango', 9.45, 180, 'todos', 4);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Picanha Argentina', 25.99, 200, 'todos', 1);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Presunto Cozido', 10.50, 150, 'todos', 3);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Peito de Frango Defumado', 16.75, 120, 'todos', 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >50.00;

SELECT * FROM tb_produtos where preco between 50.00 and 150.00;

SELECT * FROM tb_produtos WHERE nome Like "%C%"; 

SELECT nome,preco,dosagem,indicacao 
from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

SELECT tb_produtos.*, tb_categoria.classes AS categoria, tb_categoria.descricao
FROM tb_produtos
INNER JOIN tb_categoria ON tb_produtos.categoria_id = tb_categoria.id
WHERE tb_categoria.classes = 'Aves';



