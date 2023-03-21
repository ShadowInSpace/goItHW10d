CREATE SCHEMA IF NOT EXISTS HW10S;
CREATE TABLE IF NOT EXISTS hw10s.Client
(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) CHECK (LENGTH(name) BETWEEN 3 AND 200),
PRIMARY KEY(ID)
);
CREATE TABLE IF NOT EXISTS HW10S.Planet(
    ID VARCHAR(50) NOT NULL CHECK (ID REGEXP '^[A-Z0-9]+$'),
    name VARCHAR(200) CHECK (LENGTH(name) BETWEEN 1 AND 500),
PRIMARY KEY(ID)
);
CREATE TABLE HW10S.Ticket
(
TicketID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
client_id INT,
from_planet_id VARCHAR(50),
to_planet_id VARCHAR(50),
PRIMARY KEY(TicketID)
);
ALTER TABLE HW10S.TICKET
   ADD  FOREIGN KEY (client_id)
      REFERENCES HW10S.CLIENT(id)
      ON DELETE CASCADE;
ALTER TABLE HW10S.TICKET
   ADD  FOREIGN KEY (from_planet_id)
      REFERENCES HW10S.PLANET(id)
      ON DELETE CASCADE;
ALTER TABLE HW10S.TICKET
     ADD  FOREIGN KEY (to_planet_id)
        REFERENCES HW10S.PLANET(id)
        ON DELETE CASCADE;