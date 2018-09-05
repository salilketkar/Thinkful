-- Number 1
WITH temp
AS
(
SELECT date(start_date) start_date,max(duration) duration
FROM trips
GROUP BY date(start_date)
)

SELECT temp.start_date, temp.duration, weather.PrecipitationIn
FROM temp
JOIN weather
ON temp.start_date = weather.Date
WHERE weather.precipitationin <>'T' and weather.precipitationin >0 
ORDER BY duration DESC
-- Top three results show longest ride on a day where the precipitation was greater than 1 inch

--Number 2
2. 
WITH temp
AS
(
SELECT avg(bikes_available) average, station_id
FROM status
GROUP BY station_id

)
SELECT temp.average, temp.station_id, stations.name
FROM temp
JOIN stations
ON temp.station_id = stations.station_id
ORDER BY temp.average DESC

--5th St at Folsom St is full most often

--Number 3. 

WITH temp
AS
(
SELECT count(trip_id) number, start_station
FROM trips
GROUP BY start_station
)
SELECT dockcount, temp.start_station, temp.number
FROM stations
JOIN temp
ON temp.start_station = stations.name
ORDER BY stations.dockcount
 
 
--Number 4
WITH temp
AS
(
SELECT date(start_date) start_date,max(duration) duration
FROM trips
GROUP BY date(start_date)
)

SELECT temp.start_date, temp.duration, weather.PrecipitationIn
FROM temp
JOIN weather
ON temp.start_date = weather.Date
WHERE weather.precipitationin <>'T' and weather.precipitationin >0 
ORDER BY start_date
-- duration ordered by start date where precipitation is greater than 1 inch