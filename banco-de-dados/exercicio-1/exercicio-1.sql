CREATE TABLE cursos (
    id INTEGER PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL
);

CREATE TABLE alunos (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    curso_id INTEGER,
    CONSTRAINT fk_alunos_cursos
        FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

INSERT INTO cursos (id, nome_curso) VALUES
(1, 'Desenvolvimento Web'),
(2, 'Ciência de Dados'),
(3, 'Engenharia de Software');

INSERT INTO alunos (id, nome, email, curso_id) VALUES
(1, 'João Silva', 'joao@email.com', 1),
(2, 'Maria Oliveira', 'maria@email.com', 2),
(3, 'Pedro Santos', 'pedro@email.com', 1),
(4, 'Ana Costa', 'ana@email.com', 3);

SELECT * FROM alunos;
SELECT * FROM cursos;
