CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);


INSERT INTO tb_categorias (nome, descricao)
VALUES
    ('Medicamentos', 'Produtos relacionados a medicamentos'),
    ('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
    ('Higiene', 'Produtos de higiene pessoal'),
    ('Suplementos', 'Suplementos alimentares'),
    ('Acessórios', 'Outros acessórios para saúde');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    descricao_produto VARCHAR(255),
    preco DECIMAL(6, 2) NOT NULL,
    id BIGINT,
    FOREIGN KEY (id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, id)
VALUES
    ('Paracetamol', 'Analgésico e antitérmico', 12.50, 1),
    ('Shampoo Anticaspa', 'Para controle de caspa', 65.99, 2),
    ('Creme Dental', 'Proteção contra cáries', 4.50, 3),
    ('Vitamina C', 'Suplemento vitamínico', 25.00, 4),
    ('Termômetro Digital', 'Medição de temperatura', 8.99, 5),
    ('Protetor Solar FPS 30', 'Proteção contra raios UV', 35.00, 2),
    ('Multivitamínico', 'Suplemento com várias vitaminas', 40.50, 4),
    ('Lenços Umedecidos', 'Para limpeza facial', 7.99, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50 ORDER BY nome_produto ASC;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60 ORDER BY preco ASC;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%" ORDER BY nome_produto ASC;

SELECT tb_produtos.*, tb_categorias.nome
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.nome
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id
WHERE tb_categorias.nome = "Medicamentos";

