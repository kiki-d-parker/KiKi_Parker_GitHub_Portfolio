-- Total Followers
SELECT followers AS "Total Followers"
FROM spotify_stats;

-- Total Singles
SELECT COUNT(title) AS "Total Singles"
FROM singles;

-- Total Single Streams
SELECT SUM(streams) AS "Total Single Streams"
FROM singles;

-- Total Studio Album Streams
SELECT SUM(streams) AS "Total Studio Album Streams"
FROM studio_albums;

-- Total Studio Albums
SELECT COUNT(title) AS "Total Studio Albums"
FROM studio_albums;

-- Popularity
SELECT popularity AS "Popularity"
FROM spotify_stats;

-- Top 10 Singles by Streams
SELECT title AS "Single",
    SUM(streams) AS "Streams"
FROM singles
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Top Studio Albums by Streams
SELECT title AS "Studio Album",
    SUM(streams) AS "Streams"
FROM studio_albums
GROUP BY 1
ORDER BY 2 DESC;

-- Most Streamed Single
SELECT title AS "Single",
    SUM(streams) AS "Streams"
FROM singles
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Year of Release of Studio Albums
SELECT YEAR(release_date) AS "Year",
    title AS "Studio Album"
FROM studio_albums
ORDER BY 1;

-- Most Streamed Studio Album
SELECT title AS "Studio Album",
    SUM(streams) AS "Streams"
FROM studio_albums
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;