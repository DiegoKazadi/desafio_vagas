-- Agrupar dados (soma, contagem, média, mediana): group by
CREATE TABLE #Estudantes(
matricula_estudante int,
nome_estudante nvarchar(255),
idade_estudante int,
sexo_estudante nvarchar(1),
);

select * from #Estudantes

CREATE TABLE #Cursos(
Cod_curso int,
Nome_curso nvarchar(255)
)

select * from #Cursos 

CREATE TABLE #Departamento(
cod_depart int,
nome_depart nvarchar(255),
predio nvarchar(25)
)
select * from #departamento

CREATE TABLE #Disciplina(
cod_discplina int,
nome_disciplina nvarchar(25),
cre int
)

CREATE TABLE #Professor(
id_professor int,
cpf nvarchar(11),
nome_professor nvarchar(255),
contato int
)

-- inserir dados de testes
--Tabela Estudantes

INSERT INTO #Estudantes(matricula_estudante , nome_estudante, idade_estudante, sexo_estudante) VALUES (1, 'Diego Kazadi', 35, 'M');
INSERT INTO #Estudantes(matricula_estudante, nome_estudante, idade_estudante, sexo_estudante) VALUES (2, 'Huguet Kalwuandimio', 30,'M');
INSERT INTO #Estudantes(matricula_estudante , nome_estudante, idade_estudante, sexo_estudante) VALUES (3, 'Francis Kalu', 32, 'M');
INSERT INTO #Estudantes(matricula_estudante , nome_estudante, idade_estudante, sexo_estudante) VALUES (4, 'Esther Mulenga', 20, 'F');
INSERT INTO #Estudantes(matricula_estudante, nome_estudante, idade_estudante, sexo_estudante) VALUES (5, 'Armiliana Soares', 31, 'F');
INSERT INTO #Estudantes(matricula_estudante, nome_estudante, idade_estudante, sexo_estudante) VALUES (6, 'Armiliano Soares', 31, 'F');
INSERT INTO #Estudantes(matricula_estudante, nome_estudante, idade_estudante, sexo_estudante) VALUES (7, 'Luiz Soares', 32, 'M');
INSERT INTO #Estudantes(matricula_estudante, nome_estudante, idade_estudante, sexo_estudante) VALUES (8, 'LuckMan', 20, 'M')

SELECT * FROM #ESTUDANTES

--Tabela Cursos
INSERT INTO #Cursos(Cod_curso, Nome_curso ) VALUES (1, 'Sistema de Informação');
INSERT INTO #Cursos(Cod_curso, Nome_curso ) VALUES (2, 'Farmacia');
INSERT INTO #Cursos(Cod_curso, Nome_curso ) VALUES (3, 'Geografia');
INSERT INTO #Cursos(Cod_curso, Nome_curso ) VALUES (4, 'Eng Civil');
INSERT INTO #Cursos(Cod_curso, Nome_curso ) VALUES (5, 'Computação')

--Tabela Departamento
INSERT INTO #Departamento(cod_depart,nome_depart, predio) VALUES (1, 'Ciência Tecnologia', 5);
INSERT INTO #Departamento(cod_depart,nome_depart, predio) VALUES (2, 'Medicina', 6);
INSERT INTO #Departamento(cod_depart,nome_depart, predio) VALUES (3, 'Ciências Humanas', 9);
INSERT INTO #Departamento(cod_depart,nome_depart, predio) VALUES (4, 'Ciências Biológicas', 8);
INSERT INTO #Departamento(cod_depart,nome_depart, predio) VALUES (5, 'Ciências Sociais Aplicadas', 2)

-- Tabela Professor
INSERT INTO #Professor(id_professor, cpf, nome_professor) VALUES (102, '001.556.25', 'Carlos LUMU' );
INSERT INTO #Professor(id_professor, cpf, nome_professor) VALUES (132, '111.446.26', 'Jonas DIEMU' );
INSERT INTO #Professor(id_professor, cpf, nome_professor) VALUES (125, '100.669.26', 'Luck TAMBWE' );
INSERT INTO #Professor(id_professor, cpf, nome_professor) VALUES (142, '181.886.96', 'Manix MANIONGA' );
INSERT INTO #Professor(id_professor, cpf, nome_professor) VALUES (163, '213.696.57', 'Jacob KALUNDA' );
INSERT INTO #Professor(id_professor, cpf, nome_professor) VALUES (135, '111.666.55', 'Yves ILUNGA' )

-- Tabela Disciplina
INSERT INTO #Disciplina(cod_discplina, nome_disciplina, cre) VALUES (10, 'Introdução a informatica', 9);
INSERT INTO #Disciplina(cod_discplina, nome_disciplina, cre) VALUES (21, 'Banco de Dados', 9);
INSERT INTO #Disciplina(cod_discplina, nome_disciplina, cre) VALUES (31, 'Linguagem de Programação', 9);
INSERT INTO #Disciplina(cod_discplina, nome_disciplina, cre) VALUES (12, 'Laboratório', 7);
INSERT INTO #Disciplina(cod_discplina, nome_disciplina, cre) VALUES (16, 'Sistema distruibido', 8)


SELECT  Nome_curso, COUNT(*) AS Qtde_cursos
    FROM #Cursos as Qtde_curso
GROUP BY Nome_curso

SELECT  idade_estudante, COUNT(*) AS QtdeEstudantesPoridade
    FROM #Estudantes 
    WHERE idade_estudante = 35
GROUP BY idade_estudante


SELECT  idade_estudante, COUNT(*) AS QtdeEstudantesPoridade
    FROM #Estudantes 
    --WHERE idade_estudante = 35
GROUP BY idade_estudante

SELECT  max(idade_estudante) AS idade_maxima, nome_estudante
    FROM #Estudantes 
GROUP BY nome_estudante

SELECT  min(idade_estudante) AS idade_minina, sexo_estudante, nome_estudante
    FROM #Estudantes 
GROUP BY nome_estudante, sexo_estudante, nome_estudante

SELECT  idade_estudante, COUNT(*) AS QtdeEstudantesPoridade, sum(idade_estudante) AS soma_idade
    FROM  #Estudantes 
GROUP BY idade_estudante

SELECT  avg(idade_estudante) AS media_idade FROM  #Estudantes 

SELECT * from #Estudantes
DROP TABLE #Estudantes