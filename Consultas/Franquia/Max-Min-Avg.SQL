SELECT MIN(franquia) as FranquiaMaisBarata
FROM cliente_seguradora;

SELECT MAX(franquia) as FranquiaMaisCara
FROM cliente_seguradora;

SELECT AVG(franquia) as MediaFranquias
FROM cliente_seguradora;

--Lista clientes com a franquia mais barata, a mais cara e a media entre elas respectivamente