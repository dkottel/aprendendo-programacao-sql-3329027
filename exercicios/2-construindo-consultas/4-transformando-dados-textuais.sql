-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT
CustomerId as ID,
FirstName as Nome,
LastName as Sobrenome,
Address as Endereço
FROM
customers
WHERE
Country LIKE 'Brazil'

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT
CustomerId as ID,
FirstName as Nome,
UPPER(LastName) as Sobrenome,
Address as Endereço
FROM
customers
WHERE
Country LIKE 'Brazil'

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT
CustomerId as ID,
LOWER(FirstName) as Nome,
LastName as Sobrenome,
Address as Endereço
FROM
customers
WHERE
Country LIKE 'Brazil'

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT
CustomerId as ID,
LOWER(FirstName) as Nome,
UPPER(LastName) as Sobrenome,
FirstName || ' ' || LastName AS nome_completo,
Address as Endereço
FROM
customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT
CustomerId as ID,
LOWER(FirstName) as Nome,
UPPER(LastName) as Sobrenome,
FirstName || ' ' || LastName AS nome_completo,
REPLACE(Address,'Av.','Avenida') as Endereço
FROM
customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa(%) para construir padrões textuais
SELECT DISTINCT
CustomerId as ID,
LOWER(FirstName) as Nome,
UPPER(LastName) as Sobrenome,
FirstName || ' ' || LastName AS nome_completo,
Address as Endereço
FROM
customers
WHERE
Country LIKE 'Bra%';