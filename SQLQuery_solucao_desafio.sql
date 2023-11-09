
-- 1. Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM
	Filmes


-- 2. Buscar o nome e ano dos filmes, ordenados por ano ordem  crescente pelo ano
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
ORDER BY
	Ano
ASC


-- 3. Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Nome = 'De Volta para o Futuro'


-- 4. Buscar os filmes lan�ados em 1997
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE Ano = '1997'


-- 5. Buscar os filmes lan�ados AP�S o ano 2000
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE Ano > '2000'


-- 6. Buscar os filmes com a dura��o maior que 100 e menor que 150, ordenado pela dura��o em ordem crescente
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE
	Duracao > '100' AND Duracao < '150'
ORDER BY
	Duracao
ASC


-- 7. Buscar a quantidade de filmes lan�ados no ano, agrupando por ano, ordenado pela "quantidade" em ordem decrescente
SELECT
	Ano, COUNT(Ano) Quantidade
FROM
	Filmes
GROUP BY
	Ano
ORDER BY
	Quantidade
DESC


-- 8. Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	*
FROM
	Atores
WHERE
	Genero = 'M' 
ORDER BY 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero


-- 9. Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	*
FROM
	Atores
WHERE
	GENERO = 'F' 
ORDER BY
	PrimeiroNome,
	UltimoNome,
	Genero,
	Id


-- 10. Buscar o nome do filme e o g�nero
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes F
INNER JOIN
	FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN
	Generos G ON G.Id = FG.IdGenero


-- 11. Buscar o nome do filme e o g�nero do tipo 'Mist�rio'
SELECT
	F.Nome,
	G.Genero
FROM 
	Filmes F
INNER JOIN
	FilmesGenero FG ON fg.IdFilme = F.Id
INNER JOIN
	Generos G ON G.Id = FG.IdGenero
WHERE
	G.Genero = 'Mist�rio'


-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM
	Filmes F
INNER JOIN 
	ElencoFilme EF ON EF.IdFilme = F.Id
INNER JOIN
	Atores A ON A.Id = EF.IdAtor

