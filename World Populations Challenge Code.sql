/*How many entries in the countries table are from Africa?*/
SELECT COUNT(*) AS "Number of Country entries from Africa" FROM countries
WHERE continent = "Africa";

/*What was the total population of the continent of Oceania in 2005?*/
SELECT ROUND(SUM(population),2) AS "Oceania Population in 2005 (in millions)"
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE continent = "Oceania" AND year = 2005;

/*What is the average population of countries in South America in 2003?*/
SELECT ROUND(AVG(population),2) AS "Average South America Population in 2003 (in millions)"
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE continent = "South America" AND year = 2003;

/*What country had the smallest population in 2007?*/
SELECT name AS "Country with Lowest Population in 2007", MIN(population) AS "Population (in millions)"
FROM population_years
JOIN countries
ON countries.id = population_years.id
WHERE year = 2007;

/*What is the average population of Poland during the time period covered by this dataset?*/
SELECT name AS "Country Name", ROUND(AVG(population),2) AS "Average Population(in millions)"
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE name = "Poland";

/*How many countries have the word “The” in their name?*/
SELECT COUNT(*) AS "Number of countries have the word “The” in their name"
FROM countries
WHERE name LIKE "%The%";

/*What was the total population of each continent in 2010?*/
SELECT continent AS "Continent", ROUND(SUM(population),2) AS "Total Population in 2010"
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY 1
ORDER BY 2 DESC;
