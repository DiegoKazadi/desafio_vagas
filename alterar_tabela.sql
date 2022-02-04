-- uso comando UPDATE e ALTER TABLE

-- criar as Tabelas
CREATE TABLE #Professor(
id_professor INT,
nome_professor NVARCHAR(255),
cpf_professor NVARCHAR(14),
disciplina NVARCHAR(30),
genero NVARCHAR(1)
)

CREATE TABLE #Aluno(
id_aluno INT,
nome_aluno NVARCHAR(255),
cpf_aluno NVARCHAR(14),
genero NVARCHAR(1)
)

CREATE TABLE #Disciplina(
id_disciplina INT,
nome_disciplina NVARCHAR(255),
)

-- Inserir dados

-- Tabela #Professor

INSERT INTO #Professor (id_professor, nome_professor, cpf_professor, disciplina, genero) VALUES (1, 'Carlos Kalongo', '777.111.222-77','Algebra I','M')
INSERT INTO #Professor (id_professor, nome_professor, cpf_professor, disciplina, genero) VALUES (2, 'Brunel Ngoyi', '111.222.333-01', 'Anatomia','M')
INSERT INTO #Professor (id_professor, nome_professor, cpf_professor, disciplina, genero) VALUES (3, 'Juliana Mbaxim', '602.000.151-02','Santé','')
INSERT INTO #Professor (id_professor, nome_professor, cpf_professor, disciplina, genero) VALUES (4, 'Armiliana Soares', '141.998.777-04','Anatomia','F')
INSERT INTO #Professor (id_professor, nome_professor, cpf_professor, disciplina, genero) VALUES (5, 'Pamela Nkunda', '111.222.333-05', 'Linguagem Programação','F')
INSERT INTO #Professor (id_professor, nome_professor, cpf_professor, disciplina, genero) VALUES (6, 'Yves Ilunag', '141.998.777-04','Informatica','F')

-- Tabela #Aluno

INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (1, 'Aliya Mitoga', '000.111.222-33','F')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (2, 'Eliya Matondo', '077.111.222-00','F')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (3, 'Esther Tshiela', '000.111.200-31','F')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (4, 'Aliya Mitogan', '120.151.222-32','F')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (5, 'Maximo','333.444.555-07','M')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (6, 'Carine Milolo', '111.222.333-08', 'M')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (7, 'Jacob Kalunda', '898.333.444-09', ' ')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (8, 'Ibuti Patrick', '333.444.555-10','M')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (9, 'Junior Mapumba', '565.555.666-11', 'M')
INSERT INTO #Aluno (id_aluno, nome_aluno, cpf_aluno, genero) VALUES (10, 'Carlos Alberot', '222.666.777-12', 'M')

-- Tabela #Disciplina

INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (001, 'Anatomia I')
INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (002, 'Anatomia II')
INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (003, 'Informatica I')
INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (004, 'Economia')
INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (005, 'Biologia')
INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (006, 'Fisica I')
INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (007, 'Fisica II')
INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (008, 'Calculo I')
INSERT INTO #Disciplina (id_disciplina, nome_disciplina) VALUES (009, 'Calculo II')

-- alteração Tabela #Professor adicionando mais colunas
-- pode ser na mesma linha usando a virgula ou de forma separada
ALTER TABLE #Professor
ADD cidade_professor NVARCHAR(30), estado_professor NVARCHAR(30)

-- forma separada
ALTER TABLE #Professor
ADD pais_professor NVARCHAR (40)

ALTER TABLE #Professor
ADD bairro_professor NVARCHAR (35)

select * from #Professor 

-- alteração Tabela #Aluno adicionando mais colunas
ALTER TABLE #Aluno
ADD cidade_aluno NVARCHAR(30), estado_aluno NVARCHAR(30), pais_aluno NVARCHAR (40), matricula_aluno NVARCHAR(15) 

SELECT * FROM #Aluno

-- UPDATE nas Tabelas, fazer atualização da tabela

-- tabela #Professor
UPDATE #Professor
    SET pais_professor = 'Estados Unidos', estado_professor = 'Kentucky' 
        WHERE disciplina = 'Informatica'

UPDATE #Professor
    SET pais_professor = 'France', estado_professor = 'Merceille', 
        cidade_professor = 'La Rochelle',  bairro_professor = '10 Arrondissement'
    WHERE disciplina = 'Anatomia' 

UPDATE #Professor
    SET pais_professor = 'RD Congo', cidade_professor = 'Kinshasa',
        estado_professor = 'Kinshasa', bairro_professor = 'Ngaliema'
    WHERE disciplina = 'Algebra I' 

UPDATE #Professor
    SET pais_professor = 'Brasil', cidade_professor = 'Campina Grande',
        estado_professor = 'Paraiba', bairro_professor = 'Bodo congo'
    WHERE disciplina = 'Santé' OR genero = 'F'
        OR disciplina = 'Linguagem Programação'

-- visualizar atualização da tabela
SELECT * FROM #Professor

-- Tabela #Aluno
UPDATE #Aluno
SET cidade_aluno = 'Campina Grande'
WHERE genero = 'M' 

UPDATE #Aluno
SET estado_aluno = 'Paraíba'
WHERE genero = 'M' 

UPDATE #Aluno
SET pais_aluno = 'Brasil'
WHERE genero = 'M' 

UPDATE #Aluno
    SET pais_aluno = 'RD Congo', estado_aluno = 'Kinshasa',
        cidade_aluno = 'Kinshasa'
WHERE genero = 'F'

UPDATE #Aluno
    SET pais_aluno = 'RD Congo', estado_aluno = 'Kinshasa',
        cidade_aluno = 'Kinshasa', matricula_aluno = '1236-6589'
WHERE nome_aluno = 'Jacob Kalunda'

select * from #Disciplina
select * from #Professor
SELECT * FROM #Aluno
