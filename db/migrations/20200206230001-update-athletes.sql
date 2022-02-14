ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;
INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20200206230001-update-athletes.sql', '2020-01-27 18:30:00');


DELETE FROM athletes;
INSERT INTO athletes (id, name, gender, dob) VALUES
(1, 'Andrew', 'm', '1975-12-01'),
(2, 'Ayana', 'F', '1998-06-11'),
(3, 'Hayden', 'm', '1996-07-24'),
(4, 'August', 'm', '1999-09-09');