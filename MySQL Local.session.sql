CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

INSERT INTO users (username, email) VALUES
('Amari_McGee', 'amari@amarimcgee.com'),
('Alyssa_Brown', 'alyssa_brown@gmail.com'),
('Bob_Jones', 'bob@example.com');

SELECT * FROM users;