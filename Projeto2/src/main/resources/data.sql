INSERT INTO `projeto2`.`usuario` (`id`, `email`, `nome_completo`, `password_hash`, `perfil`) 
VALUES ('1', 'root@email.com', 'Davi Maçana', '$2a$10$.IL9FBhtRVW.mIW1hQ5nVeSGdOAYxQd6krBKXzDaJvPr2wNlh9axy', 'ADMIN');
INSERT INTO `projeto2`.`usuario` (`id`, `email`, `nome_completo`, `password_hash`, `perfil`) 
VALUES ('2', 'user@email.com', 'Aluno Step', '$2a$10$.IL9FBhtRVW.mIW1hQ5nVeSGdOAYxQd6krBKXzDaJvPr2wNlh9axy', 'USER');
commit;