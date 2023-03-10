CREATE TABLE IF NOT EXISTS Department (
id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Employee (
id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
department_id INTEGER REFERENCES Department(id),
chief_id INTEGER REFERENCES Employee(id)
);