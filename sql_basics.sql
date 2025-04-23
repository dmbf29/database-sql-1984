-- SQL - Structure Query Language
-- SELECT column_name FROM table_name

-- SELECT first_name, last_name FROM doctors;

-- give me everything about doctors
-- SELECT * FROM doctors;

-- filtering
-- SELECT * FROM doctors
-- WHERE column_name = value;
-- SELECT * FROM doctors
-- WHERE id = 3;

-- get all the doctors above 40
-- SELECT * FROM doctors
-- WHERE age > 40;

-- SELECT * FROM doctors
-- WHERE specialty = 'Psychology';

-- LIKE + % partial matches
-- SELECT * FROM doctors
-- WHERE specialty LIKE '%Surgery%'

-- Multiple conditions
-- AND
-- SELECT * FROM doctors
-- WHERE specialty LIKE '%Surgery%'
-- AND age > 20;

-- OR
-- SELECT * FROM doctors
-- WHERE specialty LIKE '%Surgery%'
-- OR age > 20

-- Sorting -> ORDER BY
-- SELECT * FROM doctors
-- WHERE specialty LIKE '%Surgery%'
-- ORDER BY age ASC;

-- Aggregate
-- COUNT()
-- AVG()
-- SUM()
-- MIN()
-- MAX()
-- ROUND(X, num_digits)


-- nil -> null

--> aggregate per something
-- GROUP BY
-- SELECT COUNT(*) c, specialty FROM doctors
-- GROUP BY specialty
-- ORDER BY c DESC;

-- SELECT AVG(age) c, specialty FROM doctors
-- GROUP BY specialty
-- ORDER BY c DESC;


-- Read all the appointments with doctors infos
-- JOIN table_name ON table_name.id = table.foreign_key
-- SELECT * FROM appointments
-- JOIN doctors ON doctors.id = appointments.doctor_id


-- Read all patients first & last names along with their appointment dates
-- SELECT first_name, last_name, occurs_on
-- FROM appointments
-- JOIN patients ON patients.id = appointments.patient_id

-- Read Kae's appointments dates along with her patients first name & last name
-- SELECT patients.first_name, patients.last_name, occurs_on
-- FROM appointments
-- JOIN patients ON patients.id = appointments.patient_id
-- JOIN doctors ON doctors.id = appointments.doctor_id
-- WHERE doctors.id = 1;


-- CRUD - C -> Create
-- INSERT INTO table_name (column_name, column_name)
-- VALUES (value_1, value2)

INSERT INTO doctors (first_name, last_name, specialty, age)
VALUES ('Gregory', 'House3', 'Generalist', 49);


-- Update
-- UPDATE table_name SET column_name = 'new value'
-- WHERE id = 3;

-- UPDATE doctors
-- SET age = 50
-- WHERE id = 14;

-- DELETE FROM doctors WHERE id = 14;



-- https://www.airbnb.com/rooms/50876204
SELECT * FROM doctors;
