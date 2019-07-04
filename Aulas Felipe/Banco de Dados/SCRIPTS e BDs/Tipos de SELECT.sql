-- SELECTS que podem ser feitos no banco

-- Trazer todos os alunos que começam o nome com a letra R
SELECT nome, email
FROM aluno
WHERE nome LIKE 'R%';

-- Trazer quantos alunos estão cadastrados na tabela aluno
SELECT COUNT(ra) FROM aluno;

-- Realizar a junção de duas ou mais tabelas
-- Trazer todos os alunos que esão estudando algum curso
-- Obs: se não estiver, não aparecerá o nome
SELECT 
    aluno.nome as nome_aluno,
    curso.nome as nome_curso
FROM aluno
JOIN estuda
    ON aluno.ra = estuda.es_ra
JOIN curso
    ON curso.id_curso = estuda.es_curso ;