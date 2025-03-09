DROP
DATABASE IF EXISTS `cs6400_sp25_team075`; 
SET
default_storage_engine=InnoDB;
SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE
DATABASE IF NOT EXISTS cs6400_sp25_team075 
DEFAULT CHARACTER SET utf8mb4 
DEFAULT COLLATE utf8mb4_unicode_ci; 
USE
cs6400_sp25_team075;

CREATE TABLE Adopter
(
    email          varchar(255) PRIMARY KEY,
    phone_number   varchar(255) NOT NULL,
    household_size INT          NOT NULL,
    firstname      varchar(255) NOT NULL,
    lastname       varchar(255) NOT NULL,
    street         varchar(255) NOT NULL,
    city           varchar(255) NOT NULL,
    state          varchar(255) NOT NULL,
    zipcode        varchar(255) NOT NULL
);

CREATE TABLE AdoptionApplication
(
    email                     varchar(255) NOT NULL,
    application_date          DATE         NOT NULL,
    application_state         TINYINT      NOT NULL DEFAULT 0,
    date_approved_or_rejected DATE NULL,
    PRIMARY KEY (email, application_date),
    FOREIGN KEY (email) REFERENCES Adopter (email) ON DELETE CASCADE
);

CREATE TABLE AdoptionDetails
(
    adoptionDetailsID INT AUTO_INCREMENT PRIMARY KEY,
    email             varchar(255)   NOT NULL,
    application_date  DATE           NOT NULL,
    adoption_date     DATE           NOT NULL,
    adoption_fee      DECIMAL(10, 2) NOT NULL CHECK (adoption_fee >= 0),
    UNIQUE KEY (email, application_date, adoptionDetailsID),
    FOREIGN KEY (email, application_date)
        REFERENCES AdoptionApplication (email, application_date) ON DELETE CASCADE
);

CREATE TABLE Surrender
(
    surrenderID INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Dog
(
    dogID              INT AUTO_INCREMENT PRIMARY KEY,
    name               varchar(255) NOT NULL,
    sex                ENUM('Male', 'Female', 'Unknown') DEFAULT 'Unknown',
    surrender_date     DATE         NOT NULL,
    age_when_surrender INT          NOT NULL CHECK (age_when_surrender >= 0),
    alteration_status  TINYINT(1) NOT NULL,
    description        TEXT NULL,
    adoption_state     TINYINT(1) NOT NULL DEFAULT FALSE,
    surrenderID        INT          NOT NULL,
    FOREIGN KEY (surrenderID)
        REFERENCES Surrender (surrenderID) ON DELETE CASCADE
);

CREATE TABLE Breed
(
    breedname varchar(255) NOT NULL,
    PRIMARY KEY (breedname)
);

CREATE TABLE DogBreed
(
    dogID     int          NOT NULL,
    breedname varchar(255) NOT NULL,
    PRIMARY KEY (dogID, breedname),
    FOREIGN KEY (dogID) REFERENCES Dog (dogID),
    FOREIGN KEY (breedname) REFERENCES Breed (breedname)
);

CREATE TABLE Individual
(
    surrenderID int NOT NULL,
    phonenumber varchar(255),
    PRIMARY KEY (surrenderID),
    FOREIGN KEY (surrenderID) REFERENCES Surrender (surrenderID)
);

CREATE TABLE LocalAnimalControlDepartment
(
    surrenderID int          NOT NULL,
    phonenumber varchar(255) NOT NULL,
    PRIMARY KEY (surrenderID),
    FOREIGN KEY (surrenderID) REFERENCES Surrender (surrenderID)
);

CREATE TABLE MicrochipVendor
(
    manufacture_name varchar(255) NOT NULL,
    PRIMARY KEY (manufacture_name)
);

CREATE TABLE Microchip
(
    microchipID      varchar(255) NOT NULL,
    dogID            INT          NOT NULL,
    manufacture_name varchar(255) NOT NULL,
    PRIMARY KEY (microchipID),
    FOREIGN KEY (dogID) REFERENCES Dog (dogID),
    FOREIGN KEY (manufacture_name) REFERENCES MicrochipVendor (manufacture_name)
);

CREATE TABLE ExpenseCategory
(
    category varchar(255) NOT NULL,
    PRIMARY KEY (category)
);

CREATE TABLE Expense
(
    dogID        INT            NOT NULL,
    vendor_name  varchar(255)   NOT NULL,
    category     varchar(255)   NOT NULL,
    expense_date DATE           NOT NULL,
    amount       DECIMAL(10, 2) NOT NULL CHECK (amount >= 0),
    PRIMARY KEY (dogID, vendor_name, category, expense_date),
    FOREIGN KEY (dogID) REFERENCES Dog (dogID),
    FOREIGN KEY (category) REFERENCES ExpenseCategory (category)
); 