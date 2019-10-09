BEGIN
	--Bloco anonimo que imprime a data e horario atuais
   DBMS_OUTPUT.PUT_LINE ('Data e horario:' || CHR(10) || TO_CHAR(SYSDATE, 'DD/MON/YYYY hh24:mm'));
END;