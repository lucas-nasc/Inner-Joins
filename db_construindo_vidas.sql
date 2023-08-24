CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
VALUES ('Alimentos', 'Produtos alimentícios ');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Vestuário', 'Roupas e acessórios ');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Higiene', 'Produtos de higiene pessoal ');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Educação', 'Materiais e recursos ');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Moradia', 'Itens e suporte relacionados a moradia e abrigo.');


INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Arroz', 10.99, NULL, 'todos', 1);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Camiseta Básica', 15.50, NULL, 'todos', 2);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Sabonete', 2.75, NULL, 'todos', 3);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Cadernos Escolares', 7.25, NULL, 'todos', 4);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Cobertor', 20.45, NULL, 'todos', 5);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Feijão', 8.99, NULL, 'todos', 1);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Calça Jeans', 30.75, NULL, 'todos', 2);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Creme Dental', 3.99, NULL, 'todos', 3);

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
WHERE tb_categoria.classes = 'Vestuario';
