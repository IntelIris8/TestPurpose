-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS mapcar_db;
-- Creates the "map_car" database --
CREATE DATABASE mapcar_db;
-- Makes it so all of the following code will affect mapcar_db --
USE mapcar_db;
-- Creates the table "people" within mapcar_db --
CREATE TABLE transportation (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  -- Makes 4 string columns called trans_ which cannot contain null --
  name VARCHAR(30) NOT NULL,

  place VARCHAR(30) NOT NULL,
  
  vehicle VARCHAR(30) NOT NULL,
  
  how_many INTEGER(10),
  
  hurry BOOLEAN NOT NULL,
  PRIMARY KEY (id)
);
-- Creates new rows containing data in all named columns --
INSERT INTO transportation (trans_bike, hong_kong, how_many)
VALUES ("Tom", "Hong Kong", "Penguin", 1, TRUE);
INSERT INTO transportation (trans_car, singa_pore, how_many)
VALUES ("Bob", "Singapore", "Car" 3, FALSE);
INSERT INTO transportation (trans_penguin, nep_tune, how_many)
VALUES ("Jesse", "Neptune", "Bike"  FALSE, 1);
INSERT INTO transportation (trans_walk, plu_to, how_many)
VALUES ("Chentelle", "Pluto", "Walk", FALSE, 1);
-- Updates the row where the column name is Hong Kong --
UPDATE transportation
SET hurry = true, 
WHERE id = 1;


SELECT * FROM transportation;


