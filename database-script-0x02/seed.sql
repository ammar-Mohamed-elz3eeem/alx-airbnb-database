INSERT INTO users (user_id, first_name, last_name, email, phone_number, password_hash, role) VALUES
('1', 'John', 'Doe', 'john.doe@example.com', '1234567890', 'password123', 'host'),
('2', 'Jane', 'Smith', 'jane.smith@example.com', '0987654321', 'password456', 'guest'),
('3', 'Alice', 'Johnson', 'alice.johnson@example.com', '1122334455', 'password789', 'guest');

INSERT INTO properties (property_id, host_id, name, description, location, price_per_night, created_at, updated_at) VALUES 
('1', '1', 'Cozy Beach House', 'Beautiful beachfront property with ocean views', 'Malibu, CA', 350.00, NOW(), NOW()),
('2', '1', 'Mountain Cabin', 'Rustic cabin in the woods with hiking trails nearby', 'Aspen, CO', 200.00, NOW(), NOW()),
('3', '1', 'Downtown Loft', 'Modern loft in the heart of the city', 'New York, NY', 275.00, NOW(), NOW()),
('4', '2', 'Seaside Villa', 'Luxurious villa with a private beachfront', 'Maui, HI', 400.00, NOW(), NOW()),
('5', '2', 'Mountain Lodge', 'Charming lodge nestled in the mountains', 'Aspen, CO', 250.00, NOW(), NOW()),
('6', '3', 'Beachfront Cottage', 'Cozy cottage with a private beach access', 'Miami, FL', 220.00, NOW(), NOW()),
('7', '3', 'City View Apartment', 'Spacious apartment with city views', 'New York, NY', 300.00, NOW(), NOW());

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('1', '1', '2', '2024-01-15', '2024-01-20', 1750.00, 'confirmed', NOW()),
('2', '2', '3', '2024-02-01', '2024-02-05', 800.00, 'confirmed', NOW()),
('3', '3', '2', '2024-03-10', '2024-03-12', 550.00, 'pending', NOW()),
('4', '4', '1', '2024-04-01', '2024-04-05', 1600.00, 'confirmed', NOW()),
('5', '5', '3', '2024-05-15', '2024-05-20', 1250.00, 'confirmed', NOW()),
('6', '6', '2', '2024-06-01', '2024-06-05', 880.00, 'pending', NOW()),
('7', '7', '1', '2024-07-10', '2024-07-12', 660.00, 'confirmed', NOW());

INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
('1', '1', '2', 5, 'Amazing beach house! The views were spectacular.', NOW()),
('2', '2', '3', 4, 'Great cabin, perfect for a weekend getaway.', NOW()),
('3', '3', '2', 5, 'Modern loft in the heart of the city. Loved it!', NOW()),
('4', '4', '1', 4, 'Luxurious villa with a private beachfront. Would recommend.', NOW()),
('5', '5', '3', 5, 'Charming lodge nestled in the mountains. Perfect getaway.', NOW()),
('6', '6', '2', 3, 'Cozy cottage with a private beach access. Good value for the price.', NOW()),
('7', '7', '1', 5, 'Spacious apartment with city views. Highly recommended.', NOW());

INSERT INTO messages (message_id, booking_id, sender_id, recipient_id, content, created_at) VALUES
('1', '1', '1', '2', 'Hello, I have a question about the property.', NOW()),
('2', '2', '2', '1', 'Thank you for your message! I will get back to you soon.', NOW()),
('3', '3', '1', '3', 'I am interested in booking the property. When is it available?', NOW()),
('4', '3', '3', '1', 'The property is available from January 15th onwards. Would you like to proceed with the booking?', NOW());


INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('1', '1', 1750.00, NOW(), 'credit_card'),
('2', '2', 800.00, NOW(), 'paypal'),
('4', '4', 1600.00, NOW(), 'stripe'),
('5', '5', 1250.00, NOW(), 'paypal'),
('7', '7', 660.00, NOW(), 'credit_card');
