CREATE TABLE tb_personagens (id BIGINT AUTO_INCREMENT, nome VARCHAR(255) NOT NULL,
 nivel VARCHAR(255), defesa INT, ataque INT, PRIMARY KEY(id)); 
 
 ALTER TABLE tb_personagens ADD classesid BIGINT;
 
 ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classesid) REFERENCES tb_classes (id);

SELECT * FROM tb_personagens;