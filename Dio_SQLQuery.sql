SELECT * FROM Filmes;

-- 1
SELECT 
	Nome,
	ano
FROM Filmes;

-- 2
SELECT 
	Nome,
	ano,
	Duracao
FROM Filmes
ORDER BY ano ASC;

-- 3
SELECT 
	Nome,
	ano,
	Duracao
FROM Filmes
WHERE Nome = 'de volta para o futuro';

-- 4
SELECT 
	Nome,
	ano,
	Duracao
FROM Filmes
WHERE ano = 1997;

-- 5
SELECT 
	Nome,
	ano,
	Duracao
FROM Filmes
WHERE ano > 2000;

-- 6
SELECT 
	Nome,
	ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;

-- 7
SELECT
	ano,
	COUNT(Nome) Quantidade
FROM Filmes
GROUP BY ano
ORDER BY Quantidade DESC;

-- 8
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F';

-- 10
SELECT 
    F.Nome AS Nome,
    G.Genero AS Genero
FROM 
	FilmesGenero FG
INNER JOIN
	Filmes F ON FG.IdFilme = F.Id
INNER JOIN 
    Generos G ON FG.IdGenero = G.Id;

-- 11
SELECT 
    F.Nome AS Nome,
    G.Genero AS Genero
FROM 
	FilmesGenero FG
INNER JOIN
	Filmes F ON FG.IdFilme = F.Id
INNER JOIN 
    Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

-- 12
SELECT 
	F.Nome AS Nome,
	A.PrimeiroNome AS PrimeiroNome,
	A.UltimoNome AS UltimoNome,
	E.Papel AS Papel
FROM 
	ElencoFilme E
INNER JOIN 
	Filmes F ON E.IdFilme = F.Id
INNER JOIN 
	Atores A ON E.IdAtor = A.Id

