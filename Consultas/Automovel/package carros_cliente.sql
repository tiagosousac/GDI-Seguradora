-- Recebe cliente e devolve seus carros
create or replace FUNCTION get_cars(target_cpf IN VARCHAR2) 
   RETURN VARCHAR2
   IS pessoa_carros VARCHAR2(200);

   BEGIN 

	  SELECT 'Nome-'||P.nome_pessoa||', Marca-'||A.marca||', Modelo-'||A.modelo||', Renavam-'||A.renavam 
      INTO pessoa_carros
      FROM pessoa P, automovel A
      WHERE P.cpf_pessoa = target_cpf 
      AND A.cpf_cliente = target_cpf;

      RETURN(pessoa_carros); 

    END get_cars;
/
-- Recebe cliente e devolve suas placas
create or replace FUNCTION get_cars_placas(target_cpf IN VARCHAR2) 
   RETURN VARCHAR2
   IS carros_placas VARCHAR2(15);

   BEGIN 

	  SELECT 'Placa-'||A.placa 
      INTO carros_placas
      FROM pessoa P, automovel A
      WHERE P.cpf_pessoa = target_cpf 
      AND A.cpf_cliente = target_cpf;

      RETURN(carros_placas); 

    END get_cars_placas;
/
-- Recebe cliente e devolve seus carros e suas placas
create or replace PACKAGE carros_cliente AS
  FUNCTION get_cars(target_cpf IN VARCHAR2)
    RETURN VARCHAR2;
  FUNCTION get_cars_placas(target_cpf IN VARCHAR2)
    RETURN VARCHAR2;
END carros_cliente;