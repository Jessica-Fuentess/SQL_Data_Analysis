-- Selecionar todas as linhas e colunas da tabela de pedidos
SELECT * FROM pedidos;

-- Selecionar apenas algumas colunas da tabela de clientes
SELECT 
	ID_Cliente, 
    Nome, 
    Data_Nascimento, 
    Email 
FROM clientes;

-- Trabalhar com valores distintos: DISTINCT
SELECT DISTINCT Marca_Produto from produtos;

-- Ordenar as informações de uma tabela
SELECT * FROM produtos
ORDER BY Preco_Unit ASC;

-- Ordenar duas informações de uma tabela
SELECT * FROM clientes
ORDER BY Nome ASC, Sobrenome DESC;

-- Ordenar as informações e limitar o numero de linhas
SELECT * FROM produtos
ORDER BY Preco_Unit DESC
LIMIT 8;

-- Filtros
SELECT * FROM clientes
WHERE Qtd_Filhos > 2
ORDER BY Nome;

SELECT * FROM clientes
WHERE Escolaridade = "Parcial";

-- Dois ou mais filtros
SELECT * FROM clientes
WHERE Sexo = "F" AND Qtd_Filhos = 2 AND Escolaridade = "Parcial"
ORDER BY Nome;

-- Dois ou mais filtros em uma única coluna
SELECT * FROM produtos
WHERE Marca_Produto IN ("DELL", "JBL");

SELECT * FROM produtos
WHERE Preco_Unit BETWEEN 1000 AND 3000;

SELECT * FROM produtos
WHERE Nome_Produto LIKE "%Not%";

SELECT * FROM clientes
WHERE Telefone IS null;
