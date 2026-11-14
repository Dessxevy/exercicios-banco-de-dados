-- 1. INNER JOIN
SELECT
    alunos.nome,
    alunos.email,
    cursos.nome_curso
FROM alunos
INNER JOIN cursos
    ON alunos.curso_id = cursos.id;

-- 2. WHERE
SELECT
    alunos.nome,
    alunos.email,
    cursos.nome_curso
FROM alunos
INNER JOIN cursos
    ON alunos.curso_id = cursos.id
WHERE cursos.nome_curso = 'Desenvolvimento Web';

-- 3. UPDATE
UPDATE alunos
SET curso_id = 3
WHERE nome = 'Maria Oliveira';

-- 4. SELECT
SELECT
    alunos.nome,
    cursos.nome_curso
FROM alunos
INNER JOIN cursos
    ON alunos.curso_id = cursos.id
WHERE alunos.nome = 'Maria Oliveira';

-- 5. LEFT JOIN
SELECT
    cursos.id,
    cursos.nome_curso
FROM cursos
LEFT JOIN alunos
    ON cursos.id = alunos.curso_id
WHERE alunos.id IS NULL;
