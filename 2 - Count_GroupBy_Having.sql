-- Análise de Dados no SQL
-- COUNT contagem
SELECT count(Nome) FROM clientes; -- aqui da 100 porque não tem valores null
SELECT count(Telefone) FROM clientes; -- aqui da 94 porque tem linhas com null
SELECT count(*) FROM clientes; -- aqui da 100 porque desconsidera qualquer linha em branco

-- SUM soma
SELECT sum(Receita_Venda) FROM pedidos;

-- AVG média, MIN mínimo, MAX máximo
SELECT avg(Preco_Unit) FROM produtos;
SELECT min(Preco_Unit) FROM produtos;
SELECT max(Preco_Unit) FROM produtos;
-- Outra forma com todos juntos
SELECT
	avg(Preco_Unit) as Media_Preco,
    min(Preco_Unit) as Menor_Preco,
    max(Preco_Unit) as Maior_Preco
FROM produtos;

-- COUNT, AVG, etc com informações específicas precisa usar GROUP BY

-- GROUP BY
SELECT distinct Marca_Produto FROM produtos; -- primeiro vai buscar todas as marcas (distintas)

SELECT
	Marca_Produto,
    count(*)
FROM produtos
GROUP BY Marca_Produto
ORDER BY count(*) desc;

-- GROUP BY com filtro antes do agrupamento
SELECT * FROM clientes;
SELECT
	Escolaridade,
    count(*)
FROM clientes
WHERE Sexo = 'M' -- filtro antes do agrupamento
GROUP BY Escolaridade;

-- GROUP BY com filtro depois do agrupamento
SELECT
	Escolaridade,
	count(*)
FROM clientes
GROUP BY Escolaridade -- aqui agrupa a quantidade de cada tipo de escolaridade (46, 27, 21, 6)
HAVING count(*) >= 21; -- em cima do agrupamento mostrar so os valores acima de 21
