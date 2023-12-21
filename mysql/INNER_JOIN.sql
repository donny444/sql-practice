SELECT countries.country_name, locations.street_address, locations.city
FROM countries
INNER JOIN locations ON countries.country_id = locations.country_id; 