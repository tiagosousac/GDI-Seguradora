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