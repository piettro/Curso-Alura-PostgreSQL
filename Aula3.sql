SELECT nome, idade, matriculado_em FROM aluno;
	
SELECT 
	nome AS "Nome do Aluno",
    idade,
    matriculado_em AS quando_se_matriculou
FROM aluno;

INSERT INTO aluno (nome) VALUES ('Vinícius Dias');
INSERT INTO aluno (nome) VALUES ('Nico Steppat');
INSERT INTO aluno (nome) VALUES ('João Roberto');
INSERT INTO aluno (nome) VALUES ('Diego');

SELECT * FROM aluno WHERE nome = 'Diogo';
 
SELECT * FROM aluno WHERE nome LIKE 'Di_go';
 
SELECT * FROM aluno WHERE nome LIKE 'D%';
 
SELECT * FROM aluno WHERE nome LIKE '% %';
 
SELECT * FROM aluno WHERE nome LIKE '%i%a%';

SELECT * FROM aluno WHERE cpf IS NULL;
 
SELECT * FROM aluno WHERE idade < 100;

SELECT * FROM aluno WHERE idade = 100;

SELECT * FROM aluno WHERE idade <> 36;

SELECT * FROM aluno WHERE idade >= 35;

SELECT * FROM aluno WHERE idade BETWEEN 10 AND 20;

SELECT * FROM aluno WHERE nome LIKE 'D%' AND cpf IS NOT NULL;
	
SELECT * FROM aluno WHERE nome LIKE 'Diogo' OR nome LIKE 'Rodrigo';
	
SELECT * FROM aluno WHERE nome LIKE 'Diogo' AND nome LIKE 'Nico%';
	
SELECT * FROM aluno WHERE nome LIKE 'Thiago' OR nome LIKE 'Miguel';