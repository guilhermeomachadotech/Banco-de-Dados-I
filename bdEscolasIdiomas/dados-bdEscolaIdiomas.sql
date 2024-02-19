USE bdEscolaIdiomas

INSERT INTO tbAluno (nomeAluno, rgAluno, enderecoAluno, numEndAluno, compAluno, bairroAluno, cepAluno, cidadeAluno)
VALUES
    ('Guilherme de Oliveira Machado', '62.467.006-5', 'Rua Cruz do Espirito Santo', 234, 'Bloco A, Apartamento 53', 'Guaianases', '08440-470', 'São Paulo')
    ,('Clotilde de Oliveira Lima', '65.356.004-5', 'Rua Galvão Bueno', 568, 'Bloco B, Apartamento 2', 'Vila Carrão', '02899-326', 'São Paulo')
    ,('Carlos Eduardo Rocha', '68.345.009-7', 'Rua Siqueira Campos', 226, 'Bloco 01, Apartamento 50', 'Jardim Augusta', '12210-250', 'São José dos Campos')
    ,('Eduarda Perreira Silva', '69.226.007-5', 'Custódio Paixa', 205, 'Bloco 07, Apartamento 33', 'Jardins Soares', '01426-001', 'São Paulo')
    ,('Coraline Bastos', '68.458.003-2', 'Rua dos Pinheiros', 245, 'Bloco C, Apartamento 39', 'Pinheiros', '05422-000', 'São Paulo')
    ,('Jorge da Silva Costa', '65.457.003-2', 'Rua Andes', 340, 'Bloco A, Apartamento 50', 'Guaianases', '08440-180', 'São Paulo')
SELECT*FROM tbAluno

INSERT INTO tbFoneAluno (foneAluno, idAluno)
VALUES
    ('+55(11)94943-1316', 1)
    ,('+55(11)93945-1510', 1)
    ,('+55(11)98764-1020', 2)
    ,('+55(11)95687-3349', 2)
    ,('+55(11)91024-1290', 3)
    ,('+55(11)94537-8239', 3)
    ,('+55(11)98985-1023', 4)
    ,('+55(11)98353-3565', 4)
    ,('+55(11)91023-8733', 5)
    ,('+55(11)92239-3467', 5)
    ,('+55(11)94021-5679', 6)
    ,('+55(11)90766-5179', 6)
SELECT*FROM tbFoneAluno

INSERT INTO tbCurso (nomeCurso)
VALUES
    ('Espanhol')
    ,('Inglês')
    ,('Alemão')
SELECT*FROM tbCurso

INSERT INTO tbNivel (descNivel)
VALUES
    ('Iniciante')
    ,('Intermediário')
    ,('Fluente')
SELECT*FROM tbNivel

INSERT INTO tbPeriodo (descPeriodo)
VALUES
    ('Manhã')
    ,('Tarde')
    ,('Noite')
SELECT*FROM tbPeriodo

INSERT INTO tbDiaSemana (diaSemana)
VALUES
    ('Segunda-Feira')
    ,('Terça-Feira')
    ,('Quarta-Feira')
    ,('Quinta-Feira')
    ,('Sexta-Feira')
    ,('Sábado')
SELECT*FROM tbDiaSemana

INSERT INTO tbTurma (horarioTurma, idCurso, idPeriodo, idNivel, idDiaSemana)
VALUES
    ('08:00', 1, 1, 1, 1)
    ,('14:00', 1, 2, 2, 3)
    ,('19:00', 1, 3, 3, 2)
    ,('09:00', 1, 1, 3, 4)
    ,('14:00', 1, 2, 1, 5)
    ,('08:00', 2, 1, 1, 6)
    ,('19:00', 2, 3, 2, 1)
    ,('14:00', 2, 2, 3, 5)
    ,('08:00', 2, 1, 2, 6)
    ,('16:00', 2, 2, 3, 3)
    ,('14:00', 3, 2, 1, 5)
    ,('08:00', 3, 1, 2, 3)
    ,('19:00', 3, 3, 3, 2)
    ,('14:00', 3, 2, 2, 4)
    ,('19:00', 3, 3, 1, 1)
SELECT*FROM tbTurma

INSERT INTO tbMatricula (dataMatricula, idAluno, idTurma)
VALUES
    ('14/02/2022', 1, 3)
    ,('18/02/2023', 1, 4)
    ,('19/02/2022', 2, 8)
    ,('22/02/2023', 2, 10)
    ,('24/02/2022', 3, 2)
    ,('25/02/2023', 3, 3)
    ,('25/02/2022', 4, 12)
    ,('26/02/2023', 4, 13)
    ,('26/02/2020', 5, 6)
    ,('27/02/2021', 5, 7)
    ,('28/02/2022', 6, 8)
    ,('28/02/2023', 6, 10)
SELECT*FROM tbMatricula
