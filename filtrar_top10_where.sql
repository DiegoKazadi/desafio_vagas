-- Selecionar dados e filtrar (WHERE) dados; selecionar dados distintos; selecionar com top

-- tabela candidatos com todos campos  
SELECT TOP 10 *
    FROM [hrh-data].dbo.Candidatos WITH(NOLOCK)
WHERE UltDtAtual_cand >= 2021-01-01

-- tabela [cand-experiencia] onde nacionalidade da empresa brasileira
SELECT TOP 10 *
    FROM [hrh-data].dbo.[CAND-EXPERIENCIA] WITH(NOLOCK)
WHERE NacionalidadeEmp_exp = 'Brasil' 

-- tabela [cand-experiencia] com alguns campos
SELECT TOP 10 
        CodCand_exp,
        Empresa_exp,
        UltCargo_exp,
        Inic_exp,
        Fim_exp
        From [hrh-data].dbo.[CAND-EXPERIENCIA] WITH(NOLOCK)
WHERE Inic_exp <= GetDate()  

-- tabela [cand-regioes] com todos os campos
SELECT TOP 10 * 
    FROM [hrh-data].dbo.[CAND-REGIOES] WITH(NOLOCK)

-- tabela Meridian_cad_estados com todos os campos
SELECT TOP 10 * 
    FROM [hrh-data].dbo.Meridian_Cad_cidades WITH(NOLOCK) 

-- tabela Meridian_cad_estados com alguns campos
SELECT TOP 10 
    Cod_cidadeMer,
    Descr_cidadeMer,
    DescrPaisEstadoCidade_cidadeMer
    FROM [hrh-data].dbo.Meridian_Cad_cidades WITH(NOLOCK)    
WHERE  Descr_cidadeMer = 'Major Isidoro'
