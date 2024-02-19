--DROP DATABASE bdEmpresa

CREATE DATABASE bdEmpresa

GO

USE bdEmpresa

CREATE TABLE tblProjeto (
	idProjeto INT PRIMARY KEY IDENTITY (1,1)
	,cargaHoraria TINYINT NOT NULL
)
--DROP TABLE tblDepartamento
CREATE TABLE tblDepartamento (
	idDepto INT PRIMARY KEY IDENTITY (1,1)
	,nomeDepto VARCHAR (30) NOT NULL
)
--DROP TABLE tblFuncionario
CREATE TABLE tblFuncionario (
	idFuncionario INT PRIMARY KEY IDENTITY (1,1)
	,nomeFuncionario VARCHAR (50) NOT NULL
	,cpfFuncionario CHAR (14) NOT NULL UNIQUE
	,rgFuncionario CHAR (12) NOT NULL UNIQUE
	,idDepto INT FOREIGN KEY REFERENCES tblDepartamento (idDepto)
)
--DROP TABLE tblFoneFuncionario
CREATE TABLE  tblFoneFuncionario (
	idFoneFuncionario INT PRIMARY KEY IDENTITY (1,1)
	,numFone CHAR (19) NOT NULL
	,idFuncionario INT FOREIGN KEY REFERENCES tblFuncionario (idFuncionario)
)

CREATE TABLE tblFuncionarioProjeto (
	idFuncionarioProjeto INT PRIMARY KEY IDENTITY (1,1) 
	,idFuncionario INT FOREIGN KEY REFERENCES tblFuncionario (idFuncionario)
	,idProjeto INT FOREIGN KEY REFERENCES tblProjeto (idProjeto)
	,qtdeHorasFuncionario TINYINT NOT NULL
)

CREATE TABLE tblDependente ( 
	idDependente INT PRIMARY KEY IDENTITY (1,1)
	,nomeDependente VARCHAR (50) NOT NULL
	,dtNasctoDependente SMALLDATETIME NOT NULL
	,idFuncionario INT FOREIGN KEY REFERENCES tblFuncionario (idFuncionario)
)
--DROP TABLE tblConjuge
CREATE TABLE tblConjuge (
	idConjuge INT PRIMARY KEY IDENTITY (1,1)
	,nomeConjuge VARCHAR (50)
	,idFuncionario INT FOREIGN KEY REFERENCES tblFuncionario (idFuncionario)
)