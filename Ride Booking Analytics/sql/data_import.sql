CREATE TABLE rides (
   col1 TEXT,
	col2 TEXT,
	col3 TEXT,
	col4 TEXT,
	col5 TEXT,
	col6 TEXT,
	col7 TEXT,
	col8 TEXT,
	col9 TEXT,
	col10 TEXT,
	col11 TEXT,
	col12 TEXT,
	col13 TEXT,
	col14 TEXT,
	col15 TEXT,
	col16 TEXT,
	col17 TEXT,
	col18 TEXT,
	col19 TEXT,
	col20 TEXT,
	col21 TEXT
);

-- PSQL query to import data
\copy rides FROM 'C:\Users\HP\Desktop\Ride Booking Analytics\data\ncr_ride_bookings.csv' DELIMITER ',' CSV HEADER QUOTE '"';