use avaliacao_22a;

-- Selecionar Livros Disponíveis
SELECT * 
FROM Livros 
WHERE disponivel = TRUE;

-- Selecionar por Editora
SELECT * 
FROM Livros 
WHERE editora = 'HarperCollins';

-- Selecionar por Ano de Publicação
SELECT * 
FROM Livros 
WHERE ano_publicacao 
BETWEEN 2000 AND 2010;

-- Selecionar com COUNT e HAVING
SELECT autor, COUNT(*) as quantidade_livros
FROM Livros
GROUP BY autor
HAVING quantidade_livros > 3;

-- Selecionar com LIKE
SELECT * 
FROM Livros 
WHERE titulo LIKE '%Senhor%';

-- Selecionar com IN
SELECT * 
FROM Livros 
WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');

-- Selecionar com DISTINCT
SELECT
DISTINCT idioma 
FROM Livros;

-- Selecionar com BETWEEN
SELECT * 
FROM Livros 
WHERE quantidade_paginas 
BETWEEN 200 AND 400;

-- Selecionar Títulos e Anos de Publicação
SELECT titulo, ano_publicacao 
FROM Livros 
ORDER BY ano_publicacao;