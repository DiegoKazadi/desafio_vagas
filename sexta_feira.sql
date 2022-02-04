-- Tabelas relacionadas
SELECT TOP 10 *  FROM [hrh-data].dbo.Candidatos WITH(NOLOCK)
WHERE UltDtAtual_cand >= 2021-01-01

SELECT TOP 10 *  FROM [hrh-data].dbo.Vagas WITH(NOLOCK)
ORDER BY 1 DESC

SELECT TOP 10 *  FROM [hrh-data].dbo.Meridian_Cad_cidades WITH(NOLOCK)
SELECT TOP 10 *  FROM [hrh-data].dbo.Meridian_Cad_estados WITH(NOLOCK)
SELECT TOP 10 *  FROM [hrh-data].dbo.Cad_paises WITH(NOLOCK)


-- os cargos de candidatos que não tem vagas
SELECT  
        Cargo_vaga,
        DescrPaisEstadoCidade_cidadeMer,
        QtdePosicoes_vaga
        INTO #VagasFechadas

        FROM Vagas WITH(NOLOCK)
            INNER JOIN [hrh-data].dbo.Cad_paises WITH(NOLOCK)
                ON Cod_pais = CodPais_vaga
            INNER JOIN [hrh-data].dbo.Meridian_Cad_estados WITH(NOLOCK)
                ON Cod_estadoMer = CodUF_vaga
            INNER JOIN [hrh-data].dbo.Meridian_Cad_cidades WITH(NOLOCK)
                ON CodCidade_vaga = Cod_cidadeMer
        WHERE VeiculacaoSuspensa_vaga = 1
            AND DtInicioWeb_vaga <= GetDate()
            AND DtExpiracaoWeb_vaga >= GetDate() 
            AND (Tipo_vaga = 2 or (Tipo_vaga = 1 and QtdeRespCand_vaga < QtdeMaxResp_vaga))
ORDER BY Cod_vaga

SELECT * FROM #VagasFechadas 

-- os cargos que não tem candidatos
-- VagasAbertas
-- VagasAbertas (Que não tem candidatos)

SELECT
        COUNT(Cod_vaga) As Qtde_vagas,
        Cargo_vaga,
        DescrPaisEstadoCidade_cidadeMer
        --INTO #VagasAbertas 
        FROM  VAGAS
            LEFT JOIN [hrh-data].dbo.Meridian_Cad_cidades
                ON CodCidade_vaga = Cod_cidadeMer
            WHERE VeiculacaoSuspensa_vaga = 0
                AND DtInicioWeb_vaga <= GetDate()
                AND DtExpiracaoWeb_vaga >= GetDate() 
                AND (Tipo_vaga = 2 or (Tipo_vaga = 1 and QtdeRespCand_vaga < QtdeMaxResp_vaga))
GROUP BY Cargo_vaga, DescrPaisEstadoCidade_cidadeMer


DROP TABLE #VagasAbertas

SELECT * FROM #VagasAbertas