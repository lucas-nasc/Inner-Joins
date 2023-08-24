
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(50) not null,
descricao varchar(50),
primary key(id)
);

CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal(10,2),
sabor varchar(50),
tamanho enum("Pequeno", "Medio", "Grande") not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id)references tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, descricao) values ("Vegetariano", "Não tem carne");
INSERT INTO tb_categorias(tipo, descricao) values ("Doce", "diversas variedades");
INSERT INTO tb_categorias(tipo, descricao) values ("Salgado", "diversas variedades");
INSERT INTO tb_categorias(tipo, descricao) values ("Vegana", "exclui todos os produtos de origem animal");

INSERT INTO tb_pizzas(nome,preco,sabor,tamanho,categoria_id) values ("Marguerita",100.00," queijo mozzarella fresco, manjericão ","Grande",1);
INSERT INTO tb_pizzas(nome,preco,sabor,tamanho,categoria_id) values ("Calabresa",50.00," linguiça calabresa, queijo mozzarella ","Medio",3);
INSERT INTO tb_pizzas(nome,preco,sabor,tamanho,categoria_id) values ("Frango com Catupiry",30.00," pedaços de frango desfiado, catupiry ","Pequeno",3);
INSERT INTO tb_pizzas(nome,preco,sabor,tamanho,categoria_id) values ("Queijo Vegano",100.00,"Queijo vegano à base de castanhas","Grande",4);
INSERT INTO tb_pizzas(nome,preco,sabor,tamanho,categoria_id) values ("Quatro Queijos",50.00,"quatro queijos diferentes","Medio",1 );
INSERT INTO tb_pizzas(nome,preco,sabor,tamanho,categoria_id) values ("Brigadeiro",120.00,"Pizza de brigadeiro","Grande",2);
INSERT INTO tb_pizzas(nome,preco,sabor,tamanho,categoria_id) values ("Nutella",120.00,"Pizza de Nutella","Grande",2);
INSERT INTO tb_pizzas(nome,preco,sabor,tamanho,categoria_id) values ("Romeu Juliette",120.00,"Pizza de Queijo e Goiabada","Grande",2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco >45;

SELECT * FROM tb_pizzas where preco between 50.00 and 100.00;

SELECT * FROM tb_pizzas WHERE nome Like "%M%"; 

SELECT nome,preco,sabor,tamanho 
from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id;

SELECT tb_pizzas.*, tb_categorias.tipo AS categoria, tb_categorias.descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = 'Doce';





 



