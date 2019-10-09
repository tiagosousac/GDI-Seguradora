SELECT nome_seguradora
FROM seguradora
WHERE cnpj_seguradora = ALL 
    (SELECT cnpj_seguradora 
    FROM endereco_seguradora 
    WHERE estado_seguradora = 'PE');