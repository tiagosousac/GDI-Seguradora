-- Nome dos clientes com carros GM em ordem alfabética
select A.cpf_cliente, P.nome_pessoa
from automovel A, pessoa P
where A.marca = 'GM'
AND A.cpf_cliente = P.cpf_pessoa
order by P.nome_pessoa