-- Especifica a base de dados onde serão executados os comandos a seguir
USE exemplo;

-- Criar um novo registro na tabela indicada
INSERT INTO alunos(nome) VALUES('Marco Carvalho');
INSERT INTO alunos(id, nome) VALUES(10, 'Marco Carvalho');
INSERT INTO alunos(nome, cpf) VALUES('Marco Carvalho', '15428796584');
-- Seleciona dados na tabela selecionada
INSERT INTO alunos (nome, cpf) VALUES
    ('kevin pompeu','12345678921')
    ('nathalia pedro','12345678913')

SELECT * FROM alunos;

UPDATE alunos SET cpf = '12345678912' WHERE id =10;
UPDATE alunos SET cpf = '21987654321', nome = 'novo teste' WHERE id -10;

DELETE FROM alunos WHERE cpf = '21987654321';

SELECT nome, cpf FROM alunos;
--ou
SELECT nome, cpf FROM alunos WHERE nome LIKE '%pompeu';
SELECT nome, cpf FROM alunos WHERE nome LIKE '%pompeu' AND nome LIKE 'k%';
SELECT nome, cpf FROM alunos WHERE nome LIKE 'k%' OR nome LIKE 'n%';

--inserindo na tabela livros

INSERT INTO generos (id, nome) VALUES
    (1, 'aventura'),
    (2, 'policial');

INSERT INTO livros (titulo, id_genero) VALUES
    ('a sociedade do anel', 1),
    ('assasinato no museu',2);

-- Junção de tabelas:
SELECT * FROM livros LEFT JOIN generos ON livros.id_genero = generos.id;