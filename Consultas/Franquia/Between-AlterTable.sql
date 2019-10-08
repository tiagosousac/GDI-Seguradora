ALTER TABLE cliente_seguradora
DROP franquia;

SELECT * FROM cliente_seguradora
WHERE anuidade BETWEEN 900 AND 1500;

--Lista clientes com a anuidade entre 900 e 1500 reais