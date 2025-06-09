CREATE DATABASE IF NOT EXISTS vetclinics;
USE vetclinics;

CREATE TABLE clinics (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    name VARCHAR(100) NOT NULL,
                    city VARCHAR(50) NOT NULL
);

CREATE TABLE vets (
                    vet_id INT AUTO_INCREMENT PRIMARY KEY,
                    clinic_id INT NOT NULL,
                    name VARCHAR(100) NOT NULL,
                    specialty VARCHAR(100),
                    FOREIGN KEY (clinic_id) REFERENCES clinics(id)
);

CREATE TABLE pet_owners (
                    owner_id INT AUTO_INCREMENT PRIMARY KEY,
                    name VARCHAR(100) NOT NULL,
                    phone VARCHAR(20) NOT NULL
);

CREATE TABLE pets (
                      pet_id INT AUTO_INCREMENT PRIMARY KEY,
                      owner_id INT NOT NULL,
                      name VARCHAR(100) NOT NULL,
                      species VARCHAR(50),
                      breed VARCHAR(100),
                      year_of_birth YEAR,
                      FOREIGN KEY (owner_id) REFERENCES pet_owners(owner_id)
);

CREATE TABLE appointments (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        clinic_id INT NOT NULL,
                        vet_id INT NOT NULL,
                        pet_id INT NOT NULL,
                        scheduled_for DATETIME NOT NULL,
                        status VARCHAR(20),
                        FOREIGN KEY (clinic_id) REFERENCES clinics(id),
                        FOREIGN KEY (vet_id) REFERENCES vets(vet_id),
                        FOREIGN KEY (pet_id) REFERENCES pets(pet_id)
);

INSERT INTO clinics (name, city) VALUES ('Paws & Claws', 'Kharkiv');
INSERT INTO pet_owners (name, phone) VALUES ('Kateryna', '12345678');
INSERT INTO pets (owner_id, name, species, breed, year_of_birth) VALUES (1, 'Kuba', 'dog', 'Jack Russell Terrier', 2009);
INSERT INTO vets (clinic_id, name, specialty) VALUES (1, 'George', 'eye doctor');
INSERT INTO appointments (clinic_id, vet_id, pet_id, scheduled_for, status) VALUES (1, 1, 1, '2020-04-01 10:00:00', 'scheduled');
INSERT INTO appointments (clinic_id, vet_id, pet_id, scheduled_for, status) VALUES (1, 1, 1, '2020-04-01 10:00:00', 'confirmed');