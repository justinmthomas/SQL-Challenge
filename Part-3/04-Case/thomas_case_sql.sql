--Create test table animals
CREATE TABLE "animals" (
    "id" INT,
    "animal_name" VARCHAR,
    "species" VARCHAR);
	
-- Insert data into table with mouse and duck reversed
INSERT INTO animals (id, animal_name, species) VALUES
(1, 'Mickey Mouse', 'duck'),
(2, 'Minne Mouse', 'duck'),
(3, 'Donald Duck', 'mouse');

-- Update species using case statement
UPDATE animals
SET species =
CASE
	WHEN animal_name LIKE '%Mouse' THEN 'Mouse'
	WHEN animal_name LIKE '%Duck' THEN 'Duck'
END

SELECT * FROM animals