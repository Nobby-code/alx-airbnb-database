-- seeding the created tables
-- User table
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('id_1', 'Norbert', 'Guda', 'norbert@gmail.com', 'hashed_pw1', '0713627939', 'admin', NOW()),
('id_2', 'Bob', 'Colimore', 'bob@gmail.com', 'hashed_pw2', '2345678901', 'host', NOW()),
('id_3', 'Carol', 'Achieng', 'carol@gmail.com', 'hashed_pw3', '3456789012', 'guest', NOW());

-- property
INSERT INTO property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('p1', 'id_1', 'Ariport View Flats', 'Cozy place near Airport', 'Nairobi', 120.00, NOW(), NOW()),
('p2', 'id_2', 'Mountain Viewt', 'Adjucent to CBD', 'Nairobi', 95.50, NOW(), NOW());

--booking
INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('b1', 'p1', 'id_1', '2025-06-01', '2025-06-05', 480.00, 'confirmed', NOW()),
('b2', 'p2', 'id_2', '2025-07-10', '2025-07-12', 191.00, 'pending', NOW());

--payment
INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('pay1', 'b1', 480.00, NOW(), 'credit_card');

--Review
INSERT INTO review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('r1', 'p1', 'id_1', 5, 'Amazing stay! Great view and clean apartment.', NOW()),
('r2', 'p2', 'id_2', 4, 'Nice cabin, but it was a bit cold at night.', NOW());

-- message
INSERT INTO message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('m1', 'u1', 'u2', 'Hi Bob, is the apartment available on June 1st?', NOW()),
('m2', 'u2', 'u1', 'Hi Alice, yes it is. You can go ahead and book.', NOW());

