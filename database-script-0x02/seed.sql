-- Sample Data for Airbnb Database

-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Kim', 'alice@example.com', 'hashed_pw1', '0712345678', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Brian', 'Otieno', 'brian@example.com', 'hashed_pw2', '0798765432', 'host'),
('33333333-3333-3333-3333-333333333333', 'Cindy', 'Achieng', 'cindy@example.com', 'hashed_pw3', '0788888888', 'guest');

-- Insert Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222',
 'Nairobi Apartment', 'Modern 2-bedroom apartment.', 'Nairobi, Kenya', 4500.00),

('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222',
 'Mombasa Beach House', 'Beachfront cottage with ocean view.', 'Mombasa, Kenya', 9000.00);

-- Insert Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
 '11111111-1111-1111-1111-111111111111', '2025-10-01', '2025-10-05', 18000.00, 'confirmed'),

('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
 '33333333-3333-3333-3333-333333333333', '2025-11-10', '2025-11-12', 18000.00, 'pending');

-- Insert Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('ccccccc1-cccc-cccc-cccc-ccccccccccc1',
 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 18000.00, 'credit_card');

-- Insert Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('ddddddd1-dddd-dddd-dddd-ddddddddddd1',
 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
 '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Very clean and modern.');

-- Insert Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1',
 '11111111-1111-1111-1111-111111111111',
 '22222222-2222-2222-2222-222222222222',
 'Hi, is the Nairobi apartment available next week?');
