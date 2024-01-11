CREATE TABLE tb_pizzas (id_pizzas BIGINT AUTO_INCREMENT PRIMARY KEY,
sabores VARCHAR(255) NOT NULL,
preco DECIMAL(6,2),
descricao VARCHAR(255),
borda VARCHAR(255),
id BIGINT, FOREIGN KEY (id) REFERENCES tb_categorias(id));

INSERT INTO tb_pizzas (sabores, descricao, preco, borda, id) 
VALUES ("Margherita", "Pizza tradicional com tomate, queijo e manjericão", 46.00, "Com requeijão", 1);
INSERT INTO tb_pizzas (sabores, descricao, preco, borda, id)
VALUES ("Calabresa Especial", "Pizza com calabresa, cebola, pimentão e azeitonas", 58.50, "Com requeijão", 5);
INSERT INTO tb_pizzas (sabores, descricao, preco, borda, id)
VALUES ('Vegetariana Suprema', 'Pizza com uma variedade de vegetais frescos', 30.00, "Com requeijão", 3);
INSERT INTO tb_pizzas (sabores, descricao, preco, borda, id)
VALUES ('Frango Catupiry Delight', 'Pizza com frango desfiado e catupiry', 82.00, "Com requeijão", 1);
INSERT INTO tb_pizzas (sabores, descricao, preco, borda, id)
VALUES ('Portuguesa Premium', 'Pizza com presunto, ovos, cebola, azeitonas e bacon', 35.00, "Com requeijão", 5);
INSERT INTO tb_pizzas (sabores, descricao, preco, borda, id)
VALUES ('Quatro Queijos', 'Pizza com uma seleção de quatro queijos diferentes', 34.50, "Com requeijão", 3);
INSERT INTO tb_pizzas (sabores, descricao, preco, borda, id)
VALUES ('Pepperoni Explosion', 'Pizza com generosas fatias de pepperoni', 33.00, "Com requeijão", 1);
INSERT INTO tb_pizzas (sabores, descricao, preco, borda, id)
VALUES ('Mista', 'Pizza com uma combinação de ingredientes variados', 27.00, "Sem requeijão", 4);


SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabores LIKE "%M%";

SELECT tb_pizzas.*, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id
WHERE tb_categorias.tipo = "Salgada"; 




