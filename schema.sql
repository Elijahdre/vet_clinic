/* Database schema to keep the structure of entire database. */
/* Day 1 */
CREATE TABLE animals (
  id int primary key,
  name VARCHAR(70),
  date_of_birth date,
  escape_attempts int,
  neutered boolean,
  weight_kg decimal
);

/* DAY 2 */
ALTER TABLE
  animals
ADD
  COLUMN species VARCHAR(70);

/* DAY 3 */
CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(100),
  age integer
);

CREATE TABLE species (id SERIAL PRIMARY KEY, name VARCHAR(100));
CREATE SEQUENCE animals_id_seq owned BY animals.id;

ALTER TABLE animals ALTER COLUMN id SET DEFAULT nextval('animals_id_seq');
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT REFERENCES species;
ALTER TABLE animals ADD COLUMN owner_id INT REFERENCES owners;