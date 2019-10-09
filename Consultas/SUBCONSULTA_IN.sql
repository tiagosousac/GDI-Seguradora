SELECT cnpj_seguradora
FROM seguradora
WHERE cnpj_seguradora IN
    (SELECT cnpj_seguradora
     FROM endereco_seguradora
     WHERE pais_seguradora = 'BR');