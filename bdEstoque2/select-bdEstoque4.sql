USE bdEstoque

SELECT SUM (quantidadeProduto) AS 'Total de quantidades de produto' FROM tbProduto
WHERE codFabricante=2

SELECT AVG (valorProduto) AS 'Média de Preços de Produto da P&G' FROM tbProduto
WHERE codFabricante=2

SELECT SUM (valorProduto) AS 'Soma dos Produtos da Unilever' FROM tbProduto
WHERE codFabricante=1

SELECT AVG (valorProduto) AS 'Preço Média dos Produtos da Bunge' FROM tbProduto
WHERE codfabricante=3

SELECT SUM (quantidadeProduto) AS 'Soma das Quantidades de Produtos da Bunge' FROM tbProduto
WHERE codFabricante=3

SELECT AVG (quantidadeProduto) AS 'Quantidade Média de Produtos da P&G' FROM tbProduto
WHERE codFabricante=2

SELECT AVG (valorProduto) AS 'Preço Médio no Estoque com quantidade inferior a 200' FROM tbProduto
WHERE quantidadeProduto<200

SELECT AVG (quantidadeProduto) AS 'Quantidade Média de Produto Fabricados pela Unilever' FROM tbProduto
WHERE codFabricante=1

SELECT MIN (valorProduto) AS 'Valor do Produto Mais Barato do Estoque' FROM tbProduto

SELECT COUNT (codProduto) AS 'Itens no Estoque da Unilever' FROM tbProduto
WHERE codFabricante=1