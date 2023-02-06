-- количество исполнителей в каждом жанре;
SELECT g.name, COUNT(ga.artist_id) FROM genres g 
JOIN genres_artists ga ON g.genres_id = ga.genres_id 
GROUP BY name;

-- количество треков, вошедших в альбомы 2019-2020 годов;
SELECT COUNT(t.track_id) FROM tracks t 
JOIN albums a ON t.album_id = a.album_id 
WHERE year_release BETWEEN 2019 AND 2020;

-- средняя продолжительность треков по каждому альбому;
SELECT a.name, AVG(t.length) FROM tracks t 
JOIN albums a ON t.album_id = a.album_id 
GROUP BY a.name;

-- все исполнители, которые не выпустили альбомы в 2020 году;
SELECT name FROM artists a  
EXCEPT
SELECT ar.name FROM artists_albums aa
JOIN albums al ON aa.album_id = al.album_id 
JOIN artists ar ON ar.artist_id = aa.artist_id
WHERE al.year_release = 2020
GROUP BY ar.name;

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT c.name FROM collection c 
JOIN collection_tracks ct ON c.collection_id = ct.collection_id 
JOIN tracks t ON ct.track_id = t.track_id 
JOIN albums a ON t.album_id = a.album_id 
JOIN artists_albums aa ON a.album_id = aa.album_id 
JOIN artists a2 ON aa.artist_id = a2.artist_id 
WHERE a2.name = 'Frank Sinatra'

-- название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.name, COUNT(g.name) FROM albums a 
JOIN artists_albums aa ON a.album_id = aa.album_id 
JOIN artists a2 ON aa.artist_id = a2.artist_id 
JOIN genres_artists ga ON a2.artist_id = ga.artist_id 
JOIN genres g ON ga.genres_id = g.genres_id 
GROUP BY a.name 
HAVING COUNT(g.genres_id) > 1;

-- наименование треков, которые не входят в сборники;
SELECT t.name FROM tracks t 
LEFT JOIN collection_tracks ct ON t.track_id = ct.track_id 
WHERE ct.track_id IS NULL 

-- исполнителя(-ей), написавшего самый короткий по продолжительности 
-- трек (теоретически таких треков может быть несколько);
SELECT a.name FROM artists a 
JOIN artists_albums aa ON a.artist_id = aa.artist_id 
JOIN albums a2 ON aa.album_id = a2.album_id 
JOIN tracks t ON a2.album_id = t.album_id 
WHERE t.length = 
	(SELECT MIN(length) FROM tracks);

-- название альбомов, содержащих наименьшее количество треков.
SELECT a.name, COUNT(t.track_id) FROM albums a 
JOIN tracks t ON a.album_id = t.album_id 
GROUP BY a.name
HAVING COUNT(t.track_id) = 
	(SELECT COUNT(t.track_id) FROM tracks t
	JOIN albums a ON t.album_id = a.album_id 
	GROUP BY a.album_id 
	ORDER BY COUNT(t.track_id)
	LIMIT 1);
      