CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    profile JSON
);

INSERT INTO users (profile) 
VALUES ('{"name": "Alice", "age": 30, "preferences": {"theme": "dark", "notifications": true}}');

SELECT profile FROM users;

SELECT profile->>'name' AS name FROM users;