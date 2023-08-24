CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

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
VALUES ('Tecnologia', 'tecnologia e programação.');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Artes', 'Cdesenho e outras formas de expressão artística.');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Línguas', 'para aprimorar habilidades linguísticas.');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Saúde e Bem-Estar', ' exercícios e cuidados pessoais.');

INSERT INTO tb_categoria (classes, descricao) 
VALUES ('Negócios', 'gestão e desenvolvimento profissional.');



INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Curso de Desenvolvimento Web', 199.99, NULL, 'todos', 1);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Curso de Pintura em Aquarela', 59.50, NULL, 'todos', 2);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Curso de Inglês Avançado', 149.75, NULL, 'todos', 3);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Curso de Meditação Guiada', 29.25, NULL, 'todos', 4);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Curso de Empreendedorismo', 89.99, NULL, 'todos', 5);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Curso de Programação Python', 129.75, NULL, 'todos', 1);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Curso de Fotografia Digital', 79.50, NULL, 'todos', 2);

INSERT INTO tb_produtos (nome, preco, dosagem, indicacao, categoria_id) 
VALUES ('Curso de Yoga Online', 39.99, NULL, 'todos', 4);

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
WHERE tb_categoria.classes = 'Negócios';
