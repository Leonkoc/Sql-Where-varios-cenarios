SELECT 
    cliente,
    SUM(valor_do_orcamento) as total_orcado,
    setor_cliente
FROM forcamentos
    --             FILTROS
    --WHERE status = 'VENDIDO' -- estou mostrando só clientes que compraram, e fiz um groupy by para unir cliente e total orcado
    --WHERE status IN ('VENDIDO', 'EM NEGOCIAÇÃO')
    --WHERE NOT setor_cliente = 'BANCOS' -- total orçado por todos os setores menos bancos.
    --WHERE status = 'VENDIDO' OR status = 'EM NEGOCIAÇÃO'--MESma coisa de fazer com In
    --WHERE status = 'VENDIDO' AND setor_cliente = 'BANCOS'
    -- entre datas 
    --WHERE status = 'VENDIDO' AND data_cotacao BETWEEN '2020-07-01' AND '2020-07-31'
WHERE cliente LIKE '%Energia%' -- like 'Energia%' tem energia no cocmeço da frase -- '%Energia' no final da frase '%Energia%' no meio da frase
GROUP BY cliente
ORDER BY total_orcado DESC
LIMIT 100