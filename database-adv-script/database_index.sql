-- Indexes for users table 
CREATE INDEX idx_users_id ON users(id); 
CREATE INDEX idx_users_email ON users(email);

-- Indexes for booking table 
CREATE INDEX idx_booking_user_id ON booking(user_id); 
CREATE INDEX idx_booking_property_id ON booking(property_id);

-- Indexes for properties table 
CREATE INDEX idx_property_id ON property(id); 
CREATE INDEX idx_property_price ON property(price);

-- Explain analyze output
EXPLAIN ANALYZE
SELECT * 
FROM booking
WHERE user_id = 2 
ORDER BY booking_date DESC;
