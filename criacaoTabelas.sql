DROP TABLE endereco_pessoa;
DROP TABLE endereco_seguradora;
DROP TABLE cliente_seguradora;
DROP TABLE telefone_seguradora;
DROP TABLE cobre;
DROP TABLE funcionario;
DROP TABLE dependente;
DROP TABLE telefone_pessoa;
DROP TABLE casualidade;
DROP TABLE automovel;
DROP TABLE cliente;
DROP TABLE seguradora;
DROP TABLE pessoa;
 
CREATE TABLE pessoa (
    cpf_pessoa VARCHAR2(14),
    nome_pessoa VARCHAR2(30) NOT NULL,
    data_nascimento_pessoa DATE NOT NULL,
    sexo_pessoa CHAR(1) CHECK (sexo_pessoa IN ('M', 'F')),
    CONSTRAINT pessoa_pk PRIMARY KEY (cpf_pessoa)
);
 
CREATE TABLE seguradora (
   cnpj_seguradora VARCHAR2(18),
   nome_seguradora VARCHAR2(30) NOT NULL,
   CONSTRAINT seguradora_pk PRIMARY KEY (cnpj_seguradora)
);
 
CREATE TABLE cliente (
    cpf_cliente VARCHAR2(14),
    numero_cliente VARCHAR2(50) NOT NULL,
    data_associação_cliente DATE NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (cpf_cliente),
    CONSTRAINT cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES pessoa (cpf_pessoa)
);
 
CREATE TABLE automovel (
   renavam NUMBER,
   placa VARCHAR2(7),
   modelo VARCHAR2(20),
   marca VARCHAR2(20),
   cpf_cliente VARCHAR2(14),
   CONSTRAINT automovel_pk PRIMARY KEY (renavam),
   CONSTRAINT automovel_cpf_dono_fk FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf_cliente)
);
 
CREATE TABLE casualidade (
   codigo_acidente NUMBER,
   data_acidente DATE NOT NULL,
   tipo_acidente CHAR(1) NOT NULL,
   CONSTRAINT codigo_acidente_pk PRIMARY KEY(codigo_acidente)
);
 
CREATE TABLE telefone_pessoa (
    cpf_pessoa VARCHAR2(14) NOT NULL,
    DDD_pessoa NUMBER(3) NOT NULL,
    numero_telefone_pessoa VARCHAR2(10) NOT NULL,
    CONSTRAINT telefone_pessoa_pk PRIMARY KEY (cpf_pessoa, DDD_pessoa, numero_telefone_pessoa),
    CONSTRAINT telefone_pessoa_fk FOREIGN KEY (cpf_pessoa) REFERENCES pessoa (cpf_pessoa)
);
 
CREATE TABLE dependente (
    cpf_cliente VARCHAR2(14),
    numero_dependente NUMBER NOT NULL,
    nome_dependente VARCHAR2(30) NOT NULL,
    sexo_dependente CHAR(1),
    data_nascimento_dependente DATE NOT NULL,
    CONSTRAINT dependente PRIMARY KEY (cpf_cliente, numero_dependente),
    CONSTRAINT dependente_fk FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf_cliente)
);
 
CREATE TABLE funcionario (
   cpf_funcionario VARCHAR2(14),
   salario_funcionario NUMBER NOT NULL,
   pis_funcionario NUMBER NOT NULL,
   cnpj_seguradora VARCHAR2(18) NOT NULL,
   cpf_supervisor VARCHAR2(14),
   CONSTRAINT funcionario_pk PRIMARY KEY (cpf_funcionario),
   CONSTRAINT funcionario_cpf_func_fk FOREIGN KEY (cpf_funcionario) REFERENCES pessoa (cpf_pessoa),
   CONSTRAINT funcionario_cpf_superv_fk FOREIGN KEY (cpf_supervisor) REFERENCES funcionario (cpf_funcionario)
);
 
 
CREATE TABLE cobre (
    codigo_acidente NUMBER,
    cnpj_seguradora VARCHAR2(18),
    renavam NUMBER,
    cpf_cliente VARCHAR2(14),
    CONSTRAINT dependente_pk PRIMARY KEY (codigo_acidente, cnpj_seguradora, renavam, cpf_cliente),
    CONSTRAINT dependente_casualidade_fk FOREIGN KEY (codigo_acidente) REFERENCES casualidade (codigo_acidente),
    CONSTRAINT dependente_seguradora_fk FOREIGN KEY (cnpj_seguradora) REFERENCES seguradora (cnpj_seguradora),
    CONSTRAINT dependente_automovel_fk FOREIGN KEY (renavam) REFERENCES automovel (renavam),
    CONSTRAINT dependente_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf_cliente)
);
 
CREATE TABLE telefone_seguradora (
    cnpj_seguradora VARCHAR2(18) NOT NULL,
    DDD_seguradora NUMBER(3) NOT NULL,
    numero_telefone_seguradora VARCHAR2(10) NOT NULL,
    CONSTRAINT telefones_seguradora_pk PRIMARY KEY (cnpj_seguradora, DDD_seguradora, numero_telefone_seguradora),
    CONSTRAINT telefones_seguradora_seguradora_fk FOREIGN KEY (cnpj_seguradora) REFERENCES seguradora (cnpj_seguradora)
);
 
CREATE TABLE cliente_seguradora (
   cnpj_seguradora VARCHAR2(18),
   cpf_cliente VARCHAR2(14),
   data_contratacao DATE NOT NULL,
   anuidade NUMBER NOT NULL,
   franquia NUMBER NOT NULL,
   cobertura CHAR(1) NOT NULL,
   CONSTRAINT cliente_seguradora_pk PRIMARY KEY (cnpj_seguradora, cpf_cliente),
   CONSTRAINT cliente_seguradora_cpf_pk FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf_cliente),
   CONSTRAINT cliente_seguradora_cnpj_pk FOREIGN KEY (cnpj_seguradora) REFERENCES seguradora (cnpj_seguradora)
);

CREATE TABLE endereco_pessoa (
    cpf_pessoa VARCHAR2(14),
    rua_pessoa VARCHAR2(50),
    cep_pessoa NUMBER NOT NULL,
    numero_pessoa NUMBER,
    complemento_pessoa VARCHAR2(50),
    cidade_pessoa VARCHAR2(20),
    estado_pessoa VARCHAR2(20),
    pais_pessoa VARCHAR2(2),
    bairro_pessoa VARCHAR2(20),
    CONSTRAINT endereco_pessoa_pḱ PRIMARY KEY (cpf_pessoa, cep_pessoa),
    CONSTRAINT endereco_pessoa_fk FOREIGN KEY (cpf_pessoa) REFERENCES pessoa (cpf_pessoa)
);

CREATE TABLE endereco_seguradora (
    cnpj_seguradora VARCHAR2(18),
    rua_seguradora VARCHAR2(50),
    cep_seguradora NUMBER NOT NULL,
    numero_seguradora NUMBER,
    complemento_seguradora VARCHAR2(50),
    cidade_seguradora VARCHAR2(20),
    estado_seguradora VARCHAR2(20),
    pais_seguradora VARCHAR2(2),
    bairro_seguradora VARCHAR2(20),
    CONSTRAINT endereco_seguradora_pḱ PRIMARY KEY (cnpj_seguradora, cep_seguradora),
    CONSTRAINT endereco_seguradora_fk FOREIGN KEY (cnpj_seguradora) REFERENCES seguradora (cnpj_seguradora)
);