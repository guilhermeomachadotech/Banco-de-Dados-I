CREATE DATABASE bdUniversidade

USE bdUniversidade

CREATE  TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (30) NOT NULL
	,dtNascAluno SMALLDATETIME NOT NULL
	,cpfAluno CHAR (14) NOT NULL UNIQUE
)

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (20) NOT NULL
	,cargaHorariaCurso SMALLDATETIME NOT NULL
)

CREATE TABLE tbCampus(
	idCampus INT PRIMARY KEY IDENTITY (1,1)
	,nomeCampus VARCHAR (30) NOT NULL
)

CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor VARCHAR (30) NOT NULL
	,dtNascProf SMALLDATETIME NOT NULL
	,rgProfessor CHAR (12) NOT NULL UNIQUE
)

CREATE TABLE tbDisciplina(
	idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,