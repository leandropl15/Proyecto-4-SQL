-- EJERCICIO 1
SELECT flight_id, status
FROM bookings.flights
WHERE status = 'On Time';


-- EJERCICIO 2
SELECT *
FROM bookings.bookings
WHERE total_amount > 1000000;


-- EJERCICIO 3
SELECT *
FROM bookings.airplanes_data;


-- EJERCICIO 4
SELECT f.flight_id
FROM bookings.flights AS f
JOIN bookings.routes AS r ON f.route_no = r.route_no
WHERE r.airplane_code = '733';


-- EJERCICIO 5
SELECT *
FROM bookings.tickets
WHERE passenger_name ILIKE 'Irina%';


-- EJERCICIO 6
SELECT city->>'en' AS ciudad, COUNT(*) AS cantidad_aeropuertos
FROM bookings.airports_data
GROUP BY city->>'en'
HAVING COUNT(*) > 1;


-- EJERCICIO 7
SELECT r.airplane_code, COUNT(f.flight_id) AS numero_vuelos
FROM bookings.flights AS f
JOIN bookings.routes AS r  ON f.route_no = r.route_no
GROUP BY r.airplane_code
ORDER BY numero_vuelos DESC;


-- EJERCICIO 8
SELECT book_ref, COUNT(*) AS numero_billetes
FROM bookings.tickets
GROUP BY book_ref
HAVING COUNT(*) > 1;



