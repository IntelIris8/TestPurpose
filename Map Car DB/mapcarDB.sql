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
  trans_bike VARCHAR(30) NOT NULL,
  trans_car VARCHAR(30) NOT NULL,
  trans_penguin VARCHAR(30) NOT NULL,
  trans_walk VARCHAR(30) NOT NULL,
  -- Makes 4 boolean columns called destination split which cannot contain null --
  hong_kong BOOLEAN NOT NULL,
  singa_pore BOOLEAN NOT NULL,
  nep_tune BOOLEAN NOT NULL,
  plu_to BOOLEAN NOT NULL,
  -- string column called "how_many" --
  -- Makes an numeric column called how_many" --
  how_many INTEGER(10),
  how_many INTEGER(10),
  how_many INTEGER(10),
  how_many INTEGER(10),

  PRIMARY KEY (id)
);
-- Creates new rows containing data in all named columns --
INSERT INTO transportation (trans_bike, hong_kong, how_many)
VALUES ("Bike", TRUE, 1);
INSERT INTO transportation (trans_car, singa_pore, how_many)
VALUES ("car", FALSE, 3);
INSERT INTO transportation (trans_penguin, nep_tune, how_many)
VALUES ("penguin", FALSE, 1);
INSERT INTO transportation (trans_walk, plu_to, how_many)
VALUES ("walk", false, 1);
-- Updates the row where the column name is Hong Kong --
UPDATE people
SET trans_bike = true, hong_kong = "Hong Kong", 
WHERE id = 1;


SELECT * FROM transportation;


