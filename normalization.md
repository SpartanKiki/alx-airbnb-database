# Database Normalization (3NF)

This document explains how the database design for the Airbnb project was normalized to Third Normal Form (3NF).

---

## 1. First Normal Form (1NF)
A table is in 1NF when:
- Each table has a primary key
- No repeating groups
- Each field contains atomic (single) values

### ✔ Our database meets 1NF:
- All tables have unique IDs (primary keys)
- No repeated groups (e.g., no multiple phone numbers in one field)
- All values are simple and atomic

---

## 2. Second Normal Form (2NF)
A table is in 2NF when:
- It is in 1NF
- All non-key attributes depend on the whole primary key

✔ Since all our tables use a **single-column primary key (UUID)**:
- No partial dependencies are possible
- All non-key attributes depend only on the table's primary key

---

## 3. Third Normal Form (3NF)
A table is in 3NF when:
- It is in 2NF
- There are no transitive dependencies  
  (non-key fields should not depend on other non-key fields)

### ✔ Our database meets 3NF:
- User table: email, name, phone depend only on user_id  
- Property table: host_id is a foreign key, not repeated info  
- Booking table stores IDs only (not names or property details)  
- Payment table stores booking_id only  
- Review table stores user_id and property_id, not redundant data  
- Message table stores only sender_id + recipient_id, not names

No table stores calculated or duplicated fields.

---

## ✔ Conclusion
The database is fully normalized to **Third Normal Form (3NF)**.  
All entities follow best practices for relational databases, ensuring data integrity and avoiding redundancy.
