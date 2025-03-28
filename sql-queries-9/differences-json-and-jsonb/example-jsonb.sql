CREATE TABLE users_jsonb (
    id SERIAL PRIMARY KEY,
    profile JSONB
);

INSERT INTO users_jsonb (profile)
VALUES ('{"name": "Alice", "age": 30, "preferences": {"theme": "dark", "notifications": true}}');

SELECT profile FROM users_jsonb;

SELECT profile->>'name' AS name FROM users_jsonb;