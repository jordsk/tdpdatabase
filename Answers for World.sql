USE world;
SHOW tables;

SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM countrylanguage;


SELECT name FROM country AND  ORDER BY GNP DESC limit 10;

#SELECT * FROM city ORDER BY Population WHERE (SELECT CountryCode=Japan) DESC limit 10;

#SELECT DISTINCT country.Region, countrylanguage.language FROM country JOIN countrylanguage ON country.code=countrylanguage.CountryCode WHERE country.region=;
#SELECT name, LifeExpectancy FROM country ORDER BY LifeExpectancy DESC limit 1;
#SELECT Country.Name, city.Name FROM country JOIN city ON country.code=city.CountryCode WHERE city.id=(SELECT Capital FROM country WHERE name="");
#SELECT COUNT(name) FROM city WHERE CountryCode="USA";

#ANSWERS FOR WORLD
#274
#population 37032000 life expectancy 75.1
#ANDORRA 83.5
#Madrid 
#56
#SELECT city.Name FROM city WHERE city.Name LIKE "F%" LIMIT 25;
#SELECT COUNT(ci.Name) AS NumberOfCities FROM city ci JOIN country co ON co.Code = ci.CountryCode WHERE co.Code ="CHN";
#SELECT Name, Population FROM country WHERE (Population is NOT NULL AND Population>0) ORDER BY Population ASC limit 1;
#SELECT COUNT(Name) FROM country;
#SELECT Name, SurfaceArea FROM country WHERE SurfaceArea ORDER BY SurfaceArea DESC limit 10;
#SELECT Name, Population FROM city WHERE (CountryCode="JPN") ORDER BY Population Desc limit 5;

#UPDATE country SET HeadOfState="Elizabeth II" WHERE HeadOFState="Elisabeth II";
#SELECT * FROM country WHERE HeadOfState="Elisabeth II";

#SELECT Name, population, SurfaceArea, (Population/SurfaceArea) AS ratio FROM country WHERE population!=0 ORDER BY Ratio ASC Limit 10;

#SELECT Language FROM countryLanguage ORDER BY Language;

#SELECT name, GNP FROM country ORDER BY GNP DESC limit 10;

