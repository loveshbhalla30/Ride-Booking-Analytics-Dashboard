--Renaming columns to actual column names
ALTER TABLE rides RENAME COLUMN col1 To date;
ALTER TABLE rides RENAME COLUMN col2 To time;
ALTER TABLE rides RENAME COLUMN col3 To booking_id;
ALTER TABLE rides RENAME COLUMN col4 To booking_status;
ALTER TABLE rides RENAME COLUMN col5 To customer_id;
ALTER TABLE rides RENAME COLUMN col6 To vehicle_type;
ALTER TABLE rides RENAME COLUMN col7 To pickup_location;
ALTER TABLE rides RENAME COLUMN col8 To drop_location;
ALTER TABLE rides RENAME COLUMN col9 To avg_vtat;
ALTER TABLE rides RENAME COLUMN col10 To avg_ctat;
ALTER TABLE rides RENAME COLUMN col11 To cancelled_rides_by_customers;
ALTER TABLE rides RENAME COLUMN col12 To reason_for_cancelling_customers;
ALTER TABLE rides RENAME COLUMN col13 To cancelled_rides_by_driver;
ALTER TABLE rides RENAME COLUMN col14 To driver_cancelling_reason;
ALTER TABLE rides RENAME COLUMN col15 To incomplete_rides;
ALTER TABLE rides RENAME COLUMN col16 To incomplete_rides_reason;
ALTER TABLE rides RENAME COLUMN col17 To booking_value;
ALTER TABLE rides RENAME COLUMN col18 To ride_distance;
ALTER TABLE rides RENAME COLUMN col19 To driver_ratings;
ALTER TABLE rides RENAME COLUMN col20 To customer_ratings;
ALTER TABLE rides RENAME COLUMN col21 To payment_method;

-- "null" text → actual NULL
UPDATE rides SET booking_value = NULL WHERE booking_value = 'null';
UPDATE rides SET ride_distance = NULL WHERE ride_distance = 'null';
UPDATE rides SET driver_ratings = NULL WHERE driver_ratings = 'null';
UPDATE rides SET customer_ratings = NULL WHERE customer_ratings = 'null';
UPDATE rides SET avg_vtat = NULL WHERE avg_vtat = 'null';
UPDATE rides SET avg_ctat = NULL WHERE avg_ctat = 'null';
UPDATE rides SET incomplete_rides = NULL WHERE incomplete_rides = 'null';
UPDATE rides SET cancelled_rides_by_customers = NULL WHERE cancelled_rides_by_customers = 'null';
UPDATE rides SET cancelled_rides_by_driver = NULL WHERE cancelled_rides_by_driver = 'null';

-- empty → NULL
UPDATE rides SET ride_distance = NULL WHERE ride_distance = '';
UPDATE rides SET booking_value = NULL WHERE booking_value = '';

--NULL → 0 where needed
UPDATE rides SET cancelled_rides_by_customers = 0 WHERE cancelled_rides_by_customers IS NULL;
UPDATE rides SET cancelled_rides_by_driver = 0 WHERE cancelled_rides_by_driver IS NULL;
UPDATE rides SET incomplete_rides = 0 WHERE incomplete_rides IS NULL;
UPDATE rides SET booking_value = 0 WHERE booking_value IS NULL;

-- quotes remove
UPDATE rides SET booking_id = REPLACE(booking_id, '"', '');
UPDATE rides SET customer_id = REPLACE(customer_id, '"', '');

--Providing the datatypes to columns with reference to the data
ALTER TABLE rides
ALTER COLUMN date TYPE DATE USING date::DATE;

ALTER TABLE rides
ALTER COLUMN time TYPE TIME USING time::TIME;

ALTER TABLE rides 
ALTER COLUMN avg_vtat TYPE FLOAT 
USING avg_vtat::FLOAT;

ALTER TABLE rides 
ALTER COLUMN avg_ctat TYPE FLOAT 
USING avg_ctat::FLOAT;

ALTER TABLE rides 
ALTER COLUMN incomplete_rides TYPE INT 
USING incomplete_rides::INT;

ALTER TABLE rides 
ALTER COLUMN booking_value TYPE FLOAT 
USING booking_value::FLOAT;

ALTER TABLE rides 
ALTER COLUMN ride_distance TYPE FLOAT 
USING ride_distance::FLOAT;

ALTER TABLE rides 
ALTER COLUMN driver_ratings TYPE FLOAT 
USING driver_ratings::FLOAT;

ALTER TABLE rides 
ALTER COLUMN customer_ratings TYPE FLOAT 
USING customer_ratings::FLOAT;

ALTER TABLE rides 
ALTER COLUMN cancelled_rides_by_customers TYPE INT 
USING cancelled_rides_by_customers::INT;

ALTER TABLE rides 
ALTER COLUMN cancelled_rides_by_driver TYPE INT 
USING cancelled_rides_by_driver::INT;

ALTER TABLE rides 
ALTER COLUMN incomplete_rides TYPE INT 
USING incomplete_rides::INT;