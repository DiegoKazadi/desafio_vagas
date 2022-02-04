-- criar tabela temporaria com base em outra SELECT INTO

SELECT TOP 10 * 
    INTO #temp_diego_vagas
    FROM VAGAS
ORDER BY 1 DESC

--TABELA TEMPORARIA
SELECT * FROM #temp_diego_vagas

SELECT CodCliente_vaga, count(*) as contagem
FROM #temp_diego_vagas
GROUP BY CodCliente_vaga

-- os candidatos e cidades
SELECT  
        cod_cand,
        CodCidade_cand,
        DescrPaisEstadoCidade_cidadeMer

        INTO #candidatos_cidades 

        FROM [hrh-data].dbo.candidatos WITH(NOLOCK)
            INNER JOIN [hrh-data].dbo.Cad_paises WITH(NOLOCK)
                ON Cod_pais = CodPais_cand
            INNER JOIN [hrh-data].dbo.Meridian_Cad_estados WITH(NOLOCK)
                ON Cod_estadoMer = CodUF_Cand
            INNER JOIN [hrh-data].dbo.Meridian_Cad_cidades WITH(NOLOCK)
                ON CodCidade_cand = Cod_cidadeMer
WHERE UltDtAtual_cand >= 2022-01-01

-- visualizar as tabelas
SELECT * FROM #candidatos_cidades
SELECT * FROM #temp_diego_vagas 
