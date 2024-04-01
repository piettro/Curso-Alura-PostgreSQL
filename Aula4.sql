CREATE TABLE curso (
    id INTEGER NOT NULL UNIQUE,
    nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');
INSERT INTO curso (id, nome) VALUES (3, 'CSS');

CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome)VALUES ('Diogo');
INSERT INTO aluno (nome)VALUES ('Vinícius');
INSERT INTO aluno (nome)VALUES ('Nico');

SELECT * FROM curso;
SELECT * FROM aluno;

CREATE TABLE aluno_curso (
    aluno_id INTEGER,
    curso_id INTEGER,
	
	PRIMARY KEY (aluno_id, curso_id),

	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id),

	FOREIGN KEY (curso_id)
	REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);

SELECT * FROM aluno_curso;

SELECT * FROM aluno JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id

SELECT 
	aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso ON curso.id = aluno_curso.curso_id
  
SELECT 
	aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
	LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	LEFT JOIN curso ON curso.id = aluno_curso.curso_id
	
SELECT 
	aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
	RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	RIGHT JOIN curso ON curso.id = aluno_curso.curso_id

SELECT 
	aluno.nome as "Nome do Aluno",
	curso.nome as "Nome do Curso"
FROM aluno
	FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	FULL JOIN curso ON curso.id = aluno_curso.curso_id

SELECT 
	aluno.nome as "Nome do Aluno",
	curso.nome as "Nome do Curso"
FROM aluno
	CROSS JOIN curso