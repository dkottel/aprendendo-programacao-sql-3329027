-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS total_gasto
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId
GROUP BY id_cliente;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
SELECT
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS total_gasto
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId
GROUP BY id_cliente
HAVING SUM(inv.Total) >= 30;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS total_gasto,
MAX(inv.Total) AS compra_maior_valor
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId
GROUP BY id_cliente
HAVING SUM(inv.Total) >= 30;