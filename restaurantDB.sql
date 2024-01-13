DROP DATABASE IF EXISTS RestaurantDB;
CREATE DATABASE RestaurantDB;
USE RestaurantDB;


-- Restaurant 
CREATE TABLE Restaurant (
    restaurantID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    restaurantName VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    zipcode VARCHAR(20) NOT NULL,
    streetName VARCHAR(80) NOT NULL,
    streetNumber VARCHAR(10) NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
) ENGINE=InnoDB;


-- rTable 
CREATE TABLE rTable (
    rTableID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rTableNumber INT(5) NOT NULL,
    seats INT(5) NOT NULL,
    FK_restaurantID INT NOT NULL,
    CONSTRAINT FK_rTable_Restaurant FOREIGN KEY (FK_restaurantID) REFERENCES Restaurant (restaurantID)
) ENGINE=InnoDB;


-- Customer
CREATE TABLE Customer (
    customerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL,
    email  VARCHAR(100) NOT NULL
) ENGINE=InnoDB;


-- Reservation
CREATE TABLE Reservation (
    reservationID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    reservationDate DATE NOT NULL,
    reservationTime TIME NOT NULL,
    reservedSeats INT(5) NOT NULL,
    FK_customerID INT NOT NULL,
    CONSTRAINT FK_tReservation_Customer FOREIGN KEY (FK_customerID) REFERENCES Customer (CustomerID)
) ENGINE=InnoDB;


-- rTableReservation
CREATE TABLE rTableReservation (
    rTableID INT NOT NULL,
    reservationID INT NOT NULL,
    CONSTRAINT PK_rTableReservation PRIMARY KEY(rTableID, reservationID),
    FOREIGN KEY (rTableID) REFERENCES rTable (rTableID),
    FOREIGN KEY (reservationID) REFERENCES Reservation (reservationID)
) ENGINE=InnoDB;



-- Inserting into Restaurant
INSERT INTO Restaurant
VALUES
    (NULL, 'Gyoza Heaven', 'Wonder', '5555', 'Right There', '1', '5500221111', 'gyozaheaven@comeandtry.com');


-- Inserting into rTable
INSERT INTO rTable
VALUES
    (NULL, 1, 2, 1),
    (NULL, 2, 2, 1),
    (NULL, 3, 2, 1),
    (NULL, 4, 2, 1),
    (NULL, 5, 4, 1),
    (NULL, 6, 4, 1),
    (NULL, 7, 4, 1),
    (NULL, 8, 4, 1),
    (NULL, 9, 6, 1),
    (NULL, 10, 6, 1),
    (NULL, 11, 6, 1),
    (NULL, 12, 6, 1),
    (NULL, 13, 8, 1),
    (NULL, 14, 8, 1),
    (NULL, 15, 8, 1);


-- Inserting into Customer
INSERT INTO Customer
VALUES 
    (NULL, 'Deedee', 'Sommersett', '2017496375', 'dsommersett0@thetimes.co.uk'),
    (NULL, 'Nichol', 'Morison', '2784622689', 'nmorison1@unblog.fr'),
    (NULL, 'Waring', 'Scott', '9313962061', 'wscott2@toplist.cz'),
    (NULL, 'Corena', 'Greenside', '8924004654', 'cgreenside3@netvibes.com'),
    (NULL, 'Prudence', 'Leyman', '4741961373', 'pleyman4@meetup.com'),
    (NULL, 'Nolly', 'MacCallister', '9374072941', 'nmaccallister5@histats.com'),
    (NULL, 'Fraser', 'Byer', '1212235464', 'fbyer6@sakura.ne.jp'),
    (NULL, 'Gretta', 'Ebunoluwa', '5605751782', 'gebunoluwa7@washingtonpost.com'),
    (NULL, 'Melany', 'Chorlton', '9242739026', 'mchorlton8@narod.ru'),
    (NULL, 'Bryanty', 'Fittall', '2946469792', 'bfittall9@netlog.com');


-- Inserting into Reservation
INSERT INTO Reservation
VALUES
    (NULL, '2023-10-20', '17:00:00', '4', 8),
    (NULL, '2023-10-30', '17:00:00', '4', 8),
    (NULL, '2023-10-18', '17:00:00', '2', 10),
    (NULL, '2023-11-11', '12:00:00', '2', 1),
    (NULL, '2023-10-20', '16:00:00', '2', 1),
    (NULL, '2023-10-30', '12:00:00', '4', 2),
    (NULL, '2023-10-20', '14:30:00', '6', 5),
    (NULL, '2023-11-11', '19:00:00', '4', 9),
    (NULL, '2023-10-30', '12:30:00', '8', 7),
    (NULL, '2023-10-30', '18:30:00', '6', 4),
    (NULL, '2023-10-25', '14:00:00', '2', 6),
    (NULL, '2023-10-16', '20:00:00', '4', 3),
    (NULL, '2023-10-21', '18:00:00', '8', 9),
    (NULL, '2023-10-16', '20:00:00', '8', 3),
    (NULL, '2023-10-30', '18:30:00', '4', 10),
    (NULL, '2023-10-11', '13:30:00', '4', 4);


-- Inserting into rTableReservation
INSERT INTO rTableReservation
VALUES
    (6, 1),
    (6, 2),
    (1, 3),
    (3, 4),
    (3, 5),
    (8, 6),
    (10, 7),
    (5, 8),
    (15, 9),
    (12, 10),
    (2, 11),
    (7, 12),
    (15, 13),
    (14, 14),
    (8, 15),
    (12, 16);

    