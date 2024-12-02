# Normalization

## 1NF

- Each column in a table should have a unique name.
- Each column should have a single, well-defined data type.
- Each column should have a single, unambiguous meaning.

## 2NF

All tables are in 2NF because:
- They are in 1NF
- All non-key attributes are fully functionally dependent on the primary key
- No partial dependencies exist

## 3NF

The database is in 3NF because:
- All tables are in 2NF
- No transitive dependencies exist between non-key attributes

Analysis by table:

### User
- All attributes (first_name, last_name, email, etc.) depend directly on user_id
- No transitive dependencies

### Property 
- All attributes depend directly on property_id
- host_id is a foreign key reference, not a transitive dependency
- No transitive dependencies between price, location, description etc.

### Booking
- All attributes depend directly on booking_id
- property_id and user_id are foreign key references
- total_price is calculated from nights booked * property price but is stored for record-keeping
- No transitive dependencies

### Payment
- All attributes depend directly on payment_id
- booking_id is a foreign key reference
- No transitive dependencies between amount, payment_method etc.

### Review
- All attributes depend directly on review_id
- property_id and user_id are foreign keys
- No transitive dependencies between rating and comment

### Message
- All attributes depend directly on message_id
- sender_id and recipient_id are foreign keys
- No transitive dependencies

## Conclusion

The database is in 3NF because:
- All tables are in 2NF
- No transitive dependencies exist between non-key attributes
