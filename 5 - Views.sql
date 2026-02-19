-- VIEWS
CREATE VIEW viewClientesM AS
SELECT * FROM clientes
WHERE Sexo = 'M';

-- Para vizualizar a view
SELECT * FROM viewClientesM;