/* Cliente */

INSERT INTO tb_cliente VALUES(
    tp_cliente('Juliano','111.111.111-11',to_date('02/03/1987','dd/mm/yyyy'), 'M',  1111, to_date('15/01/2001', 'dd/mm/yy'))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('Adriano','111.111.222-11',to_date('11/10/1998','dd/mm/yyyy'), 'M',  1111, to_date('14/01/2002', 'dd/mm/yy'))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('Julia','111.111.333-11',to_date('01/02/1999','dd/mm/yyyy'),'F', 1111, to_date('13/02/2003', 'dd/mm/yy'))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('Ingrid','111.111.444-11',to_date('21/10/1996','dd/mm/yyyy'),'F', 1111, to_date('12/02/2005', 'dd/mm/yy'))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('Katia','111.111.555-11',to_date('20/01/1989','dd/mm/yyyy'), 'F', 1111, to_date('11/03/2006', 'dd/mm/yy'))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('Clotilde','111.111.666-11',to_date('19/03/1992','dd/mm/yyyy'), 'F', 1111, to_date('10/03/2007', 'dd/mm/yy'))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('John','111.111.777-11',to_date('10/12/1969','dd/mm/yyyy'),'M', 1111, to_date('09/04/2008', 'dd/mm/yy'))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('Eduardo','111.111.888-11',to_date('19/03/1992','dd/mm/yyyy'), 'F', 1111, to_date('08/04/2009', 'dd/mm/yy' ))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('Joana','111.111.999-11',to_date('01/06/1990','dd/mm/yyyy'),'F', 1111, to_date('07/05/2010', 'dd/mm/yy'))
);
INSERT INTO tb_cliente VALUES(
    tp_cliente('Eduarda','111.222.111-11',to_date('03/07/1995','dd/mm/yyyy'), 'F', 1111, to_date('06/05/2011', 'dd/mm/yy'))
);

/* Funcionario */

INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Gertru','111.222.222-11', to_date('15/01/2001', 'dd/mm/yy'),'F','111.222.222-11', 3500, 11111111111, '00.555.111/3333-00', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Dolores','111.222.333-11', to_date('14/01/1995', 'dd/mm/yy'),'F','111.222.333-11', 2500, 11111111111, '00.555.111/3333-00', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Dora','111.222.444-11', to_date('13/02/1980', 'dd/mm/yy'),'F','111.222.444-11', 2500, 22222222222, '00.444.222/4444-01', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Castor','111.222.555-11', to_date('12/02/1976', 'dd/mm/yy'),'F','111.222.555-11', 2500, 22222222222, '00.444.222/4444-01', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Anjol','111.222.666-11', to_date('11/03/1999', 'dd/mm/yy'),'F','111.222.666-11', 2500, 33333333333, '00.333.333/5555-02', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Rui','111.222.777-11', to_date('10/03/1998', 'dd/mm/yy'),'F','111.222.777-11', 2500, 33333333333, '00.333.333/5555-02', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Youda','111.222.888-11', to_date('09/04/1989', 'dd/mm/yy'),'F','111.222.888-11', 2500, 44444444444, '00.222.444/6666-03', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Adriana','111.222.999-11', to_date('08/04/1979', 'dd/mm/yy'),'F','111.222.999-11', 2500, 44444444444, '00.222.444/6666-03', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Alexa','111.333.111-11', to_date('07/05/1979', 'dd/mm/yy'),'F','111.333.111-11', 2500, 55555555555, '00.111.555/7777-04', NULL)
);
INSERT INTO tb_funcionario VALUES(
    tp_funcionario('Giord','111.333.222-11', to_date('06/05/1980', 'dd/mm/yy'),'F','111.333.222-11', 2500, 55555555555, '00.111.555/7777-04', NULL)
);

/* Seguradora */

INSERT INTO tb_seguradora VALUES(
    tp_seguradora('00.555.111/3333-00', 'Seguradora Pane Certa')
);
INSERT INTO tb_seguradora VALUES(
    tp_seguradora('00.444.222/4444-01', 'Seguradora Queda Dura')
);
INSERT INTO tb_seguradora VALUES(
    tp_seguradora('00.333.333/5555-02', 'Seguradora Carro Seguro')
);
INSERT INTO tb_seguradora VALUES(
    tp_seguradora('00.222.444/6666-03', 'Seguradora Seu Automóvel')
);
INSERT INTO tb_seguradora VALUES(
    tp_seguradora('00.111.555/7777-04', 'Seguradora Futuro Certo')
);

/* Automovel */

INSERT INTO tb_automovel VALUES(
    tp_automovel(32492185702, 'MTW5449', 'Onix', 'GM')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(14964157954, 'JBL0947', 'KA', 'Ford'   )
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(17894674540, 'LZT1146', 'HB20', 'Hyundai')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(27137288359, 'MJA7440', 'Prisma', 'GM')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(48329216659, 'MUA6044', 'Kwid', 'Renault')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(17893434104, 'LPQ1809', 'Gol', 'Volkswagen')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(13419152477, 'MUZ8655', 'Strada', 'Fiat')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(57762423982, 'KDX6765', 'Polo', 'Volkswagen')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(53425374281, 'HKB5746', 'Renegade', 'Jeep')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(46517698108, 'JJU7873', 'Argo', 'Fiat')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(31971249521, 'KCO5066', 'Toro', 'Fiat')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(34688362951, 'NEO7245', 'Sandero', 'Renault')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(11219653349, 'HVS4702', 'Creta', 'Hyundai')
);
INSERT INTO tb_automovel VALUES(
    tp_automovel(21492654515, 'LMS7347', 'Onix', 'GM')
);
INSERT INTO tb_automovel VALUES(
    tp_a



