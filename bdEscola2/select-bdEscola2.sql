USE bdEscola

SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG', dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno
WHERE naturalidadeAluno LIKE 'SP'

SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG' FROM tbAluno
WHERE nomeAluno LIKE 'P%'

SELECT nomeCurso AS 'Nome do Curso' FROM tbCurso
WHERE cargaHorariaCurso > 2000

SELECT nomeAluno AS 'Nome do Aluno', rgAluno AS 'RG' FROM tbAluno
WHERE nomeAluno LIKE '%Silva%'

SELECT nomeAluno AS 'Nome do Aluno', dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno
WHERE DATEPART (MONTH, dataNascimentoAluno)= 3

SELECT codAluno AS 'C�digo do Aluno', dataMatricula AS 'Data da Matr�cula' FROM tbMatricula
WHERE DATEPART (MONTH, dataMatricula)=5

SELECT codAluno AS 'C�digo do Aluno que Fazem Ingl�s' FROM tbMatricula
WHERE codTurma =1 OR codTurma=2

SELECT codAluno AS 'C�digo do Aluno', nomeAluno AS 'Nome do Aluno', dataNascimentoAluno AS 'Data de Nascimento', rgAluno AS 'RG do Aluno', naturalidadeAluno AS 'Naturalidade do Aluno' FROM tbAluno

SELECT codTurma AS 'C�digo da Turma', nomeTurma AS 'Nome da Turma', codCurso AS 'C�digo do Curso', horarioTurma AS 'Hor�rio da Turma' FROM tbTurma