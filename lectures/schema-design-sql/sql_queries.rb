SELECT column_1, column_2
FROM table_name
WHERE column_3 = value
AND column_2 = value_2
ORDER BY column_5 DESC

SELECT COUNT(*) FROM doctors
WHERE first_name = "Steve"


SELECT * FROM patients
ORDER BY age DESC
LIMIT 10

SELECT COUNT(*) AS c, specialty AS s
FROM doctors
GROUP BY s
ORDER BY c


SELECT *
FROM inhabitants
JOIN cities ON cities.id = inhabitants.city_id
WHERE cities.name = 'Paris'

SELECT * FROM inhabitants
JOIN cities ON cities.id = inhabitant.city_id
WHERE inhabitants.age >= 18
AND cities.name = 'Paris'


# FOR EACH CONSULTATION, GIVE ME ITS DATE, PATIENT AND DOCTOR NAMES


SELECT c.created_at, p.first_name, p.last_name, d.first_name, d.last_name FROM consultations c
JOIN patients p ON p.id = c.patient_id
JOIN doctors d ON d.id = c.doctor_id
WHERE c.created_at >= DATE('01-01-2022')
AND c.created_at <= DATE('31-01-2022')
# 01/01/2022 -> 31/01/2022
