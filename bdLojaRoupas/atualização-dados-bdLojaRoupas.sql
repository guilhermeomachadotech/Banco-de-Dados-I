USE bdLojaRoupas

UPDATE tbFabricante
SET nomeFabricante='Turma da Malha'
WHERE codFabricante=3

SELECT*FROM tbFabricante

UPDATE tbVenda
SET totalVenda=(totalVenda-(totalVenda*10/100))
WHERE codCliente=1

SELECT*FROM tbVenda

UPDATE tbProduto
SET precoProduto=(precoProduto+(precoProduto*20/100))
WHERE codFabricante=2

SELECT*FROM tbProduto

UPDATE tbProduto
SET estoqueProduto=(estoqueProduto-10)
WHERE codProduto=3

SELECT*FROM tbProduto

DELETE FROM tbItensVenda
WHERE codVenda=3

SELECT*FROM tbItensVenda

DELETE FROM tbItensVenda
WHERE codItensVenda=4

SELECT*FROM tbItensVenda

DELETE FROM tbFabricante
WHERE codFabricante=1

SELECT*FROM tbFabricante

--N�o consegui deletar o funcion�rio de c�digo 1, porque ele est� conectado com a tabela do produto, em codFabricante, com uma chave estrangeira, assim, ele n�o consegue delet�-lo por causa dessa chave estrangeira que faz essa liga��o.

