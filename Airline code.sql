SELECT airline, COUNT(airline) FROM airlines_flights_data GROUP BY airline;
--Vistara is the most popular airline
SELECT airline, AVG(price) FROM airlines_flights_data GROUP BY airline;
--There is a difference between the airlines in pricing; Vistara and Air_India are the most expensive.
SELECT airline, AVG(duration) FROM airlines_flights_data GROUP BY airline;
--Vistara and Air_India have the longest average flight duration, implying their price is due to flight duration.
SELECT source_city, AVG(price) FROM airlines_flights_data group by source_city; 
--The departure city doesn't seem to make a massive difference on price.
--I want to fly from Delhi to Mumbai. Primarily I want it to be cheap and secondarily I want it to be further in the future so I can be prepared for holiday. 
SELECT * FROM airlines_flights_data WHERE source_city = 'Delhi' AND destination_city = 'Mumbai' ORDER BY price ASC,  days_left DESC;
