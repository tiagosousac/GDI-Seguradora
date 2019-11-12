CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    nome_pessoa VARCHAR2(30) ,
    cpf_pessoa VARCHAR2(14),
    data_nascimento_pessoa DATE,
    sexo_pessoa CHAR(1)
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
   salario_funcionario NUMBER ,
   pis_funcionario NUMBER,
   cnpj_seguradora VARCHAR2(18),
   cpf_supervisor VARCHAR2(14)
);
/

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (
    numero_cliente VARCHAR2(50),
    data_associação_cliente DATE
);
/

CREATE OR REPLACE TYPE tp_seguradora AS OBJECT(
   cnpj_seguradora VARCHAR2(18),
   nome_seguradora VARCHAR2(30)
);
/

CREATE TABLE tb_pessoa OF tp_pessoa (
    cpf_pessoa PRIMARY KEY
);
/

CREATE TABLE tb_cliente OF tp_cliente;
/

CREATE TABLE tb_funcionario OF tp_funcionario;
/


CREATE TABLE tb_seguradora OF tp_seguradora (
    cnpj_seguradora PRIMARY KEY
);
/

/* Verificar funções daqui para baixo */

CREATE OR REPLACE TYPE tp_telefone_pessoa AS OBJECT (
    ddd NUMBER,
    numero_telefone NUMBER
CONSTRUCTOR FUNCTION tp_telefone_pessoa (area NUMBER, num NUMBER) RETURN SELF AS RESULT
    MEMBER FUNCTION get_ddd RETURN INTEGER,
    MAP MEMBER FUNCTION get_numero RETURN INTEGER,
    MEMBER PROCEDURE set_numero(num NUMBER),
    MEMBER PROCEDURE set_ddd(area NUMBER)
);

CREATE OR REPLACE TYPE BODY tp_telefone_pessoa AS
    CONSTRUCTOR FUNCTION tp_telefone_pessoa (area NUMBER, num NUMBER) RETURN SELF AS RESULT
        BEGIN
            ddd := area;
            numero_telefone := num;
            RETURN SELF;
        END;
    MEMBER FUNCTION get_ddd RETURN INTEGER AS
        BEGIN
            RETURN ddd;
        END;
    MAP MEMBER FUNCTION get_numero RETURN INTEGER AS
        BEGIN
            RETURN numero_telefone;
        END;
    MEMBER PROCEDURE set_numero(num NUMBER) AS
        BEGIN
            numero_telefone := num;
        END;
    MEMBER PROCEDURE set_ddd(area NUMBER) AS
        BEGIN
            ddd := area;
        END;
END;

CREATE OR REPLACE TYPE tp_automovel AS OBJECT (
    renavam NUMBER,
    placa VARCHAR2(7),
    modelo VARCHAR2(20),
    marca VARCHAR2(20),

    CONSTRUCTOR FUNCTION tp_automovel (rn NUMBER, pl VARCHAR2, model VARCHAR2, brand VARCHAR2) RETURN SELF AS RESULT,
    MAP MEMBER FUNCTION get_renavam RETURN NUMBER,
    MEMBER FUNCTION get_placa RETURN VARCHAR2,
    MEMBER FUNCTION get_modelo RETURN VARCHAR2,
    MEMBER FUNCTION get_marca RETURN VARCHAR2,
    MEMBER PROCEDURE set_placa(pl VARCHAR2)
);
/

CREATE OR REPLACE TYPE BODY tp_automovel AS
    CONSTRUCTOR FUNCTION tp_automovel (rn NUMBER, pl VARCHAR2(7), model VARCHAR2(20), brand VARCHAR2(20)) RETURN SELF AS RESULT
        BEGIN
            renavam := rn;
            placa := pl;
            modelo := model;CONSTRUCTOR FUNCTION tp_casualidade (cod NUMBER, data_ac DATE, tipo CHAR(1)) RETURN SELF AS RESULT,
    MAP MEMBER FUNCTION get_renavam RETURN NUMBER AS
        BEGIN
            RETURN renavam;
        END;
    MEMBER FUNCTION get_placa RETURN VARCHAR2(7) AS
        BEGIN
            RETURN placa;
        END;
    MEMBER FUNCTION get_modelo RETURN VARCHAR2(20) AS
        BEGIN
            RETURN modelo;
        END;
    MEMBER FUNCTION get_marca RETURN VARCHAR2(20) AS
        BEGIN
            RETURN marca;
        END;
    MEMBER PROCEDURE set_placa(pl VARCHAR2(7)) AS
        BEGIN
            placa := pl;
        END;
END;

CREATE OR REPLACE TYPE tp_casualidade AS OBJECT (
    codigo_acidente NUMBER,
    data_acidente DATE,
    tipo_acidente CHAR(1),

    CONSTRUCTOR FUNCTION tp_casualidade (cod NUMBER, data_ac DATE, tipo CHAR(1)) RETURN SELF AS RESULT,
    MEMBER FUNCTION get_data RETURN DATE,
    MEMBER FUNCTION get_tipo RETURN CHAR(1),
    MAP MEMBER FUNCTION get_cod RETURN NUMBER
);

CREATE OR REPLACE TYPE tp_casualidade AS
    CONSTRUCTOR FUNCTION tp_casualidade (cod NUMBER, data_ac DATE, tipo CHAR(1)) RETURN SELF AS RESULT
        BEGIN
            codigo_acidente := cod;
            data_acidente := data_ac;
            tipo_acidente := tipo;
            RETURN SELF;
        END;
    MEMBER FUNCTION get_data RETURN DATE AS
        BEGIN
            RETURN data_acidente;
        END;
    MEMBER FUNCTION get_tipo RETURN CHAR(1) AS
        BEGIN
            RETURN tipo_acidente;
        END;
    MAP MEMBER FUNCTION get_cod RETURN NUMBER AS
        BEGIN
            RETURN codigo_acidente;
        END;
END;