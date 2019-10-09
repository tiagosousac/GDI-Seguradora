SELECT cpf_funcionario
FROM funcionario
WHERE salario_funcionario >= ANY
    (SELECT salario_funcionario
     FROM funcionario
     GROUP BY salario_funcionario);