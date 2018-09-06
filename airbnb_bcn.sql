SELECT * 
FROM listings
WHERE room_type = 'Entire home/apt'
ORDER BY price DESC


--9120 is the max price for a private room.  I would be skeptical of this listing considering has 0 days of availability .
--8000 is the max price for an entire home/apt.  It has never been reviewed.

SELECT count(id), neighbourhood_group
FROM listings
GROUP BY neighbourhood_group
ORDER BY count(id) DESC

-- Eixample has the greatest number of airbnb properties listed.  

SELECT count(id), neighbourhood
FROM listings
WHERE neighbourhood_group = 'Eixample'
GROUP BY neighbourhood
ORDER BY count(id) DESC

--Within the Eixample neighbourhood, the la Dreta de l'Eixample area has the most airbnb listings

SELECT avg(price), neighbourhood_group
FROM listings
WHERE number_of_reviews >10
GROUP BY neighbourhood_group
ORDER BY avg(price) DESC
--Highest average price for listings with over 10 reviews is 105.95 euros in Eixample.  This is also the neighborhood with the greatest number of listings. 

