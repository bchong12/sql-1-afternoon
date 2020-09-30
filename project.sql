CREATE TABLE person
(
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    age INT,
    height INT,
    city VARCHAR(20),
    favorite_color TEXT
);

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Branden', 21, 511, 'La Crescenta', 'blue');

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Andy', 36, 53, 'Salt Lake City', 'blue');

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Dwayne', 52, 58, 'Rock City', 'black');

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Jojo', 19, 53, 'Los Angeles', 'pink');

INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Monica', 47, 55, 'Los Angeles', 'red');


SELECT *
FROM person
ORDER BY height ASC;

SELECT *
FROM person
ORDER BY height DESC;

SELECT *
FROM person
ORDER BY age DESC;

SELECT *
FROM person
WHERE age > 20;

SELECT *
FROM person
WHERE age < 20 OR age > 30;

SELECT *
FROM person
WHERE age != 27;

SELECT *
FROM person
WHERE favorite_color != 'red';

SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT *
FROM person
WHERE favorite_color in ('orange','green');

SELECT *
FROM person
WHERE favorite_color in ('orange','green','blue');

SELECT *
FROM person
WHERE favorite_color in ('yellow','purple');

CREATE TABLE orders
(
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name TEXT,
    product_price FLOAT,
    quantity INT
);

INSERT INTO orders
    (person_id, product_name, product_price, quantity)
VALUES(1, 'lasagna', 15.75, 1),
    (1, 'pasta', 17.95, 1),
    (2, 'steak', 25.35, 1),
    (2, 'lobster', 32.75, 2),
    (2, 'wine', 20.75, 1);

SELECT *
FROM orders;

SELECT sum(quantity)
FROM orders;

SELECT sum(product_price)
FROM orders;

SELECT sum(product_price)
FROM orders
WHERE person_id = 1;

INSERT INTO artist
    (artist_id, name)
VALUES
    (1000, 'Hillsong'),
    (1001, 'Jay Park'),
    (1002, 'PRETTYMUCH');

SELECT *
FROM artist
ORDER BY artist_id DESC
LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT *
FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date)
from employee;

SELECT MIN(birth_date)
from employee;

SELECT *
FROM employee
WHERE reports_to = 2;

SELECT count(*)
from employee
WHERE city = 'Lethbridge';

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date)
FROM employee;

SELECT MIN(birth_date)
FROM employee;

SELECT count(*)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
from invoice;

SELECT *
from invoice
WHERE total > 5;

SELECT count(*)
from invoice
WHERE total > 5;

SELECT *
from invoice
WHERE billing_state in ('CA', 'AZ', 'TX');

SELECT avg(total)
from invoice;

SELECT sum(total)
from invoice;