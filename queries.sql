/*Queries that provide answers to the questions from all projects.*/
/* Day 1*/
SELECT name FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered;
SELECT * FROM animals WHERE NOT name='Gabumon';
SELECT * FROM animals WHERE weight_kg  >= 10.4 AND weight_kg <= 17.3;

/* Day 2 */
 BEGIN
 UPDATE animals SET species = 'unspecified';
 ROLLBACK;

 BEGIN
 UPDATE animals set species = 'digimon' WHERE name like '%mon';
 UPDATE animals set species = 'pokemon' WHERE name not like '%mon';
 COMMIT;

 BEGIN;
 DELETE FROM animals;
 ROLLBACK;

 BEGIN;
 DELETE from animals WHERE date_of_birth > '2022-01-01';
 SAVEPOINT newsavepoint;
 UPDATE animals SET weight_kg = weight_kg * -1;
 ROLLBACK TO newsavepoint;
 UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg <0;
 COMMIT;

 SELECT COUNT (*) FROM animals;
 SELECT COUNT (*) FROM animals WHERE escape_attempts = 0;
 SELECT AVG(weight_kg) FROM animals;
 SELECT neutered, MAX(escape_attempts) FROM animals GROUP BY neutered;
 SELECT max(weight_kg),min(weight_kg) FROM animals;
 SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';