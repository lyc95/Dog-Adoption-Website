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
 email varchar(255) PRIMARY KEY, 
 phone_number varchar(255) NOT NULL, 
 household_size INT NOT NULL, 
 firstname varchar(255) NOT NULL, 
 lastname varchar(255) NOT NULL, 
 street varchar(255) NOT NULL, 
 city varchar(255) NOT NULL, 
 state varchar(255) NOT NULL, 
 zipcode varchar(255) NOT NULL 
); 
 
CREATE TABLE AdoptionApplication 
( 
 email varchar(255) NOT NULL, 
 application_date DATE NOT NULL, 
 PRIMARY KEY (email, application_date), 
 FOREIGN KEY (email) REFERENCES Adopter (email) ON DELETE CASCADE 
); 

 
CREATE TABLE RejectedApplication 
( 
 email varchar(255) NOT NULL, 
 application_date DATE NOT NULL, 
 date_rejected DATE NOT NULL, 
 PRIMARY KEY (email, application_date), 
 FOREIGN KEY (email, application_date) REFERENCES AdoptionApplication (email, application_date) 
); 
 
CREATE TABLE Surrender 
( 
 surrenderID INT AUTO_INCREMENT PRIMARY KEY 
); 
 
CREATE TABLE Dog 
( 
 dogID INT AUTO_INCREMENT PRIMARY KEY, 
 name varchar(255) NOT NULL, 
 sex ENUM('Male', 'Female', 'Unknown') DEFAULT 'Unknown', 
 surrender_date DATE NOT NULL, 
 age_when_surrender INT NOT NULL CHECK (age_when_surrender >= 0), 
 alteration_status TINYINT(1) NOT NULL, 
 description TEXT NULL, 
 adoption_state TINYINT(1) NOT NULL DEFAULT FALSE, 
 surrenderID INT NOT NULL, 
 FOREIGN KEY (surrenderID) 
 REFERENCES Surrender (surrenderID) ON DELETE CASCADE 
); 

CREATE TABLE ApprovedApplication 
( 
 email varchar(255) NOT NULL, 
 application_date DATE NOT NULL, 
 application_state ENUM('APPROVED', 'MATCHED', 'ADOPTED') NOT NULL DEFAULT 'APPROVED', 
 date_approved DATE NOT NULL, 
 PRIMARY KEY (email, application_date), 
 FOREIGN KEY (email, application_date) REFERENCES AdoptionApplication (email, application_date) 
); 
 
CREATE TABLE Breed 
( 
 breedname varchar(255) NOT NULL, 
 PRIMARY KEY (breedname) 
); 
 
CREATE TABLE DogBreed 
( 
 dogID int NOT NULL, 
 breedname varchar(255) NOT NULL, 
 PRIMARY KEY (dogID, breedname), 
 FOREIGN KEY (dogID) REFERENCES Dog (dogID), 
 FOREIGN KEY (breedname) REFERENCES Breed (breedname) 
); 

CREATE TABLE AdoptionDetails 
( 
 dogID INT NOT NULL,
 email varchar(255) NOT NULL, 
 application_date DATE NOT NULL, 
 adoption_date DATE NOT NULL, 
 adoption_fee DECIMAL(10, 2) NOT NULL CHECK (adoption_fee >= 0), 
 FOREIGN KEY (dogID) REFERENCES Dog (dogID),
 PRIMARY KEY (email, application_date, dogID), 
 FOREIGN KEY (email, application_date) REFERENCES ApprovedApplication (email, application_date) ON DELETE CASCADE 
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
 surrenderID int NOT NULL, 
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
 microchipID varchar(255) NOT NULL, 
 dogID INT NOT NULL, 
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
 dogID INT NOT NULL, 
 vendor_name varchar(255) NOT NULL, 
 category varchar(255) NOT NULL, 
 expense_date DATE NOT NULL, 
 amount DECIMAL(10, 2) NOT NULL CHECK (amount >= 0), 
 PRIMARY KEY (dogID, vendor_name, category, expense_date), 
 FOREIGN KEY (dogID) REFERENCES Dog (dogID), 
 FOREIGN KEY (category) REFERENCES ExpenseCategory (category) 
); 

CREATE TABLE SystemConfig 
( 
    configName   varchar(255) NOT NULL, 
    config_value varchar(255) NULL, 
    PRIMARY KEY (configName) 
); 

 CREATE TABLE `User`
(
    email varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL, 
    birthday date NOT NULL, 
    phone_number varchar(255) NOT NULL, 
    firstname varchar(255) NOT NULL, 
    lastname varchar(255) NOT NULL, 
    user_type ENUM('VOLUNTEER', 'EXECUTIVEDIRECTOR', 'ADMIN') NOT NULL, 
    PRIMARY KEY (email)
); 

INSERT INTO `cs6400_sp25_team075`.`adopter` (`email`, `phone_number`, `household_size`, `firstname`, `lastname`, `street`, `city`, `state`, `zipcode`) VALUES ('adopter1@example.com', '321321', 21, 'aaa', 'bbb', 'mn', 'bnb', 'bnb', '3211446546');
INSERT INTO `cs6400_sp25_team075`.`adopter` (`email`, `phone_number`, `household_size`, `firstname`, `lastname`, `street`, `city`, `state`, `zipcode`) VALUES ('adopter2@example.com', '321123', 12, 'bbb', 'aaa', 'mmm', 'kjh', 'zcsd', '98787-95154');
INSERT INTO `cs6400_sp25_team075`.`adopter` (`email`, `phone_number`, `household_size`, `firstname`, `lastname`, `street`, `city`, `state`, `zipcode`) VALUES ('adopter3@example.com', '321123', 12, 'bbbc', 'cc', 'mmmh', 'kjhh', 'zcsd', '98787-95155');
INSERT INTO `cs6400_sp25_team075`.`adopter` (`email`, `phone_number`, `household_size`, `firstname`, `lastname`, `street`, `city`, `state`, `zipcode`) VALUES ('adopter4@example.com', '325123', 12, 'bbbc', 'cc', 'mmmh', 'kjhh', 'zcsd', '98787-95185');
INSERT INTO `cs6400_sp25_team075`.`adopter` (`email`, `phone_number`, `household_size`, `firstname`, `lastname`, `street`, `city`, `state`, `zipcode`) VALUES ('adopter5@example.com', '321623', 2, 'bbbc', 'cc', 'mmmh', 'kjhh', 'zcsd', '98787-95175');
INSERT INTO `cs6400_sp25_team075`.`adopter` (`email`, `phone_number`, `household_size`, `firstname`, `lastname`, `street`, `city`, `state`, `zipcode`) VALUES ('adopter6@example.com', '321723', 3, 'bbbc', 'csc', 'mfmmh', 'kjfhh', 'zcssd', '98787-95955');
INSERT INTO `cs6400_sp25_team075`.`adopter` (`email`, `phone_number`, `household_size`, `firstname`, `lastname`, `street`, `city`, `state`, `zipcode`) VALUES ('adopter7@example.com', '328123', 6, 'bbbac', 'cc', 'mmcmh', 'kjvhh', 'zcssd', '98787-95455');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter1@example.com', '2025-03-10');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter2@example.com', '2025-03-11');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter2@example.com', '2025-03-12');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter3@example.com', '2025-03-07');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter4@example.com', '2025-02-15');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter5@example.com', '2025-01-12');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter6@example.com', '2024-12-13');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter7@example.com', '2024-11-26');
INSERT INTO `cs6400_sp25_team075`.`adoptionapplication` (`email`, `application_date`) VALUES ('adopter3@example.com', '2025-03-08');
INSERT INTO `cs6400_sp25_team075`.`rejectedapplication` (`email`, `application_date`, `date_rejected`) VALUES ('adopter1@example.com', '2025-03-10', '2025-03-06');
INSERT INTO `cs6400_sp25_team075`.`rejectedapplication` (`email`, `application_date`, `date_rejected`) VALUES ('adopter2@example.com', '2025-03-11', '2025-03-13');
INSERT INTO `cs6400_sp25_team075`.`breed` (`breedname`) VALUES ('aaa');
INSERT INTO `cs6400_sp25_team075`.`breed` (`breedname`) VALUES ('bbb');
INSERT INTO `cs6400_sp25_team075`.`breed` (`breedname`) VALUES ('ccc');
INSERT INTO `cs6400_sp25_team075`.`breed` (`breedname`) VALUES ('ddd');
INSERT INTO `cs6400_sp25_team075`.`surrender` (`surrenderID`) VALUES (1);
INSERT INTO `cs6400_sp25_team075`.`surrender` (`surrenderID`) VALUES (2);
INSERT INTO `cs6400_sp25_team075`.`surrender` (`surrenderID`) VALUES (3);
INSERT INTO `cs6400_sp25_team075`.`surrender` (`surrenderID`) VALUES (4);
INSERT INTO `cs6400_sp25_team075`.`surrender` (`surrenderID`) VALUES (5);
INSERT INTO `cs6400_sp25_team075`.`surrender` (`surrenderID`) VALUES (6);
INSERT INTO `cs6400_sp25_team075`.`individual` (`surrenderID`, `phonenumber`) VALUES (1, NULL);
INSERT INTO `cs6400_sp25_team075`.`individual` (`surrenderID`, `phonenumber`) VALUES (3, '32132145');
INSERT INTO `cs6400_sp25_team075`.`individual` (`surrenderID`, `phonenumber`) VALUES (5, '65465445');
INSERT INTO `cs6400_sp25_team075`.`localanimalcontroldepartment` (`surrenderID`, `phonenumber`) VALUES (2, '123123123');
INSERT INTO `cs6400_sp25_team075`.`localanimalcontroldepartment` (`surrenderID`, `phonenumber`) VALUES (4, '651651111');
INSERT INTO `cs6400_sp25_team075`.`localanimalcontroldepartment` (`surrenderID`, `phonenumber`) VALUES (6, '123123443');
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (3, 'eee', 'Male', '2025-03-03', 14, 1, NULL, 1, 2);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (4, 'qqq', 'Unknown', '2024-10-17', 13, 0, NULL, 1, 1);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (5, 'rew', 'Male', '2025-02-06', 15, 1, NULL, 1, 3);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (6, 'rwaf', 'Female', '2025-01-02', 16, 1, NULL, 1, 6);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (7, 'fdsf', 'Female', '2024-12-06', 15, 1, NULL, 1, 4);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (8, 'gfds', 'Male', '2024-11-07', 16, 1, NULL, 1, 3);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (9, 'hgfd', 'Female', '2025-01-08', 15, 1, NULL, 0, 2);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (10, 'hgfrd', 'Female', '2024-11-08', 15, 1, NULL, 0, 2);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (11, 'hgffd', 'Female', '2024-10-18', 3, 1, NULL, 0, 3);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (12, 'hgfsd', 'Male', '2024-09-07', 6, 1, NULL, 0, 4);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (13, 'hghfd', 'Female', '2024-09-08', 9, 1, NULL, 0, 5);
INSERT INTO `cs6400_sp25_team075`.`dog` (`dogID`, `name`, `sex`, `surrender_date`, `age_when_surrender`, `alteration_status`, `description`, `adoption_state`, `surrenderID`) VALUES (14, 'ijbj', 'Female', '2024-03-22', 3, 1, NULL, 0, 5);
INSERT INTO `cs6400_sp25_team075`.`approvedapplication` (`email`, `application_date`, `application_state`, `date_approved`) VALUES ('adopter2@example.com', '2025-03-12', 'ADOPTED', '2025-03-13');
INSERT INTO `cs6400_sp25_team075`.`approvedapplication` (`email`, `application_date`, `application_state`, `date_approved`) VALUES ('adopter3@example.com', '2025-03-07', 'ADOPTED', '2025-03-08');
INSERT INTO `cs6400_sp25_team075`.`approvedapplication` (`email`, `application_date`, `application_state`, `date_approved`) VALUES ('adopter4@example.com', '2025-02-15', 'ADOPTED', '2025-02-17');
INSERT INTO `cs6400_sp25_team075`.`approvedapplication` (`email`, `application_date`, `application_state`, `date_approved`) VALUES ('adopter5@example.com', '2025-01-12', 'ADOPTED', '2025-01-17');
INSERT INTO `cs6400_sp25_team075`.`approvedapplication` (`email`, `application_date`, `application_state`, `date_approved`) VALUES ('adopter6@example.com', '2024-12-13', 'ADOPTED', '2024-12-15');
INSERT INTO `cs6400_sp25_team075`.`approvedapplication` (`email`, `application_date`, `application_state`, `date_approved`) VALUES ('adopter7@example.com', '2024-11-26', 'ADOPTED', '2024-11-28');
INSERT INTO `cs6400_sp25_team075`.`approvedapplication` (`email`, `application_date`, `application_state`, `date_approved`) VALUES ('adopter3@example.com', '2025-03-08', 'ADOPTED', '2025-03-09');
INSERT INTO `cs6400_sp25_team075`.`adoptiondetails` (`dogID`, `email`, `application_date`, `adoption_date`, `adoption_fee`) VALUES (5, 'adopter2@example.com', '2025-03-12', '2025-03-14', 284.26);
INSERT INTO `cs6400_sp25_team075`.`adoptiondetails` (`dogID`, `email`, `application_date`, `adoption_date`, `adoption_fee`) VALUES (6, 'adopter3@example.com', '2025-03-07', '2025-03-09', 196.09);
INSERT INTO `cs6400_sp25_team075`.`adoptiondetails` (`dogID`, `email`, `application_date`, `adoption_date`, `adoption_fee`) VALUES (3, 'adopter4@example.com', '2025-02-15', '2025-02-18', 231.09);
INSERT INTO `cs6400_sp25_team075`.`adoptiondetails` (`dogID`, `email`, `application_date`, `adoption_date`, `adoption_fee`) VALUES (4, 'adopter5@example.com', '2025-01-12', '2025-01-18', 214.36);
INSERT INTO `cs6400_sp25_team075`.`adoptiondetails` (`dogID`, `email`, `application_date`, `adoption_date`, `adoption_fee`) VALUES (9, 'adopter6@example.com', '2024-12-13', '2024-12-16', 258.36);
INSERT INTO `cs6400_sp25_team075`.`adoptiondetails` (`dogID`, `email`, `application_date`, `adoption_date`, `adoption_fee`) VALUES (7, 'adopter3@example.com', '2025-03-08', '2025-03-10', 33.69);
INSERT INTO `cs6400_sp25_team075`.`adoptiondetails` (`dogID`, `email`, `application_date`, `adoption_date`, `adoption_fee`) VALUES (14, 'adopter7@example.com', '2024-11-26', '2024-11-29', 43.59);
INSERT INTO `cs6400_sp25_team075`.`dogbreed` (`dogID`, `breedname`) VALUES (3, 'aaa');
INSERT INTO `cs6400_sp25_team075`.`dogbreed` (`dogID`, `breedname`) VALUES (3, 'bbb');
INSERT INTO `cs6400_sp25_team075`.`dogbreed` (`dogID`, `breedname`) VALUES (4, 'bbb');
INSERT INTO `cs6400_sp25_team075`.`dogbreed` (`dogID`, `breedname`) VALUES (5, 'bbb');
INSERT INTO `cs6400_sp25_team075`.`dogbreed` (`dogID`, `breedname`) VALUES (5, 'ccc');
INSERT INTO `cs6400_sp25_team075`.`expensecategory` (`category`) VALUES ('aaaa');
INSERT INTO `cs6400_sp25_team075`.`expensecategory` (`category`) VALUES ('bbbb');
INSERT INTO `cs6400_sp25_team075`.`expensecategory` (`category`) VALUES ('cccc');
INSERT INTO `cs6400_sp25_team075`.`expensecategory` (`category`) VALUES ('dddd');
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (3, 'fdsaa', 'bbbb', '2025-03-08', 134.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (3, 'asdasd', 'aaaa', '2025-03-07', 123.55);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (5, 'fdsfaa', 'cccc', '2025-02-08', 184.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (11, 'bfdsaa', 'aaaa', '2025-01-09', 68.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (6, 'fdsaaa', 'dddd', '2025-01-08', 194.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (9, 'fdsgaa', 'cccc', '2025-01-08', 64.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (10, 'fdsraa', 'dddd', '2025-01-08', 84.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (11, 'fdsaba', 'cccc', '2025-01-08', 42.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (4, 'fdsasa', 'bbbb', '2025-01-06', 156.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (7, 'fdsfaa', 'aaaa', '2024-12-08', 234.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (8, 'fdshaa', 'bbbb', '2024-11-05', 34.87);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (13, 'onon', 'aaaa', '2024-06-13', 95.62);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (14, 'retfs', 'dddd', '2025-02-13', 26.95);
INSERT INTO `cs6400_sp25_team075`.`expense` (`dogID`, `vendor_name`, `category`, `expense_date`, `amount`) VALUES (13, 'ononf', 'bbbb', '2024-10-09', 102.62);
INSERT INTO `cs6400_sp25_team075`.`microchipvendor` (`manufacture_name`) VALUES ('ffffff');
INSERT INTO `cs6400_sp25_team075`.`microchipvendor` (`manufacture_name`) VALUES ('ggggg');
INSERT INTO `cs6400_sp25_team075`.`microchipvendor` (`manufacture_name`) VALUES ('hhhhh');
INSERT INTO `cs6400_sp25_team075`.`microchipvendor` (`manufacture_name`) VALUES ('asdffds');
INSERT INTO `cs6400_sp25_team075`.`microchip` (`microchipID`, `dogID`, `manufacture_name`) VALUES ('6dgg4a4rt', 6, 'ggggg');
INSERT INTO `cs6400_sp25_team075`.`microchip` (`microchipID`, `dogID`, `manufacture_name`) VALUES ('a2gg4a34r', 8, 'ffffff');
INSERT INTO `cs6400_sp25_team075`.`microchip` (`microchipID`, `dogID`, `manufacture_name`) VALUES ('adgg4a34rt', 4, 'ffffff');
INSERT INTO `cs6400_sp25_team075`.`microchip` (`microchipID`, `dogID`, `manufacture_name`) VALUES ('agg4a34rt', 5, 'ffffff');
INSERT INTO `cs6400_sp25_team075`.`microchip` (`microchipID`, `dogID`, `manufacture_name`) VALUES ('asdfsdf_ouiqwer', 3, 'ggggg');
INSERT INTO `cs6400_sp25_team075`.`microchip` (`microchipID`, `dogID`, `manufacture_name`) VALUES ('dg4a34rt', 7, 'ffffff');
INSERT INTO `cs6400_sp25_team075`.`systemconfig` (`configName`, `config_value`) VALUES ('loggedUser', NULL);
INSERT INTO `cs6400_sp25_team075`.`systemconfig` (`configName`, `config_value`) VALUES ('ShelterSize', '15');
INSERT INTO `cs6400_sp25_team075`.`user` (`email`, `password`, `birthday`, `phone_number`, `firstname`, `lastname`, `user_type`) VALUES ('user1@example.com', '123', '2001-01-11', '12312312332', 'asdfa', 'kjhf', 'VOLUNTEER');
INSERT INTO `cs6400_sp25_team075`.`user` (`email`, `password`, `birthday`, `phone_number`, `firstname`, `lastname`, `user_type`) VALUES ('user2@example.com', '123', '2005-02-21', '12312343232', 'asdsdffa', 'kdfjhf', 'EXECUTIVEDIRECTOR');
INSERT INTO `cs6400_sp25_team075`.`user` (`email`, `password`, `birthday`, `phone_number`, `firstname`, `lastname`, `user_type`) VALUES ('user3@example.com', '123', '2003-03-11', '12312433232', 'asdfafd', 'kjhfgf', 'VOLUNTEER');
INSERT INTO `cs6400_sp25_team075`.`user` (`email`, `password`, `birthday`, `phone_number`, `firstname`, `lastname`, `user_type`) VALUES ('user4@example.com', '123', '2001-04-11', '12365412332', 'dfsdfa', 'ytjhf', 'ADMIN');
INSERT INTO `cs6400_sp25_team075`.`user` (`email`, `password`, `birthday`, `phone_number`, `firstname`, `lastname`, `user_type`) VALUES ('user5@example.com', '123', '2002-12-11', '12387612332', 'gsdfa', 'wejhf', 'VOLUNTEER');
INSERT INTO `cs6400_sp25_team075`.`user` (`email`, `password`, `birthday`, `phone_number`, `firstname`, `lastname`, `user_type`) VALUES ('user6@example.com', '123', '1997-09-11', '12309812332', 'ghsdfa', 'uyjhf', 'VOLUNTEER');