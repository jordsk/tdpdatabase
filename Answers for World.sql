USE world;
SHOW tables;

SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM countrylanguage;

SELECT Name, SurfaceArea FROM country WHERE SurfaceArea ORDER BY SurfaceArea DESC limit 10;

#SELECT DISTINCT country.Region, countrylanguage.language FROM country JOIN countrylanguage ON country.code=countrylanguage.CountryCode WHERE country.region=;
#SELECT name, LifeExpectancy FROM country ORDER BY LifeExpectancy DESC limit 1;
#SELECT Country.Name, city.Name FROM country JOIN city ON country.code=city.CountryCode WHERE city.id=(SELECT Capital FROM country WHERE name="");


#Brunei Indonesia Cambodia Laos Myanmar Malaysia Philippines Singapore Thailand East Timor Vietnam
#SELECT COUNT(name) FROM city WHERE CountryCode="USA";

#ANSWERS FOR WORLD
#274
#population 37032000 life expectancy 75.1
#ANDORRA
#Madrid 
#56
#SELECT city.Name FROM city WHERE city.Name LIKE "F%" LIMIT 25;
#
#SELECT Name, Population FROM country WHERE (Population is NOT NULL AND Population>0) ORDER BY Population ASC limit 1;
#SELECT COUNT(Name) FROM country;
#SELECT Name, SurfaceArea FROM country WHERE SurfaceArea ORDER BY SurfaceArea DESC limit 10;
