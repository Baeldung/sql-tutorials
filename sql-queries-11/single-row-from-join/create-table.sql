CREATE TABLE IF NOT EXISTS countries
(
    country_id integer NOT NULL,
    country_name text,
    CONSTRAINT countries_pkey PRIMARY KEY (country_id)
);

CREATE TABLE IF NOT EXISTS cities
(
    city_id integer NOT NULL,
    country_id integer,
    city_name text,
    population bigint,
    CONSTRAINT cities_pkey PRIMARY KEY (city_id),
    CONSTRAINT country_id FOREIGN KEY (country_id)
        REFERENCES countries (country_id)
);

INSERT INTO countries (country_id, country_name)
    VALUES
        (1, 'USA'),
        (2, 'UK'),
        (3, 'France'),
        (4, 'Thailand');

INSERT INTO cities (city_id, country_id, city_name, population)
    VALUES
	( 1, 1, 'Washington',689545),
        ( 2,1,'New York', 8804190),
        ( 3, 2, 'London', 12208100 ),
        ( 4 , 2, 'Manchester', 2732854),
        ( 5, 3, 'Paris', 2048472),
        ( 6, 3, 'Nice', 353701),
        ( 7, 4, 'Bangkok', 5588222),
        ( 8, 4, 'Phuket', 77778);
