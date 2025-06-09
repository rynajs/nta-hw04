USE vetclinics;

SELECT * FROM appointments
ORDER BY scheduled_for DESC
LIMIT 3;

SELECT name, breed, year_of_birth
FROM pets
WHERE year_of_birth > 2015;

SELECT DISTINCT po.name
FROM pet_owners po
         JOIN pets p ON po.owner_id = p.owner_id
WHERE p.species = 'cat';

SELECT pets.name AS pet_name, species, breed, pet_owners.name AS owner_name
FROM pets
         JOIN pet_owners ON pets.owner_id = pet_owners.owner_id;

