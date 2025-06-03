SELECT countries.country_id, country_name, city_id, city_name, population FROM countries
	 JOIN cities ON countries.country_id = cities.country_id;

SELECT DISTINCT ON(countries.country_id) 
	countries.country_id, country_name, city_id, city_name, population FROM countries
	 JOIN cities ON countries.country_id = cities.country_id;

SELECT DISTINCT ON(countries.country_id) 
	countries.country_id, country_name, city_id, city_name, population FROM countries
	 JOIN cities ON countries.country_id = cities.country_id
	ORDER BY countries.country_id, population DESC;