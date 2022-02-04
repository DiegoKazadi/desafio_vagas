-- teste
SELECT TOP 10 * 
    FROM [hrh-data].dbo.Vagas WITH(NOLOCK) 
WHERE Cod_vaga = 2323521


SELECT TOP 10 * 
    FROM [hrh-data].dbo.Candidatos WITH(NOLOCK)
WHERE Cod_cand = 29902235 OR Cod_cand = 344581


SELECT * 
    FROM [hrh-data].dbo.Candidatos WITH(NOLOCK)
WHERE  Cod_cand = 344581