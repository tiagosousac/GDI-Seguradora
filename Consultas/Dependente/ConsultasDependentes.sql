CREATE SEQUENCE sequencia_john
start with 1000
increment by 1000
minvalue 1000
maxvalue 9000
nocycle;

INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.777-11', sequencia_john.nextval, 'Guga', 'H', to_date('23/11/1998', 'dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.777-11', sequencia_john.nextval, 'Joseph', 'H', to_date('08/08/2003', 'dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.777-11', sequencia_john.nextval, 'Jotaro', 'H', to_date('23/11/1998', 'dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.777-11', sequencia_john.nextval, 'Jonathan', 'H', to_date('05/07/2003', 'dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.777-11', sequencia_john.nextval, 'Dio', 'H', to_date('01/10/1999', 'dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.777-11', sequencia_john.nextval, 'Ash', 'H', to_date('29/02/2004', 'dd/mm/yy'));
INSERT INTO dependente (cpf_cliente,numero_dependente,nome_dependente,sexo_dependente,data_nascimento_dependente) VALUES ('111.111.777-11', sequencia_john.nextval, 'Google', 'M', to_date('06/02/1995', 'dd/mm/yy'));

CREATE VIEW dependentes_de_john AS
SELECT nome_dependente, numero_dependente, sexo_dependente
FROM dependente
WHERE cpf_cliente = '111.111.777-11';

SELECT * 
FROM dependentes_de_john;
