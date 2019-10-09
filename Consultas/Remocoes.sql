-- remoção de uma pessoa
DELETE FROM pessoa
    WHERE cpf_pessoa = '111.111.111-11';

-- remoção de uma seguradora
DELETE FROM seguradora
    WHERE cnpj_seguradora = '00.555.11/3333-00';

-- remoção de um cliente
DELETE FROM cliente
    WHERE cpf_cliente = '111.111.111-11';

-- remoção de um automóvel utilizando o Renavam
DELETE FROM automovel
    WHERE renavam = 32492185702;

-- remoção de todos os automóveis de um cliente
DELETE FROM automovel
    WHERE cpf_cliente = '111.111.111-11';

-- remoção de casualidade
DELETE FROM casualidade
    WHERE codigo_acidente = 1653;

-- remoção de telefone de uma pessoa
DELETE FROM telefone_pessoa
    WHERE cpf_pessoa = '111.111.111-11';

-- remoção de um dependente específico
DELETE FROM dependente
    WHERE cpf_cliente= '111.111.111-11'
    AND numero_dependente = 1;

-- remoção de todos os dependentes de um responsável
DELETE FROM dependente
    WHERE cpf_cliente = '111.111.111-11';

-- remoção de funcionario
DELETE FROM funcionario
    WHERE cpf_funcionario = '111.222.222-11';

-- remoção de um funcionário, não necessáriamente da pessoa que representa esse funcionário
DELETE FROM funcionario
    WHERE cpf_funcionario = '111.111.111-11';

-- remoção de cobertura
DELETE FROM cobre
    WHERE codigo_acidente = 1653 
    AND cnpj_seguradora = '00.555.111/3333-00'
    AND renavam = 31998473660
    AND cpf_cliente = '111.111.111-11';

-- remoção de telefone da seguradora
DELETE FROM telefone_seguradora
    WHERE cnpj_seguradora = '00.555.111/3333-00'
    AND DDD_seguradora = 081
    AND numero_telefone_seguradora = '1122-3344';

-- remoção da conexão cliente seguradora
DELETE FROM cliente_seguradora
    WHERE cnpj_seguradora = '00.555.111/3333-00'
    AND cpf_cliente = '111.111.111-11';

-- remoção do endereço do cliente
DELETE FROM endereco_pessoa
    WHERE cpf_pessoa = '111.111.111-11'
    AND cep_pessoa = 52990235;

-- remoção do endereço da seguradora
DELETE FROM endereco_seguradora
    WHERE cnpj_seguradora = '00.555.111/3333-00'
    AND cep_seguradora = 50530111;
