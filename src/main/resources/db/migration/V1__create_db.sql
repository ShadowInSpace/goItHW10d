CREATE TABLE Client
(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) CHECK (LENGTH(name) BETWEEN 3 AND 200)
);
CREATE TABLE Planet(
    ID VARCHAR(50) NOT NULL CHECK (ID REGEXP '^[A-Z0-9]+$'),
    name VARCHAR(200) CHECK (LENGTH(name) BETWEEN 1 AND 200)
);
CREATE TABLE Ticket(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    created_at TIMESTAMP WITH TIME ZONE,
    client_id INT,
    from_planet_id INT,
    to_planet_id INT,
    FOREIGN KEY (client_id) REFERENCES Client(ID),
);
