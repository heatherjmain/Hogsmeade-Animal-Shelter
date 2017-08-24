DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS adopters;


CREATE TABLE adopters (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address VARCHAR(255),
  postcode VARCHAR(255),
  tel_num VARCHAR(255)
);

CREATE TABLE animals (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  species VARCHAR(255),
  admission_date DATE,
  is_adoptable BIT,
  photo VARCHAR(255),
  adopter_id INT REFERENCES adopters(id) ON DELETE CASCADE,
  adoption_date DATE
);
