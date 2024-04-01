DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
    aluno_id INTEGER,
    curso_id INTEGER,
    PRIMARY KEY (aluno_id, curso_id),

    FOREIGN KEY (aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE,

    FOREIGN KEY (curso_id)
    REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,3);

DELETE FROM aluno WHERE id = 1;

SELECT 
	aluno.nome as "Nome do Aluno",
    curso.nome as "Nome do Curso"
FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id
	
DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
   aluno_id INTEGER,
   curso_id INTEGER,
   PRIMARY KEY (aluno_id, curso_id),

   FOREIGN KEY (aluno_id)
   REFERENCES aluno (id)
   ON DELETE CASCADE
   ON  UPDATE CASCADE,

   FOREIGN KEY (curso_id)
   REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);

SELECT 
    aluno.id as aluno_id,
    aluno.nome as "Nome do Aluno",
    curso.id as "curso_id",
    curso.nome as "Nome do Curso"
FROM aluno
  	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id