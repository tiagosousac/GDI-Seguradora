-- Nome dos clientes com carros GM em ordem alfabética
select A.cpf_cliente, P.nome_pessoa
from automovel A, cliente C, pessoa P
where A.marca = 'GM'
AND A.cpf_cliente = C.cpf_cliente
AND C.cpf_cliente = P.cpf_pessoa
order by P.nome_pessoa

-- Nome dos clientes com carros Pagani com INNER JOIN

select A.cpf_cliente, P.nome_pessoa
from automovel A
    INNER JOIN cliente C
        ON A.cpf_cliente = C.cpf_cliente
    INNER JOIN pessoa P
        ON C.cpf_cliente = P.cpf_pessoa
where A.marca = 'Pagani'
order by P.nome_pessoa