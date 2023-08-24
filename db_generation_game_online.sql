CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
classes varchar(50),
descricao varchar(50),
primary key(id)
);


CREATE TABLE tb_personagens(

id bigint auto_increment,
nomePersonagem varchar(255),
nivel int,
pontosataque int,
pontosdefesa int,
classes_id bigint,
primary key(id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);


INSERT INTO tb_classes(classes,descricao) values ("Mago","Atira magias");
INSERT INTO tb_classes(classes,descricao) values ("Lutador","Aguenta batalhas longa");
INSERT INTO tb_classes(classes,descricao) values ("Atirador","Utiliza armas para dar dano");
INSERT INTO tb_classes(classes,descricao) values ("Duelista","Otimos em lutas 1 conta 1");
INSERT INTO tb_classes(classes,descricao) values ("Suporte","Cura o time");


INSERT INTO tb_personagens(nomePersonagem,nivel,pontosataque,pontosdefesa,classes_id) values ("Draven",18,3008,360,3);
INSERT INTO tb_personagens(nomePersonagem,nivel,pontosataque,pontosdefesa,classes_id) values ("Lulu",10,1058,760,5);
INSERT INTO tb_personagens(nomePersonagem,nivel,pontosataque,pontosdefesa,classes_id) values ("Jax",5,658,260,2);
INSERT INTO tb_personagens(nomePersonagem,nivel,pontosataque,pontosdefesa,classes_id) values ("Nunu",3,458,580,2);
INSERT INTO tb_personagens(nomePersonagem,nivel,pontosataque,pontosdefesa,classes_id) values ("Brand",12,1268,760,1);
INSERT INTO tb_personagens(nomePersonagem,nivel,pontosataque,pontosdefesa,classes_id) values ("Veigar",8,1758,1000,1);
INSERT INTO tb_personagens(nomePersonagem,nivel,pontosataque,pontosdefesa,classes_id) values ("Fizz",14,1708,700,1);
INSERT INTO tb_personagens(nomePersonagem,nivel,pontosataque,pontosdefesa,classes_id) values ("Viktor",16,2000,1000,1);

SELECT * FROM tb_personagens WHERE pontosataque > 2000;

SELECT * FROM tb_personagens where pontosataque between 1000 and 2000;

SELECT * FROM tb_personagens WHERE nomePersonagem LIKE "%C%";

SELECT tb_personagens.*, tb_classes.classes, tb_classes.descricao
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

SELECT nomePersonagem,nivel, pontosataque, pontosdefesa 
 FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT tb_personagens.*, tb_classes.classes, tb_classes.descricao
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.classes = 'Atirador';




