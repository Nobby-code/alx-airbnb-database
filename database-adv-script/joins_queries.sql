-- a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.
SELECT
  b.booking_id, 
  b.property_id, 
  b.start_date, 
  b.end_date, 
  b.total_price, 
  b.status, 
  b.created_at, 
  u.first_name,
  u.user_id
  u.email, 
  u.phone_number
FROM 
  booking b
INNER JOIN 
  users u ON  b.user_id = u.user_id;

-- a query using aLEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.
SELECT
  p.property_id,
  p.name,
  p.location,
  p.description,
  r.review_id,
  r.rating,
  r.comment
FROM
  property p
LEFT JOIN 
  review r on p.property_id = r.property_id;

-- a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
SELECT
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,
  u.phone_number,
  b.booking_id,
  b.property_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.cteated_at
FROM
  users u
FULL OUTER JOIN
  booking b on u.user_id = b.user_id;
