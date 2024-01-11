SELECT tb_personagens.*, tb_classes.*
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id
WHERE tb_classes.tipo = "Cavaleiro";
