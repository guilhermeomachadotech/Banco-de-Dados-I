--DROP DATABASE bdEscolaIdiomas
CREATE DATABASE bdEscolaIdiomas

GO

USE bdEscolaIdiomas

CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50) NOT NULL
	,rgAluno CHAR (12) NOT NULL UNIQUE
	,enderecoAluno VARCHAR (45) NOT NULL
	,numEndAluno SMALLINT NOT NULL
	,compAluno VARCHAR (35)
	,bairroAluno VARCHAR (45) NOT NULL
	,cepAluno CHAR (9) NOT NULL
	,cidadeAluno VARCHAR (50) NOT NULL
) 

CREATE TABLE tbfoneAluno (
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	,foneAluno CHAR (17) UNIQUE
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
)

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (20) NOT NULL
)
CREATE TABLE tbNivel (
	idNivel INT PRIMARY KEY IDENTITY (1,1)
	,descNivel VARCHAR (15) NOT NULL
)

CREATE TABLE tbPeriodo (
	idPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,descPeriodo VARCHAR (8) NOT NULL
)

CREATE TABLE tbDiaSemana (
	idDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	,diaSemana VARCHAR (17) NOT NULL
)

CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,horarioTurma SMALLDATETIME NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (idPeriodo)
	,idNivel INT FOREIGN KEY REFERENCES tbNivel (idNivel)
	,idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana (idDiaSemana)
)

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
)