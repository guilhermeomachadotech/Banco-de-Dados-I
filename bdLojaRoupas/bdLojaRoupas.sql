--DROP DATABASE bdLojaRoupas
CREATE DATABASE bdLojaRoupas

GO

USE bdLojaRoupas

CREATE TABLE tbCliente (
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (50) NOT NULL
	,idadeCliente TINYINT NOT NULL
)

CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY (1,1)
	,nomeFuncionario VARCHAR (50) NOT NULL
	,idadeFuncionario TINYINT NOT NULL
	,dataAdmissao SMALLDATETIME NOT NULL
	,salarioFuncionario SMALLMONEY NOT NULL
)

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY (1,1)
	,nomeFabricante VARCHAR (50) NOT NULL
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeProduto VARCHAR (60) NOT NULL
	,precoProduto SMALLMONEY NOT NULL
	,dataEntradaProduto SMALLDATETIME NOT NULL
	,estoqueProduto SMALLINT NOT NULL
	,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (codFuncionario)
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
)

CREATE TABLE tbVendedor(
	codVendedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeVendedor VARCHAR (50) NOT NULL
)

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,totalVenda SMALLMONEY NOT NULL
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
	,codVendedor INT FOREIGN KEY REFERENCES tbVendedor (codVendedor)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	,quantidadeItensVenda SMALLINT NOT NULL
	,subTotalItensVenda SMALLMONEY NOT NULL
)