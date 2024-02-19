CREATE DATABASE bdEscola1

USE bdEscola1

--DROP TABLE tblPeriodo--Deletar a Tabela de Periodo--

CREATE TABLE tblPeriodo(
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,nomePeriodo VARCHAR (30) NOT NULL
)

--DROP TABLE tblCurso--Deletar a Tabela do Curso--

CREATE TABLE tblCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (40) NOT NULL UNIQUE
	,cargaHoraria TINYINT NOT NULL
)

CREATE TABLE tblAluno(
	codAluno INT PRIMARY KEY IDENTITY (100,2)
	,nomeAluno VARCHAR (60) NOT NULL
	,dataNascAluno SMALLDATETIME CHECK (dataNascAluno<getdate()) NOT NULL
	,ruaAluno VARCHAR (50) NOT NULL
	,numCasaAluno TINYINT NOT NULL
	,bairroAluno VARCHAR (40) NOT NULL
	,telefoneAluno CHAR (19) NOT NULL
)

CREATE TABLE tblMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME DEFAULT GETDATE() NOT NULL

	,codAluno INT FOREIGN KEY REFERENCES tblAluno (codAluno)
	,codCurso INT FOREIGN KEY REFERENCES tblCurso (codCurso)
	,codPeriodo INT FOREIGN KEY REFERENCES tblPeriodo (codPeriodo) 
)