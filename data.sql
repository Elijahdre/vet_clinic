/* Populate database with sample data. */
/* Day 1*/
INSERT INTO
  animals (
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES
  (1, 'Agumon', '2020-02-03', 0, true, 10.23),
  (2, 'Gabumon', '2018-11-15', 2, true, 8),
  (3, 'Pikachu', '2021-01-07', 1, false, 15.04),
  (4, 'Devimon', '2017-05-12', 5, true, 11);

/* Day 2*/
INSERT INTO
  animals(
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES
  (5, 'Charmander', '2020-02-08', 2, FALSE, -11),
  vet_clinic - # (6, 'Plantmon', '2021-11-15', 2, TRUE, -5.7), (7, 'Squirtle', '1993-04-02', 3, FALSE, -12.13), (8, 'Angemon', '2005-06-12', 1, TRUE, -45),
  vet_clinic - #  (9, 'Boarmon', '2005-06-07', 7, TRUE, 20.4),  (10, 'Blossom', '1998-10-13', 3, TRUE, 17), (11, 'Ditto', '2022-05-14', 4, true, 22);