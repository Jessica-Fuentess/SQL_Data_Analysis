-- SUBQUERY
-- 1. Quais produtos tem o preço unitario acima da média
-- media 1788
SELECT * FROM produtos
WHERE Preco_Unit >= (SELECT AVG(Preco_Unit) FROM produtos); 

-- 2. Quais produtos tem o custo unitario acima da media
-- media 626
SELECT * FROM produtos
WHERE Custo_Unit >= (SELECT AVG(Custo_Unit) FROM produtos);