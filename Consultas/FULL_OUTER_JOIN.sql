SELECT * FROM cliente 
FULL OUTER JOIN funcionario
ON clientes.cpf_cliente=funcionario.cpf_funcionario;