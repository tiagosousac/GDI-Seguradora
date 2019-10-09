-- Mostra as seguradoras cuja franquia somada dos seus clientes é maior que 3500 ou as seguradoras que tiveram a anuidade
-- somada dos clientes maior que 4000.

SELECT S.nome_seguradora, SUM(CS.franquia), SUM(CS.anuidade)
FROM seguradora S, cliente_seguradora CS
WHERE CS.cnpj_seguradora = S.cnpj_seguradora
GROUP BY S.nome_seguradora
HAVING SUM(CS.franquia) > 3500
UNION 
SELECT S.nome_seguradora, SUM(CS.franquia), SUM(CS.anuidade)
FROM seguradora S, cliente_seguradora CS
WHERE CS.cnpj_seguradora = S.cnpj_seguradora
GROUP BY S.nome_seguradora
HAVING SUM(CS.anuidade) > 4000;
