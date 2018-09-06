SELECT *
FROM listings
WHERE room_type = 'Entire home/apt'
ORDER BY price DESC
--9210 euros is the max price for a private room.  I woudl be skeptical of this listing considering it has 0 days of availability.
--8000 euros is the max price for an entire home/apt.  It has never been reviewed. 

SELECT count(id), neighbourhood_group
FROM listings
GROUP BY neighbourhood_group
ORDER BY count(id) DESC
--Eixample has the greatest number of airbnb properties listed

SELECT count(id), neighbourhood
FROM listings
WHERE  neighbourhood_group= 'Eixample'
GROUP BY neighbourhood
ORDER BY count(id) DESC

--Within the Eixample neighborhood, la Drea de l'Eixample has the most airbnb listings.availability_365

SELECT avg(price), neighbourhood_group
FROM listings
WHERE number_of_reviews > 10
GROUP BY neighbourhood_group
ORDER BY avg(price) DESC
--Highest average price for listings with over 10 reviews is 105.95 euros in Eixample.  This is also the neighborhood with the greatest number of listings.availability_365

WITH temp
AS
(
SELECT strftime('%m', date) as month, available, listing_id
FROM calendar
WHERE available = 't'
)
SELECT count(available), month
FROM temp
GROUP BY month
ORDER BY count(available) DESC

--January and December are the most popular months to visit Barcelona in terms of number of days airbnbs were booked.  


