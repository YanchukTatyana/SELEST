--Название и продолжительность самого длинного трека
SELECT title, duracion FROM track
	ORDER BY duracion DESC
	LIMIT 1
	
--Название треков, продолжительностью не менее 3.5 минут	
SELECT title from track
	WHERE duracion >= 3.5
	
	
--Название сборников, вышедших в период с 2018 - 2020 год
SELECT title FROM collection
	WHERE "year of release" BETWEEN 2018 AND 2020
	
	
--Исполнитель чье имя состоит из одного слова
SELECT name FROM executor 
	WHERE name NOT LIKE '% %';
	

--Название треков, которые содержат слово "мой" или "my"
SELECT title FROM track
	WHERE title LIKE 'Мой%';