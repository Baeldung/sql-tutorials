-- COUNT function
select COUNT(emp_id) from employee;

-- GROUP BY clause
select office_location, count(emp_id) from employee group by office_location;

-- HAVING clause
select office_location, count(emp_id) from employee group by office_location having office_location = 'Palo Alto';
