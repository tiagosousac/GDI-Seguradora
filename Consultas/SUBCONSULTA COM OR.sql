SELECT nome_seguradora
FROM seguradora
WHERE cnpj_seguradora =
    (SELECT cnpj_seguradora
     FROM funcionario
     WHERE cpf_funcionario = '111.222.222-11' );