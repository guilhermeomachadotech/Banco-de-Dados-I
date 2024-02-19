CREATE DATABASE bdEmpresa

USE bdEmpresa

CREATE TABLE tbDepto (
    codDepto INT PRIMARY KEY IDENTITY (1,1)
    ,nomeDepto VARCHAR (20) NOT NULL
)

CREATE TABLE tbFuncionario(
    codFunc INT PRIMARY KEY IDENTITY (1,1)
    ,nomeEmp VARCHAR (30) NOT NULL
    ,codDepto INT FOREIGN KEY REFERENCES
    tbDepto (codDepto)
)