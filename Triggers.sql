CREATE OR REPLACE TRIGGER alt_sexo
BEFORE UPDATE ON pessoa
FOR EACH ROW
BEGIN
IF :NEW.sexo_pessoa NOT IN('H','M') THEN
	RAISE_APPLICATION_ERROR(-20101, 'Sexo deve ser M ou H');
END IF;
END;


CREATE OR REPLACE TRIGGER apagar_seguradora
BEFORE DELETE ON seguradora
DECLARE
	seguradoras NUMBER;
BEGIN
	SELECT COUNT(*) INTO seguradoras 
	FROM seguradora;
	IF  seguradoras = 1 THEN	
		RAISE_APPLICATION_ERROR(-21000, 'Não se pode excluir a ultima seguradora do sistema !');
	END IF;
END apagar_seguradora;
