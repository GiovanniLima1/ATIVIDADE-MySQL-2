CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (id BIGINT AUTO_INCREMENT, tipo VARCHAR(255) NOT NULL,
tamanho VARCHAR(255), PRIMARY KEY(id));

SELECT * FROM tb_categorias; 

INSERT INTO tb_categorias (tipo, tamanho) 
VALUES ("Salgada", "Média");
INSERT INTO tb_categorias (tipo, tamanho) 
VALUES ("Doce", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) 
VALUES ("Especial", "Pequena");
INSERT INTO tb_categorias (tipo, tamanho) 
VALUES ("Vegetariana", "Média");
INSERT INTO tb_categorias (tipo, tamanho) 
VALUES ("Premium", "Grande");

SELECT * FROM tb_categorias;



