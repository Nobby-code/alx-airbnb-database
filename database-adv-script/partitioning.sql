-- create the parent partition table
CREATE TABLE booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    amount DECIMAL,
    payment_status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- Step 2: Create child partitions for each year (adjust as needed)
CREATE TABLE booking_2025 PARTITION OF booking
    FOR VALUES FROM ('2024-01-01') TO ('2024-12-31');

CREATE TABLE booking_2025 PARTITION OF booking
    FOR VALUES FROM ('2025-01-01') TO ('2025-05-01');

-- setst performance
EXPLAIN ANALYZE
SELECT * FROM booking
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

