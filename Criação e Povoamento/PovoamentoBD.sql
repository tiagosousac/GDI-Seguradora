-- pessoas

INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Juliano','111.111.111-11',to_date('02/03/1987','dd/mm/yyyy'), 'M');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Adriano','111.111.222-11',to_date('11/10/1998','dd/mm/yyyy'), 'M');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Julia','111.111.333-11',to_date('01/02/1999','dd/mm/yyyy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Ingrid','111.111.444-11',to_date('21/10/1996','dd/mm/yyyy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Katia','111.111.555-11',to_date('20/01/1989','dd/mm/yyyy'), 'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Clotilde','111.111.666-11',to_date('19/03/1992','dd/mm/yyyy'), 'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('John','111.111.777-11',to_date('10/12/1969','dd/mm/yyyy'),'M');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Eduardo','111.111.888-11',to_date('19/03/1992','dd/mm/yyyy'), 'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Joana','111.111.999-11',to_date('01/06/1990','dd/mm/yyyy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Eduarda','111.222.111-11',to_date('03/07/1995','dd/mm/yyyy'), 'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Gertru','111.222.222-11', to_date('15/01/2001', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Dolores','111.222.333-11', to_date('14/01/1995', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Dora','111.222.444-11', to_date('13/02/1980', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Castor','111.222.555-11', to_date('12/02/1976', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Anjol','111.222.666-11', to_date('11/03/1999', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Rui','111.222.777-11', to_date('10/03/1998', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Youda','111.222.888-11', to_date('09/04/1989', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Adriana','111.222.999-11', to_date('08/04/1979', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Alexa','111.333.111-11', to_date('07/05/1979', 'dd/mm/yy'),'F');
INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Giord','111.333.222-11', to_date('06/05/1980', 'dd/mm/yy'),'F');

-- endereco-pessoa
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.111-11','Rua Fausto',75,'perto da churrasqueira','Estudios Globo','PROJAC',52990235,'BR','Ta pegando Fogo');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.222-11','Rua Drauzio Varella',90,'perto da resposta','Recife','Pernambuco',52060520,'BR','As vezes sim');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.333-11','Rua Irineu',68,'Voce nao sabe','Estudios Globo','PROJAC', 52990235,'BR','Nem eu');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.444-11','Rua Fausto',73,'perto da churrasqueira','Estudios Globo','PROJAC', 52990235,'BR','Ta pegando Fogo');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.555-11','Rua Drauzio Varella',120,'perto da resposta','Recife','Pernambuco',52060520,'BR','As vezes sim');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.666-11','Rua Chiquinha',75,'Vila do Chaves','Cidade do méxico','Estado do presunto',35033500,'VC','Pátio da frente');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.777-11','Rua Chiquinha',66,'Vila do Chaves','Cidade do méxico','Estado do presunto',35033500, 'VC','Pátio da frente');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.888-11','Rua Fausto',51,'perto da churrasqueira','Estudios Globo','PROJAC', 52990235,'BR','Ta pegando Fogo');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.111.999-11','Rua Chiquinha',84,'Vila do Chaves','Cidade do méxico','Estado do presunto',35033500,'VC','Pátio da frente');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.111-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.222-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.333-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.444-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.555-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.666-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.777-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.888-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.222.999-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.333.111-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
INSERT INTO endereco_pessoa (cpf_pessoa, rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('111.333.222-11','Rua Domingao', 69, NULL, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');

-- sobrando (desatualizado)
--INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa,rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('Germana','111.333.333-11', to_date('05/06/1995', 'dd/mm/yy'),'F'  ,'Rua Domingao',  69, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
--INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa,rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('Maria',  '111.333.444-11', to_date('04/06/1998', 'dd/mm/yy'),'F'  ,'Rua Domingao',  69, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
--INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa,rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('Martha Bulbasaur','111.333.555-11', to_date('03/07/1995', 'dd/mm/yy'),'F'  ,'Rua Domingao',  69, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
--INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa,rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('João Wobbuffet',  '111.333.666-11', to_date('02/07/1993', 'dd/mm/yy'),'F'  ,'Rua Domingao',  69, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');
--INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa,rua_pessoa,numero_pessoa,complemento_pessoa,cidade_pessoa,estado_pessoa,cep_pessoa,pais_pessoa,bairro_pessoa) VALUES ('Martha', '111.333.777-11', to_date('01/08/1993', 'dd/mm/yy'),'F'  ,'Rua Domingao',  69, 'Maragogi', 'Alagoas', 502320165,  'BR','PROJAC');

-- clientes
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.111-11', 1111, to_date('15/01/2001', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.222-11', 1111, to_date('14/01/2002', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.333-11', 1111, to_date('13/02/2003', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.444-11', 1111, to_date('12/02/2005', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.555-11', 1111, to_date('11/03/2006', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.666-11', 1111, to_date('10/03/2007', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.777-11', 1111, to_date('09/04/2008', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.888-11', 1111, to_date('08/04/2009', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.111.999-11', 1111, to_date('07/05/2010', 'dd/mm/yy'));
INSERT INTO cliente (cpf_cliente, numero_cliente, data_associação_cliente) VALUES ('111.222.111-11', 1111, to_date('06/05/2011', 'dd/mm/yy'));

-- seguradoras
INSERT INTO seguradora (cnpj_seguradora, nome_seguradora) VALUES ('00.555.111/3333-00', 'Seguradora Pane Certa');
INSERT INTO seguradora (cnpj_seguradora, nome_seguradora) VALUES ('00.444.222/4444-01', 'Seguradora Queda Dura');
INSERT INTO seguradora (cnpj_seguradora, nome_seguradora) VALUES ('00.333.333/5555-02', 'Seguradora Carro Seguro');
INSERT INTO seguradora (cnpj_seguradora, nome_seguradora) VALUES ('00.222.444/6666-03', 'Seguradora Seu Automóvel');
INSERT INTO seguradora (cnpj_seguradora, nome_seguradora) VALUES ('00.111.555/7777-04', 'Seguradora Futuro Certo');

-- endereco_seguradora
INSERT INTO endereco_seguradora (cnpj_seguradora, rua_seguradora, numero_seguradora, complemento_seguradora, cidade_seguradora, estado_seguradora, cep_seguradora, pais_seguradora, bairro_seguradora) VALUES ('00.555.111/3333-00', 'Rua Paes Cabral',111, NULL, 'Recife', 'PE', 50530111, 'BR', 'Boa Viagem');
INSERT INTO endereco_seguradora (cnpj_seguradora, rua_seguradora, numero_seguradora, complemento_seguradora, cidade_seguradora, estado_seguradora, cep_seguradora, pais_seguradora, bairro_seguradora) VALUES ('00.444.222/4444-01', 'Rua Firmino de Barros',222, NULL, 'Olinda', 'PE', 50630112, 'BR', 'Rio Doce');
INSERT INTO endereco_seguradora (cnpj_seguradora, rua_seguradora, numero_seguradora, complemento_seguradora, cidade_seguradora, estado_seguradora, cep_seguradora, pais_seguradora, bairro_seguradora) VALUES ('00.333.333/5555-02', 'Rua Alfredo Becker',333, NULL, 'Jabotão', 'PE', 50730123, 'BR', 'Piedade');
INSERT INTO endereco_seguradora (cnpj_seguradora, rua_seguradora, numero_seguradora, complemento_seguradora, cidade_seguradora, estado_seguradora, cep_seguradora, pais_seguradora, bairro_seguradora) VALUES ('00.222.444/6666-03', 'Avenida Recife',444, NULL, 'Jabotão', 'PE', 50830134, 'BR', 'Candeias');
INSERT INTO endereco_seguradora (cnpj_seguradora, rua_seguradora, numero_seguradora, complemento_seguradora, cidade_seguradora, estado_seguradora, cep_seguradora, pais_seguradora, bairro_seguradora) VALUES ('00.111.555/7777-04', 'Rua Arquiteto Luiz Nunes',555, NULL, 'Recife', 'PE', 50930145, 'BR', 'Ipsep');

-- funcionarios
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.222.222-11', 2500, 11111111111, '00.555.111/3333-00', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.222.333-11', 2500, 11111111111, '00.555.111/3333-00', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.222.444-11', 2500, 22222222222, '00.444.222/4444-01', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.222.555-11', 2500, 22222222222, '00.444.222/4444-01', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.222.666-11', 2500, 33333333333, '00.333.333/5555-02', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.222.777-11', 2500, 33333333333, '00.333.333/5555-02', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.222.888-11', 2500, 44444444444, '00.222.444/6666-03', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.222.999-11', 2500, 44444444444, '00.222.444/6666-03', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.333.111-11', 2500, 55555555555, '00.111.555/7777-04', NULL);
INSERT INTO funcionario (cpf_funcionario, salario_funcionario, pis_funcionario, cnpj_seguradora, cpf_supervisor) VALUES ('111.333.222-11', 2500, 55555555555, '00.111.555/7777-04', NULL);

-- dependentes
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.111-11',0000,'Maria Antoniet','M',to_date('18/10/1992','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.111-11',0777,'Hugo Charizard','H',to_date('22/05/1999','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.333-11',0101,'Pedro Pedroca','H',to_date('12/03/1995','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.222-11',0001,'Joao Bob','H',to_date('13/03/1985','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.222-11',0002,'Julia Santos','M',to_date('19/02/1990','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.555-11',2222,'Paula Borba','M',to_date('29/01/1991','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.444-11',2222,'Lucas Costa','H',to_date('30/12/1991','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.666-11',1111,'Gabriela Ramos','M',to_date('02/11/1996','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.666-11',2222,'Clara Pedrosa','M',to_date('05/08/1994','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.666-11',3333,'Thiago Souza','H',to_date('09/03/1993','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.777-11',1234,'Vinicius Queiroz','H',to_date('27/03/1993','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.888-11',4321,'Marco Soares','H',to_date('24/04/1990','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.999-11',1111,'Giovana Meireles','M',to_date('12/07/1989','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.999-11',2222,'Joao Barro','H',to_date('09/04/1988','dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.999-11',3333,'Luana Queiroga','M',to_date('15/10/1990','dd/mm/yy'));

-- telefone-seguradora
INSERT INTO telefone_seguradora (cnpj_seguradora,DDD_seguradora,numero_telefone_seguradora) VALUES ('00.555.111/3333-00',081,'1122-3344');
INSERT INTO telefone_seguradora (cnpj_seguradora,DDD_seguradora,numero_telefone_seguradora) VALUES ('00.444.222/4444-01',011,'5566-7788');
INSERT INTO telefone_seguradora (cnpj_seguradora,DDD_seguradora,numero_telefone_seguradora) VALUES ('00.333.333/5555-02',021,'9900-1122');
INSERT INTO telefone_seguradora (cnpj_seguradora,DDD_seguradora,numero_telefone_seguradora) VALUES ('00.222.444/6666-03',081,'3344-5566');
INSERT INTO telefone_seguradora (cnpj_seguradora,DDD_seguradora,numero_telefone_seguradora) VALUES ('00.111.555/7777-04',011,'7788-9900');

-- telefone-pessoa
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.111.111-11', 081, '99586-7862');
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.111.111-11', 081, '98326-8471');
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.111.333-11', 061, '99818-5484');
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.111.444-11', 021, '98498-5684');
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.111.999-11', 345, '555-896812');
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.111.777-11', 988, '68498-9684');
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.222.111-11', 081, '12345-6789');
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.111.555-11', 081, '98182-3854');
INSERT INTO telefone_pessoa (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa) VALUES ('111.111.666-11', 021, '98880-4300');

-- automovel
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (32492185702, 'MTW5449', 'Onix', 'GM', '111.111.111-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (14964157954, 'JBL0947', 'KA', 'Ford', '111.111.222-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (17894674540, 'LZT1146', 'HB20', 'Hyundai', '111.111.333-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (27137288359, 'MJA7440', 'Prisma', 'GM', '111.111.444-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (48329216659, 'MUA6044', 'Kwid', 'Renault', '111.111.555-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (17893434104, 'LPQ1809', 'Gol', 'Volkswagen', '111.111.666-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (13419152477, 'MUZ8655', 'Strada', 'Fiat', '111.111.777-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (57762423982, 'KDX6765', 'Polo', 'Volkswagen', '111.111.888-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (53425374281, 'HKB5746', 'Renegade', 'Jeep', '111.111.999-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (46517698108, 'JJU7873', 'Argo', 'Fiat', '111.111.111-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (31971249521, 'KCO5066', 'Toro', 'Fiat', '111.111.222-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (34688362951, 'NEO7245', 'Sandero', 'Renault', '111.111.333-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (11219653349, 'HVS4702', 'Creta', 'Hyundai', '111.111.444-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (21492654515, 'LMS7347', 'Onix', 'GM', '111.111.555-11');
INSERT INTO automovel (renavam, placa, modelo, marca, cpf_cliente) VALUES (31998473660, 'AMG0158', 'Huayra', 'Pagani', '111.111.111-11');

--casualidade
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (1653,to_date('25/12/2018', 'dd/mm/yy'), 'G');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (2353,to_date('09/01/2016', 'dd/mm/yy'), 'L');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (5897,to_date('18/11/2015', 'dd/mm/yy'), 'M');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (8852,to_date('23/06/2018', 'dd/mm/yy'), 'L');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (1117,to_date('01/01/2019', 'dd/mm/yy'), 'L');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (3492,to_date('14/08/2016', 'dd/mm/yy'), 'R');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (9687,to_date('15/07/2009', 'dd/mm/yy'), 'M');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (1385,to_date('22/11/2011', 'dd/mm/yy'), 'L');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (9284,to_date('30/01/2019', 'dd/mm/yy'), 'G');
INSERT INTO casualidade (codigo_acidente, data_acidente, tipo_acidente) VALUES (3818,to_date('02/11/2010', 'dd/mm/yy'), 'R');

-- cobre
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (1653, '00.555.111/3333-00', 31998473660, '111.111.111-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (2353, '00.444.222/4444-01', 21492654515, '111.111.555-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (5897, '00.333.333/5555-02', 11219653349, '111.111.444-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (8852, '00.222.444/6666-03', 34688362951, '111.111.333-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (1117, '00.111.555/7777-04', 31971249521, '111.111.222-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (3492, '00.555.111/3333-00', 46517698108, '111.111.111-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (9687, '00.444.222/4444-01', 53425374281, '111.111.999-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (1385, '00.333.333/5555-02', 57762423982, '111.111.888-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (9284, '00.222.444/6666-03', 13419152477, '111.111.777-11');
INSERT INTO cobre (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente) VALUES (3818, '00.111.555/7777-04', 17893434104, '111.111.666-11');

-- cliente_seguradora
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.555.111/3333-00', '111.111.111-11', 1300, 750, A);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.555.111/3333-00', '111.111.222-11', 1250, 850, A);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.555.111/3333-00', '111.111.333-11', 950, 999, B);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.444.222/4444-01', '111.111.444-11', 1000, 1200, B);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.444.222/4444-01', '111.111.555-11', 1500, 1000, B);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.444.222/4444-01', '111.111.666-11', 1770, 1500, C);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.333.333/5555-02', '111.111.777-11', 2000, 1750, D);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.222.444/6666-03', '111.111.888-11', 2200, 1900, D);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.222.444/6666-03', '111.111.999-11', 2500, 1900, D);
INSERT INTO cliente_seguradora (cnpj_seguradora, cpf_cliente, data_contratacao, anuidade, franquia, cobertura) VALUES ('00.111.555/7777-04', '111.222.111-11', 3333, 2500, E);