SELECT *
FROM calorie_dataset;
CREATE TABLE calorie_data
LIKE calorie_dataset;
SELECT *
FROM calorie_data;
INSERT calorie_data
SELECT *
FROM calorie_dataset;
SELECT *
FROM calorie_data;
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY protein_g, carbs_g, fat_g, fiber_g, sugar_g, calories, calorie_class) AS row_num
FROM calorie_data;
WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY protein_g, carbs_g, fat_g, fiber_g, sugar_g, calories, calorie_class) AS row_num
FROM calorie_data)
SELECT * 
FROM duplicate_cte
WHERE row_num > 1;
SELECT DISTINCT(protein_g)
FROM calorie_data;
SELECT DISTINCT(TRIM(protein_g))
FROM calorie_data;
SELECT protein_g, (TRIM(protein_g))
FROM calorie_data;
UPDATE calorie_data
SET protein_g = TRIM(protein_g);
SELECT *
FROM calorie_data
ORDER BY 1;
SELECT *
FROM calorie_data
WHERE calories IS NULL
OR calories = '';
SELECT *
FROM calorie_dataset;
SELECT *
FROM calorie_data;
SELECT MAX(sugar_g)
FROM calorie_data;
SELECT MAX(sugar_g), MAX(fat_g)
FROM calorie_data;
SELECT *
FROM calorie_data
WHERE fat_g = 1;
SELECT protein_g, SUM(calories)
FROM calorie_data 
GROUP BY  protein_g
ORDER BY 2 DESC;
SELECT MIN(protein_g), MAX(protein_g)
FROM calorie_data ;
SELECT *
FROM calorie_data;

