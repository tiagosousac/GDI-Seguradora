DECLARE
     info_pessoa pesssoa%ROWTYPE
BEGIN
     info_pessoa.cpf_pessoa	 := '222.111.222-11'
     info_pessoa.nome_pessoa	 := 'Juãozinho'
     info_pessoa.data_nascimento := to_date('03/02/1998','dd/mm/yyyy')
     info_pessoa.sexo_pessoa	 := 'H'

     INSERT INTO pessoa VALUES info_pessoa
END;
