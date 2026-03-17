-- Total Bookings
SELECT COUNT(*) AS total_bookings FROM rides;

-- Total revenue
SELECT SUM(booking_value) AS total_revenue FROM rides;

-- Completed Rides
SELECT COUNT(*) AS rides_completed FROM rides
WHERE booking_status = 'Completed';

--Completion Rate
SELECT 
	ROUND(
		SUM(CASE WHEN booking_status LIKE 'Completed' THEN 1 ELSE 0 END) * 100.0 
		/ COUNT(*), 2
	) AS completion_rate
FROM rides;

-- Cancellation rate
SELECT 
	ROUND(
		SUM(CASE WHEN booking_status LIKE 'Cancelled by Customer' THEN 1 ELSE 0 END) * 100.0 
		/ COUNT(*), 2
	) AS cancellation_rate_customers
FROM rides;

-- Drivers cancellation rate
SELECT 
	ROUND(
		SUM(CASE WHEN booking_status LIKE 'Cancelled by Driver' THEN 1 ELSE 0 END) * 100.0 
		/ COUNT(*), 2
	) AS cancellation_rate_drivers
FROM rides;

-- Vehicle type distribution
SELECT vehicle_type, COUNT(*) AS vehicle_count FROM rides
GROUP BY vehicle_type
ORDER BY vehicle_count DESC;

-- Top 5 pickup locations
SELECT pickup_location, COUNT(*) AS location_count FROM rides
GROUP BY pickup_location
ORDER BY location_count DESC
LIMIT 5;

-- Average ride distance
SELECT ROUND(AVG(ride_distance)::NUMERIC,2) AS average_distance FROM rides;

-- Average booking value
SELECT ROUND(AVG(booking_value)::NUMERIC,2) AS average_booking_value FROM rides;

-- Average Driver rating
SELECT ROUND(AVG(driver_ratings)::NUMERIC,2) AS average_driver_ratings FROM rides;

-- Average Customer rating
SELECT ROUND(AVG(customer_ratings)::NUMERIC,2) AS average_customer_ratings FROM rides;

-- Peak booking hours
SELECT EXTRACT(HOUR FROM time) AS hour, COUNT(*) AS total_rides
FROM rides
GROUP BY hour
ORDER BY total_rides DESC;

-- Time Slot Analysis
SELECT 
CASE 
    WHEN EXTRACT(HOUR FROM time) BETWEEN 6 AND 12 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM time) BETWEEN 12 AND 18 THEN 'Afternoon'
    WHEN EXTRACT(HOUR FROM time) BETWEEN 18 AND 24 THEN 'Evening'
    ELSE 'Night'
END AS time_slot,
COUNT(*) AS total_rides
FROM rides
GROUP BY time_slot
ORDER BY total_rides DESC;

-- Payment method usage
SELECT payment_method, COUNT(*) AS total FROM rides
GROUP BY payment_method
ORDER BY total DESC;

-- Rides status distribution
SELECT booking_status, COUNT(*) AS total
FROM rides
GROUP BY booking_status;

-- Top 5 highest revenue generating locations
SELECT pickup_location, SUM(booking_value) AS revenue FROM rides
GROUP BY pickup_location
ORDER BY revenue DESC
LIMIT 5;