-- Criação de banco de dados
CREATE DATABASE cursosql;
USE CursoSQL;

DROP TABLE alunos;

-- Criar tabela
CREATE TABLE alunos(
	id_aluno INT NOT NULL, 
    nome VARCHAR(100) NOT NULL,
    nota DECIMAL (10, 2) NOT NULL,
    curso VARCHAR(100) NOT NULL
);

-- Inserir dados na tabela
INSERT INTO alunos(id_aluno, nome, nota, curso)
VALUES
	(1, 'Ana', 8.5, 'SQL'),
    (2, 'Breno', 7.5, 'Python'),
    (3, 'Carla', 5, 'Java');

SELECT * FROM alunos;

-- Atualizando dados da tabela
UPDATE alunos
SET nota = 8
WHERE id_aluno = 3;

-- Excluindo dados da tabela
DELETE FROM alunos
WHERE id_aluno = 2;