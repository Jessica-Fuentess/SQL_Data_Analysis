-- JOIN
-- 1. Relacione as tabelas Produtos e Categorias
SELECT 
	produtos.Nome_Produto,
    produtos.ID_Categoria,
    produtos.Marca_Produto,
    categorias.Categoria
FROM produtos
INNER JOIN categorias
ON produtos.ID_Categoria = categorias.ID_Categoria;

-- 2. Relacione as tabelas de Produtos com Pedidos
SELECT 
	pedidos.Data_Venda,
    pedidos.ID_Produto,
    pedidos.Qtd_Vendida,
    produtos.Nome_Produto
FROM pedidos
INNER JOIN produtos
ON pedidos.ID_Produto = produtos.ID_Produto;

-- 3. Total de receita por marca de produto
SELECT
    produtos.Marca_Produto,
    SUM(pedidos.Receita_Venda)
FROM pedidos
INNER JOIN produtos -- primeiro faz o inner join pra depois agrupar
ON pedidos.ID_Produto = produtos.ID_Produto
GROUP BY produtos.Marca_Produto;

-- 4. Mostrar o custo de venda por produto
SELECT -- SQL só mostra no resultado o que está no SELECT
	produtos.ID_Produto, -- menciona o ID aqui
	produtos.Nome_Produto, -- menciona o produto aqui
    SUM(pedidos.Custo_Venda) -- so mencionada a soma aqui
FROM pedidos
INNER JOIN produtos
ON pedidos.ID_Produto = produtos.ID_Produto
GROUP BY 
	produtos.ID_Produto, -- menciona o ID aqui
	produtos.Nome_Produto; -- menciona o produto aqui