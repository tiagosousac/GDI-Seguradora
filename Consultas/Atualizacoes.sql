-- ### ATUALIZAÇÃO PESSOA ###
UPDATE pessoa
    SET nome_pessoa = 'João',
	sexo_pessoa = 'M',
	data_nascimento_pessoa = to_date('03/02/1998','dd/mm/yyyy')
    WHERE cpf_pessoa = '111.111.999-11'

UPDATE pessoa 
   SET nome_pesssoa = 'João'
   WHERE cpf_pessoa = '111.111.999-11'

UPDATE pessoa 
   SET sexo_pessoa = 'M'
   WHERE cpf_pessoa = '111.111.999-11'

UPDATE pessoa
   SET data_nascimento_pessoa = to_date('03/02/1998','dd/mm/yyyy')
   WHERE cpf_pessoa = '111.111.999-11'

-- ### FIM ATUALIZACAO PESSOA ###

-- atualização do nome da seguradora
UPDATE seguradora
   SET nome_seguradora = 'Seguradora Queda Dura'
   WHERE cnpj_seguradora = '00.555.111/3333-00'

-- com relação a tabela cliente, temos que o CPF do cliente não pode ser alterado, juntamente com o número do cliente que é gerado toda vez que um novo cliente é criado e a data de associação do cliente não pode ser alterada também.

-- o mesmo ocorre com o carro, visto que uma pequena alteração poderia levar a problemas com o DETRAN ou outro orgão de fiscalização

-- com a possibilidade de alterar a casualidade teriamos o problema de potenciais fraudes e todos as colunas da tabela são concatenadas para geração da chave primária da mesma.

-- atualização do telefone de contato
UPDATE telefone_pessoa
    SET num_telefone = '988819765'
	DDD_pessoa = 081
    WHERE pessoa = '111.111.111-11'

-- atualização do endereço da pessoa
UPDATE endereco_pessoa
    SET	numero_pessoa = '73',
    WHERE cpf_pessoa = '111.111.333-11'

UPDATE dependente
    SET nome_dependente = 'Mario',
	sexo_dependente = 'H',
	data_nascimento_dependente = to_date('02/03/1995','dd/mm/yyyy')
    WHERE cpf_cliente = '111.111.111-11'

UPDATE funcionario
    SET salario_funcionario = 3500,
	pis_funcionario = 22222222222
	cnpj_seguradora = '00.555.111/3333-00',
	cpf_supervisor = '111.222.333-11'
    WHERE cpf_funcionario = '111.222.222-11'

UPDATE funcionario
    SET cpf_supervisor = '111.222.555-11'
    WHERE cpf_funcionario = '111.222.222-11'

UPDATE cobre
    SET codigo_acidente = 8852
    WHERE codigo_acidente = 1653
    AND cnpj_seguradora = '00.555.111/3333-00'
    AND renavam = 31998473660
    AND cpf_cliente = '111.111.111-11'

UPDATE telefone_seguradora
    SET DDD_seguradora = 081,
	numero_telefone_seguradora = '5566-7788'
    WHERE cnpj_seguradora = '00.555.111/3333-00'
    AND DDD_seguradora = 081
    AND telefone_seguradora = '1122-3344'

-- atualização da cobrança do cliente
UPDATE cliente_seguradora
    SET cnpj_seguradora = '00.444.222/4444-01',
	cpf_cliente = '111.111.111-11',
	data_contratacao = to_date('10/10/2019','dd/mm/yyyy'),
	anuidade = 1000,
	franquia = 1200,
	cobertura = 'B'
    WHERE cnpj_seguradora = '00.555.111/3333-00'
    AND cpf_cliente = '111.111.111-11'

UPDATE cliente_seguradora
    SET anuidade = 1250,
	franquia = 850,
	cobertura = 'A'
    WHERE cpf_cliente = '111.111.111-11'
    AND	cnpj_seguradora = '00.555.111/3333-00'

UPDATE endereco_pessoa
    SET cep_pessoa = '35033500',
	numero_pessoa = '73',
	complemento_pessoa = 'Vila do Chaves',
	rua_pessoa = 'Rua Chiquinha',
	cidade_pessoa = 'Cidade do méxico',
	estado_pessoa = 'Estado do presunto',
	pais_pessoa = 'VC',
	bairro_pessoa = 'Pátio da frente'
    WHERE cpf_pessoa = '111.111.333-11'


UPDATE endereco_pessoa
    SET	numero_pessoa = '73'
    WHERE cpf_pessoa = '111.111.333-11'

-- atualização do endereço da seguradora
UPDATE endereco_seguradora
    SET rua_seguradora = 'Rua Firmino de Barros',
	cep_seguradora = '58630112',
	numero_seguradora = 222,
	complemento_seguradora = NULL,
	cidade_seguradora = 'Olinda',
	estado_seguradora = 'PE',
	pais_seguradora = 'BR',
	bairro_seguradora = 'Rio Doce'
    WHERE cnpj_seguradora = '00.555.111/3333-00'

UPDATE endereco_seguradora
    SET numero_seguradora = 222
    WHERE cnpj_seguradora = '00.555.111/3333-00'

