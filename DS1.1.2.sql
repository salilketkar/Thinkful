SELECT trip_id, duration
FROM trips
WHERE 
duration > 500
ORDER BY duration 

SELECT * 
FROM stations
WHERE station_id = 84

SELECT mintemperatureF
FROM weather
WHERE ZIP = 94301