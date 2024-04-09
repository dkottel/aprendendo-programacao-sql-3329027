-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country as pais,
State as estado_sigla,
CASE
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  ELSE 'Estado Desconhecido'
END AS Estado
FROM
customers
WHERE
Country LIKE 'Brazil'