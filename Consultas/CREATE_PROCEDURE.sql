CREATE PROCEDURE seguradora.getAllSeguradoras  
AS  
    SET NOCOUNT ON;  
    SELECT cnpj_seguradora, nome_seguradora  
    FROM seguradora;  
GO  
  
SELECT * FROM seguradora;