-- Original complex query with full joins
SELECT 
    b.booking_id AS booking Id,
    b.start_date,
    u.user_id AS user Id,
    u.first_name AS First Name,
    u.email,
    p.property_id AS property Id,
    p.name AS property name,
    p.location,
    pay.payment_id AS payment id,
    pay.amount
FROM 
    booking b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    property p ON b.property_id = p.id
JOIN 
    payment pay ON b.payment_id = pay.id;
WHERE 
    pay.status = 'completed'
    AND p.location = 'Nairobi';
