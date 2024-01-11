CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (id BIGINT AUTO_INCREMENT, tipo VARCHAR(255) NOT NULL,
 acao VARCHAR(255) NOT NULL, PRIMARY KEY(id));

SELECT * FROM tb_classes;