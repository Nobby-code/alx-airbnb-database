-- Objective: Identify and create indexes to improve query performance.
-- Identify high-usage columns in your User, Booking, and Property tables (e.g., columns used in WHERE, JOIN, ORDER BY clauses).
-- Write SQL CREATE INDEX commands to create appropriate indexes for those columns and save them on database_index.sql
-- Measure the query performance before and after adding indexes using EXPLAIN or ANALYZE.

-- Indexes for users table
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_users_email ON users(email);

-- Indexes for bookings table
CREATE INDEX idx_booking_user_id ON booking(user_id);
CREATE INDEX idx_booking_property_id ON booking(property_id);

-- Indexes for properties table
CREATE INDEX idx_property_id ON property(id);
CREATE INDEX idx_property_location ON property(location);
CREATE INDEX idx_property_price ON property(price);
