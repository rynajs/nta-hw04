USE vetclinics;

INSERT INTO clinics (name, city) VALUES
            ('Paws & Claws', 'Kharkiv'),
            ('Happy Tails', 'Kyiv'),
            ('PetLife', 'Lviv'),
            ('PetCare Pro', 'Odesa'),
            ('Animal Emergency Hospital', 'Dnipro');

INSERT INTO vets (clinic_id, name, specialty) VALUES
            (1, 'George', 'eye doctor'),
            (1, 'Hanna', 'surgeon'),
            (2, 'Maksym', 'dentist'),
            (3, 'Olha', 'oncologist'),
            (4, 'Ivan', 'general practitioner');

INSERT INTO pet_owners (name, phone) VALUES
             ('Kateryna', '12345678'),
             ('Oleksii', '23456789'),
             ('Iryna', '34567890'),
             ('Taras', '45678901'),
             ('Nadiia', '56789012');


INSERT INTO pets (owner_id, name, species, breed, year_of_birth) VALUES
              (1, 'Kuba', 'dog', 'Jack Russell Terrier', 2009),
              (2, 'Hairy Maclary', 'dog', 'no breed', 2024),
              (3, 'Slinky Malinki', 'cat', 'Black', 2019),
              (4, 'Chase', 'dog', 'German Shepherd', 2018),
              (5, 'Rubble', 'dog', 'English Bulldog', 2020);

INSERT INTO appointments (clinic_id, vet_id, pet_id, scheduled_for, status) VALUES
            (1, 1, 1, '2020-04-01 10:00:00', 'completed'),
            (1, 2, 2, '2022-07-15 14:00:00', 'confirmed'),
            (2, 3, 3, '2023-02-10 09:30:00', 'cancelled'),
            (3, 4, 4, '2023-09-01 11:15:00', 'rescheduled'),
            (4, 5, 5, '2024-01-05 16:00:00', 'pending');