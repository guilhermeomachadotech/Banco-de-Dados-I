USE bdEmpresa

INSERT INTO tblDepartamento (nomeDepto)
VALUES 
	('Vendas')
	,('Diretoria')
	,('Tecnologia')
SELECT*FROM tblDepartamento

INSERT INTO tblFuncionario (nomeFuncionario, cpfFuncionario, rgFuncionario, idDepto)
VALUES
	('Guilherme de Oliveira', '572.348.428-10', '62.467.006-5', 1)
	,('Larrisa Pereira', '478.532.214-10','32.378.005-5', 2)
	,('Julia Vasconselho','235.562.875-10','65.356.003-5', 3 )
	SELECT*FROM tblFuncionario

INSERT INTO tblFoneFuncionario (numFone, idFuncionario)
VALUES
	('+55(11)94943-1316', 1)
	,('+55(11)98983-1020', 2)
	,('+55(11)97976-2013', 3)
	SELECT*FROM tblFoneFuncionario

INSERT INTO tblProjeto (cargaHoraria)
VALUES
	(20)
	,(15)
	,(18)
SELECT*FROM tblProjeto

INSERT INTO tblFuncionarioProjeto (idFuncionario, idProjeto, qtdeHorasFuncionario)
VALUES
	(1, 1, 20)
	,(2, 2, 17)
	,(3, 3, 18)
SELECT*FROM tblFuncionarioProjeto

INSERT INTO tblDependente (nomeDependente, dtNasctoDependente, idFuncionario)
VALUES
	('Clotilde de Oliveira', '03/05/2030', 1)
	,('Laura', '15/02/2035', 2)
	,('Felipe', '20/10/2035', 3)
SELECT*FROM tblDependente

INSERT INTO tblConjuge (nomeConjuge, idFuncionario)
VALUES
	('Thalia', 1)
	,('Roberto',2)
	,('Carlos', 3)
SELECT*FROM tblConjuge