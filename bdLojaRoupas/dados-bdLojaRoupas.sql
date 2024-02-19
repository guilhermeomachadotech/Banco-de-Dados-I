USE bdLojaRoupas

INSERT INTO tbCliente (nomeCliente, idadeCliente)
VALUES
	('Giovanna Eduarda Damasceno Reis', 16)
	,('Fabio de Lima Costa', 35)
	,('Paulo Henrique Pereira', 45)
	,('Rafaela da Silva Lima', 20)
	,('Carlos Bastos', 25)
SELECT*FROM tbCliente

INSERT INTO tbFabricante(nomeFabricante)
VALUES
	('Malwee')
	,('Marisol')
	,('Cia da Malha')
SELECT*FROM tbFabricante

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES
	('Kauãn Ribeiro da Gama', 23, '18/10/2022', 100.50)
	,('Julia Batista de Oliveira', 26, '20/06/2019', 150.00)
SELECT*FROM tbFuncionario

INSERT INTO tbVendedor (nomeVendedor)
VALUES
	('João Santana')
	,('Raquel Torres')
SELECT*FROM tbVendedor

INSERT INTO tbProduto (nomeProduto, precoProduto, dataEntradaProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES
	('Camisa Branca Adidas', 75.40, '15/01/2022', 1250, 2, 1)
	,('Blusa de Moletom Baby Look', 110.00, '14/02/2022', 253, 1, 1)
	,('Calça jeans Sawary', 50.35, '06/03/2022',3126, 2, 1)
	,('Macacão Emilio Pucci', 65.40, '30/04/2022', 1756, 1, 2)
	,('Regata Azul Nike', 47.00, '27/05/2022', 934, 2, 2)
	,('Shorts jeans VGI', 60.50, '10/06/2022', 1002, 1, 2)
	,('Camisa Rick and Morty', 73.00, '31/08/2022', 256, 2, 3)
	,('Camisa Raglan Oracle', 120.80, '24/10/2022', 1450, 1, 3)
	,('Calça jeans Colcci', 40.15, '01/12/2022', 1200, 2, 3)
SELECT*FROM tbProduto

INSERT INTO tbVenda (dataVenda, totalVenda, codCliente, codVendedor)
VALUES
	('16/01/2022', 150.80, 2, 1)
	,('09/02/2022', 185.40, 1, 2)
	,('13/03/2022', 160.35, 4, 1)
	,('20/06/2022', 232.40, 3, 2)
	,('10/09/2022', 198.90, 5, 1)
SELECT*FROM tbVenda

INSERT INTO tbItensVenda (codVenda, codProduto, quantidadeItensVenda, subTotalItensVenda)
VALUES
	(1, 1, 3, 226.20)
	,(1, 7, 6, 438.00)
	,(2, 2, 4, 440.00)
	,(2, 5, 2, 94.00)
	,(3, 3, 5, 251.75)
	,(3, 8, 7, 845.60)
	,(4, 4, 8, 523.20)
	,(4, 6, 2, 121.00)
	,(5, 9, 3, 120.45)
	,(5, 3, 4, 201.40)
SELECT*FROM tbItensVenda

