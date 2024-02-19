CREATE DATABASE bdSistemaAcademico

USE bdSistemaAcademico

CREATE  TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (40) NOT NULL
	,dtNascAluno SMALLDATETIME NOT NULL
	,cpfAluno CHAR (14) NOT NULL UNIQUE
)

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (30) NOT NULL
	,cargaHorariaCurso SMALLDATETIME NOT NULL
)

CREATE TABLE tbCampus(
	idCampus INT PRIMARY KEY IDENTITY (1,1)
	,nomeCampus VARCHAR (30) NOT NULL
)

CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor VARCHAR (40) NOT NULL
	,dtNascProfessor SMALLDATETIME NOT NULL
	,rgProfessor CHAR (12) NOT NULL UNIQUE
)

CREATE TABLE tbDisciplina(
	idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,nomeDisciplina VARCHAR (50) NOT NULL
	,cargaHorariaDisciplina SMALLDATETIME NOT NULL
)

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,descricaoTurma VARCHAR (50) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idCampus INT FOREIGN KEY REFERENCES tbCampus (idCampus)
	,numAlunosTurma TINYINT NOT NULL
	,semestreTurma SMALLDATETIME NOT NULL
	,anoFormacaoTurma SMALLDATETIME NOT NULL
	,numSalaTurma TINYINT NOT NULL
)
CREATE TABLE tbAtribuicao(
	idAtribuicao INT PRIMARY KEY IDENTITY (1,1)
	,dataAtribuicao SMALLDATETIME NOT NULL
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma) 
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina (idDisciplina)
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	,dtMatricula SMALLDATETIME NOT NULL
)

