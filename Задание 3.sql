--Количество исполнителей в каждом жанре
SELECT title, COUNT(name) FROM executor
    JOIN genreexecutor ON executor_id = executor.id
    JOIN genre ON genreexecutor.genre_id = genre.id
    GROUP BY title;
    

--Количество треков, вошедших в альбомы 2019-2020 годов   
SELECT "year of release",COUNT(track.title) FROM album
    JOIN track   ON album.id = track.album_id
    WHERE album."year of release"  >= 2019 AND album."year of release" <= 2020
    GROUP BY "year of release";
    

   
--Средняя продолжительность треков по каждому альбому   
SELECT album.title ,AVG(track.duracion) FROM album
    JOIN track  ON album.id = track.album_id
    GROUP BY album.title;
    
   
--Все исполнители, которые не выпустили альбомы в 2020 году   
SELECT executor."name"  FROM album
    JOIN executoralbum ON album.id = executoralbum.album_id
    JOIN executor  ON executoralbum.executor_id = executor.id
    where not album."year of release" = 2020
	group by executor."name";
    
   

--Названия сборников, в которых присутствует конкретный исполнитель
select collection.title from collection 
JOIN collectiontrack ON collectiontrack.collection_id = collection.id 
JOIN track ON collectiontrack.track_id = track.id
JOIN album  ON track.album_id = album.id
JOIN executoralbum  ON album.id = executoralbum.album_id
JOIN executor ON executoralbum.executor_id = executor.id
WHERE executor.name LIKE 'Люся Чеботина';