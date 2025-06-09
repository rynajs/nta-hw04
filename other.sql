USE vetclinics;

ALTER TABLE pet_owners ADD email VARCHAR(100);


ALTER TABLE clinics
    ADD email VARCHAR(100),
    ADD phone VARCHAR(20);


ALTER TABLE appointments MODIFY status VARCHAR(30);


# ALTER TABLE pets DROP COLUMN breed;

# DROP TABLE appointments;
