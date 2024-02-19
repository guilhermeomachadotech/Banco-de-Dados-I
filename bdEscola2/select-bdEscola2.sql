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

SELECT codAluno AS 'Código do Aluno', dataMatricula AS 'Data da Matrícula' FROM tbMatricula
WHERE DATEPART (MONTH, dataMatricula)=5

SELECT codAluno AS 'Código do Aluno que Fazem Inglês' FROM tbMatricula
WHERE codTurma =1 OR codTurma=2

SELECT codAluno AS 'Código do Aluno', nomeAluno AS 'Nome do Aluno', dataNascimentoAluno AS 'Data de Nascimento', rgAluno AS 'RG do Aluno', naturalidadeAluno AS 'Naturalidade do Aluno' FROM tbAluno

SELECT codTurma AS 'Código da Turma', nomeTurma AS 'Nome da Turma', codCurso AS 'Código do Curso', horarioTurma AS 'Horário da Turma' FROM tbTurma