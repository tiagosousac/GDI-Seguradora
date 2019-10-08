DROP TABLE cliente_seguradora;
DROP TABLE telefones_seguradora;
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
    cpf VARCHAR2(14),
    nome VARCHAR2(30) NOT NULL,
    data_de_nascimento DATE NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    rua VARCHAR2(50),
    cep VARCHAR2(9),
    numero NUMBER NOT NULL,
    complemento VARCHAR2(50),
    cidade VARCHAR2(20),
    estado VARCHAR2(20),
    pais VARCHAR2(20),
    bairro VARCHAR2(20),
    CONSTRAINT pessoa_pk PRIMARY KEY (cpf)
);
 
CREATE TABLE seguradora (
   cnpj VARCHAR2(18),
   nome VARCHAR2(30) NOT NULL,
   rua VARCHAR2(30) NOT NULL,
   numero NUMBER,
   complemento VARCHAR2(30),
   cidade VARCHAR2(15) NOT NULL,
   estado VARCHAR2(2) NOT NULL,
   cep NUMBER NOT NULL,
   pais VARCHAR2(2) NOT NULL,
   bairro VARCHAR2(30) NOT NULL,
   CONSTRAINT cnpj_pk PRIMARY KEY (cnpj)
);
 
CREATE TABLE cliente (
    cpf_cliente VARCHAR2(14),
    numero_cliente VARCHAR2(50) NOT NULL,
    data_associação DATE NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (cpf_cliente),
    CONSTRAINT cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES pessoa (cpf)
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
    pessoa VARCHAR2(14) NOT NULL,
    DDD NUMBER(3) NOT NULL,
    num_telefone VARCHAR2(10) NOT NULL,
    CONSTRAINT telefone_pessoa_pk PRIMARY KEY (DDD, num_telefone),
    CONSTRAINT telefone_pessoa_fk FOREIGN KEY (pessoa) REFERENCES pessoa (cpf)
);
 
CREATE TABLE dependente (
    responsavel VARCHAR2(14),
    numero_do_dependente NUMBER NOT NULL,
    nome_do_dependente VARCHAR2(30) NOT NULL,
    sexo_dependente CHAR(1),
    data_de_nascimento DATE NOT NULL,
    CONSTRAINT dependente PRIMARY KEY (responsavel, numero_do_dependente),
    CONSTRAINT dependente_fk FOREIGN KEY (responsavel) REFERENCES pessoa (cpf)
);
 
CREATE TABLE funcionario (
   cpf_funcionario VARCHAR2(14),
   salario NUMBER NOT NULL,
   pis NUMBER NOT NULL,
   cnpj_seguradora NUMBER NOT NULL,
   cpf_supervisor VARCHAR2(14),
   CONSTRAINT funcionario_pk PRIMARY KEY (cpf_funcionario),
   CONSTRAINT funcionario_cpf_func_fk FOREIGN KEY (cpf_funcionario) REFERENCES pessoa (cpf),
   CONSTRAINT funcionario_cpf_superv_fk FOREIGN KEY (cpf_supervisor) REFERENCES funcionario (cpf_funcionario)
);
 
 
CREATE TABLE cobre (
    casualidade NUMBER,
    seguradora VARCHAR2(18),
    automovel NUMBER,
    cpf_cliente VARCHAR2(14),
    CONSTRAINT dependente_pk PRIMARY KEY (casualidade, seguradora, automovel, cpf_cliente),
    CONSTRAINT dependente_casualidade_fk FOREIGN KEY (casualidade) REFERENCES casualidade (codigo_acidente),
    CONSTRAINT dependente_seguradora_fk FOREIGN KEY (seguradora) REFERENCES seguradora (cnpj),
    CONSTRAINT dependente_automovel_fk FOREIGN KEY (automovel) REFERENCES automovel (renavam),
    CONSTRAINT dependente_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf_cliente)
);
 
CREATE TABLE telefones_seguradora (
    seguradora VARCHAR2(14) NOT NULL,
    DDD NUMBER(3) NOT NULL,
    num_telefone VARCHAR2(10) NOT NULL,
    CONSTRAINT telefones_seguradora_pk PRIMARY KEY (seguradora, DDD, num_telefone),
    CONSTRAINT telefones_seguradora_seguradora_fk FOREIGN KEY (seguradora) REFERENCES seguradora (cnpj)
);
 
CREATE TABLE cliente_seguradora (
   cnpj_contratada VARCHAR2(18),
   cpf_cliente VARCHAR2(14),
   data_contratacao DATE NOT NULL,
   anuidade NUMBER NOT NULL,
   franquia NUMBER NOT NULL,
   cobertura CHAR(1) NOT NULL,
   CONSTRAINT cliente_seguradora_pk PRIMARY KEY (cnpj_contratada, cpf_cliente),
   CONSTRAINT cliente_seguradora_cpf_pk FOREIGN KEY (cpf_cliente) REFERENCES pessoa (cpf),
   CONSTRAINT cliente_seguradora_cnpj_pk FOREIGN KEY (cnpj_contratada) REFERENCES seguradora (cnpj)
);