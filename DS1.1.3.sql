SELECT 
Date,
max(MaxTemperatureF)
FROM weather

SELECT 
start_station,
COUNT(trip_id)  number
FROM trips
GROUP BY start_station

SELECT trip_id,
min(duration)
FROM trips

SELECT end_station,
avg(duration)
FROM trips
GROUP BY end_station