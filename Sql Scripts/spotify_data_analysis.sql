SELECT * FROM spotify;

-- describing table
SELECT *
FROM information_schema.columns
WHERE table_name = 'spotify';

-- Performing EDA
SELECT DISTINCT artist FROM spotify;
SELECT DISTINCT album_type FROM spotify;
SELECT DISTINCT channel FROM spotify;
SELECT DISTINCT most_played_on FROM spotify;
SELECT MAX(duration_min) FROM spotify;
SELECT MIN(duration_min) FROM spotify;

-- Identifying null songs
SELECT * FROM spotify
WHERE duration_min = 0;

-- Deleting null songs
DELETE FROM spotify
WHERE duration_min = 0;

SELECT * FROM spotify
WHERE duration_min = 0;

----------------------------------------------------------------------------------------------
-- Data Analysis : Easy Level
----------------------------------------------------------------------------------------------

/** Q1. Retrieve the names of all tracks that have more than 1 billion streams. **/

SELECT DISTINCT track , stream FROM spotify
WHERE stream > 1000000000
ORDER BY stream DESC;

/** Q2. List all albums along with their respective artists. **/

SELECT DISTINCT album, artist FROM spotify
ORDER BY 1;

/** Q3. Get the total number of comments for tracks where licensed = TRUE. **/

SELECT SUM(comments) AS total_comments
FROM spotify
WHERE licensed = TRUE;

/** Q4. Find all tracks that belong to the album type single. **/

SELECT * FROM spotify 
WHERE album_type = 'single';

/** Q5. Count the total number of tracks by each artist. **/

SELECT artist , COUNT(track) AS TotalTracks
FROM spotify
GROUP BY artist
ORDER BY 2 ASC;

----------------------------------------------------------------------------------------------
-- Data Analysis : Medium Level
----------------------------------------------------------------------------------------------

/** Q1. Calculate the average danceability of tracks in each album. **/

SELECT album , AVG(danceability) AS AverageDanceability
FROM spotify
GROUP BY album
ORDER BY AverageDanceability DESC;

/** Q2. Find the top 5 tracks with the highest energy values. **/

SELECT track , energy
FROM spotify
ORDER BY energy DESC
LIMIT 5;

/** Q3. List all tracks along with their views and likes where official_video = TRUE. **/

SELECT track , views , likes 
FROM spotify
WHERE official_video = TRUE
ORDER BY views DESC, likes DESC;

/** Q4. For each album, calculate the total views of all associated tracks. **/

SELECT album , SUM(views) AS Total_Views
FROM spotify
GROUP BY album
ORDER BY Total_Views DESC;

/** Q5. Retrieve the track names that have been streamed on Spotify more than YouTube. **/

SELECT DISTINCT track FROM spotify
WHERE most_played_on = 'Spotify';

----------------------------------------------------------------------------------------------
-- Data Analysis : Advanced Level
----------------------------------------------------------------------------------------------

/** Q1. Find the top 3 most-viewed tracks for each artist using window functions. **/

WITH cte AS 
(
SELECT * ,
ROW_NUMBER() OVER(PARTITION BY artist ORDER BY views DESC) AS rno
FROM spotify 
)

SELECT artist , track , views
FROM cte
WHERE rno <= 3;

/** Q2. Write a query to find tracks where the liveness score is above the average. **/

SELECT DISTINCT track , liveness
FROM spotify
WHERE liveness > (SELECT AVG(liveness) FROM spotify)
ORDER BY liveness ASC;

/** Q3. Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album. **/

WITH cte AS 
(
SELECT * ,
ROW_NUMBER() OVER(PARTITION BY album ORDER BY energy DESC) AS rno
FROM spotify 
)

SELECT album , ROUND(CAST(MAX(energy) - MIN(energy) AS NUMERIC), 3) AS Difference
FROM cte
GROUP BY album
ORDER BY album ASC;

/** Q4. Find tracks where the energy-to-liveness ratio is greater than 1.2. **/

SELECT DISTINCT artist, album , track , energy_liveness
FROM spotify
WHERE energy_liveness > 1.2
ORDER BY album;

/** Q5. Calculate the cumulative sum of likes for tracks ordered by the number of views, using window functions. **/

SELECT album , track , views , likes , 
SUM(likes) OVER(PARTITION BY album ORDER BY views) AS cumulative_likes
FROM spotify
ORDER BY album;

----------------------------------------------x--------------------------------------------------