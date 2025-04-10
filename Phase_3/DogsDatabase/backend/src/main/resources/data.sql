-- Load with Users data
INSERT INTO `User` (email, `password`, birthday, phone_number, firstname, lastname, user_type) VALUES
('adinos@ganjaflex.com', 'pwd', '1980-10-19', '3749016371', 'Markus', 'Chavous', 'VOLUNTEER'),
('ahoa@j-texon.com', 'pwd', '2013-02-01', '7725204976', 'Mireya', 'Matuszak', 'VOLUNTEER'),
('alabreche@konex.com', 'pwd', '2010-03-18', '6947062121', 'Cyndy', 'Kardas', 'VOLUNTEER'),
('asturiale@hottechi.com', 'pwd', '2013-07-03', '4435428566', 'Erick', 'Sawchuk', 'VOLUNTEER'),
('atawil@golddex.com', 'pwd', '1983-12-21', '0810719344', 'Chantell', 'Mcdoniel', 'VOLUNTEER'),
('bkarpel@plexzap.com', 'pwd', '1965-08-24', '1146220083', 'Angella', 'Meisel', 'VOLUNTEER'),
('bstimmel@hatfan.com', 'pwd', '2008-08-29', '4215775416', 'Laticia', 'Aquas', 'VOLUNTEER'),
('cfallick@zoomit.com', 'pwd', '2010-08-20', '3767348918', 'Beatriz', 'Eanes', 'VOLUNTEER'),
('ddegonia@finjob.com', 'pwd', '1964-08-23', '4172571031', 'Ammie', 'Denooyer', 'VOLUNTEER'),
('ebayless@streethex.com', 'pwd', '1989-09-19', '9990929503', 'Deandrea', 'Fern', 'VOLUNTEER'),
('execdir@burdell.com', 'execdir', '1995-06-01', '1878031751', 'George', 'Burdell', 'EXECUTIVEDIRECTOR'),
('fperigo@condax.com', 'pwd', '1986-08-09', '5238087854', 'Graciela', 'Sarao', 'VOLUNTEER'),
('fscheyer@cancity.com', 'pwd', '1966-08-28', '8678533989', 'Haydee', 'Tomblin', 'VOLUNTEER'),
('kbenimadho@newex.com', 'pwd', '1974-09-18', '4188266984', 'Oretha', 'Ostrosky', 'VOLUNTEER'),
('kscriven@betasoloin.com', 'pwd', '1984-09-19', '6920519235', 'Andra', 'Sama', 'VOLUNTEER'),
('kyum@goodsilron.com', 'pwd', '1971-08-26', '5131693393', 'Cyril', 'Samu', 'VOLUNTEER'),
('ljillson@rangreen.com', 'pwd', '2011-10-07', '6850096323', 'Erick', 'Vizarro', 'VOLUNTEER'),
('lstaback@conecom.com', 'pwd', '1973-05-24', '1809078612', 'Erick', 'Abdallah', 'VOLUNTEER'),
('mdiestel@hatfan.com', 'pwd', '1991-07-27', '1676258250', 'Garry', 'Tolfree', 'VOLUNTEER'),
('mhagele@finjob.com', 'pwd', '1997-12-27', '8708333983', 'Gail', 'Paprocki', 'VOLUNTEER'),
('mrowling@finhigh.com', 'pwd', '1994-11-04', '1990488763', 'Stephaine', 'Albares', 'VOLUNTEER'),
('shalter@treequote.com', 'pwd', '1993-08-21', '3205334461', 'Rolland', 'Dallen', 'VOLUNTEER'),
('skalafatis@xx-holding.com', 'pwd', '1975-01-15', '4463962875', 'Latrice', 'Suffield', 'VOLUNTEER'),
('smadarang@zotware.com', 'pwd', '1966-05-21', '7266115255', 'France', 'Buemi', 'VOLUNTEER'),
('spawlowicz@donware.com', 'pwd', '1974-11-01', '7277642546', 'Kasandra', 'Jurney', 'VOLUNTEER'),
('tcastros@hatfan.com', 'pwd', '2007-06-08', '5834716716', 'Twana', 'Nabours', 'VOLUNTEER');
-- Load with Dogs, Microchip and Surrender
INSERT INTO Surrender (surrenderID) VALUES (1);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (1, 7752965599);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (1, 'Mickey', 'Male', '2023-10-04', 16, 1, ' is a super sweet boxer/dane mix!  He came from a rural animal contro', 0, 1);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('AKC Reunite');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7034528903', 1, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (2);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (2, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (2, 'Cash', 'Male', '2023-10-06', 17, 1, NULL, 0, 2);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('24PetWatch');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6352651783', 2, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (3);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (3, 3543949591);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (3, 'Maya', 'Female', '2023-10-12', 72, 1, '  is a 4-year-old Boxer/Lab gal weighing 67 pounds, so of course the name is perfect. She ca', 0, 3);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('FurSecure ID');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5486017923', 3, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (4);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (4, 9601658004);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (4, 'Bailey', 'Female', '2023-10-13', 45, 1, ' his owner died and now this boy has nowhere to go - can you help him out', 0, 4);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('FurryTag Systems');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9106900152', 4, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (5);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (5, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (5, 'Harley', 'Female', '2023-10-23', 108, 1, ' is a beautiful 2-year-old Border Collie/Lab mix weighing 55 lbs. who was rescued from a hoard', 0, 5);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2674698282', 5, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (6);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (6, 3745129261);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (6, 'Finn', 'Male', '2023-10-23', 123, 1, NULL, 0, 6);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('Destron Fearing');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1017130350', 6, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (7);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (7, 5704262728);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (7, 'Luke', 'Male', '2023-10-25', 164, 1, '  is a two and a half old and such a sweetheart.   loves the car and likes ', 0, 7);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('LifeChip');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1038471266', 7, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (8);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (8, 8464731718);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (8, 'Lulu', 'Female', '2023-10-31', 102, 1, '  Poor boy was surrendered to the Newark shelter when his owner could no ', 0, 8);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7439171231', 8, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (9);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (9, 196333483);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (9, 'Jax', 'Male', '2023-11-03', 3, 1, ' This sweet brindle boy with the crooked smile is Whopper. He''s such a good boy - playful,', 0, 9);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('PetLink');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8601785858', 9, 'PetLink');
INSERT INTO Surrender (surrenderID) VALUES (10);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (10, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (10, 'Gizmo', 'Male', '2023-11-09', 98, 1, ' This gorgeous girl hails from Puerto Rico. She is a 3-year-old P', 0, 10);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('HomeAgain');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7342097591', 10, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (11);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (11, 9776070805);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (11, 'Elvis', 'Unknown', '2023-11-13', 42, 1, '  was found as a baby in a colony when they were to be rounded up and possibly euthanized. Th', 0, 11);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8421436699', 11, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (12);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (12, 4446004402);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (12, 'Gus', 'Male', '2023-11-14', 83, 1, NULL, 0, 12);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1951524747', 12, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (13);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (13, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (13, 'Madison', 'Female', '2023-11-16', 27, 1, '  is a wonderful family member.  He is 13 years old and has been with ', 0, 13);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5454747609', 13, 'PetLink');
INSERT INTO Surrender (surrenderID) VALUES (14);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (14, 3244780627);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (14, 'Copper', 'Male', '2023-11-22', 80, 1, '   Meet a 3 month old cuddly, lovable Terrier mix.  He was dumped in', 0, 14);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('Banfield TruPaws');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6018771395', 14, 'Banfield TruPaws');
INSERT INTO Surrender (surrenderID) VALUES (15);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (15, 9766973790);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (15, 'Duke', 'Male', '2023-11-28', 38, 1, ' is a senior boy, 11-12 years old, the life he led before being rescued was filled ', 0, 15);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('CritterID Systems');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5105013925', 15, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (16);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (16, 429292602);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (16, 'Benny', 'Male', '2023-11-30', 38, 1, ' Meet Louie, originally named Jellybean for his love of candy and sweet disposition. He was adopted', 0, 16);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('AVID');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4592428483', 16, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (17);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (17, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (17, 'Athena', 'Female', '2023-12-04', 230, 1, ' is a 12-week-old Black Cur mix pup who got adopted and who thought he had found his fo', 0, 17);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('PawTech Microchips');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2093497649', 17, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (18);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (18, 9306393197);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (18, 'Coco', 'Male', '2023-12-04', 111, 1, ' was found in rural Texas all alone outside of a residence one cold January nigh', 0, 18);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9502260997', 18, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (19);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (19, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (19, 'Blue', 'Unknown', '2023-12-08', 67, 1, ' is sweet but will take some time to warm up. She will bond to her person. If you are inte', 0, 19);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4846712379', 19, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (20);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (20, 6281357755);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (20, 'Lilly', 'Unknown', '2023-12-12', 60, 1, '   is an 8 year old Pointer mix who is looking for a place to spend his golden years. This ha', 0, 20);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('PawPrint ID');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8339886722', 20, 'PawPrint ID');
INSERT INTO Surrender (surrenderID) VALUES (21);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (21, 9212256287);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (21, 'Coco', 'Female', '2023-12-15', 169, 1, NULL, 0, 21);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2529454180', 21, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (22);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (22, 4513185100);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (22, 'Murphy', 'Male', '2023-12-18', 15, 1, '  was rescued after she gave birth under a house in rural Texas. She''d been living on the ', 0, 22);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9239266970', 22, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (23);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (23, 778187593);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (23, 'Lexie', 'Unknown', '2023-12-18', 82, 1, '   a beautiful Hound mix, 7 years old, and weighing 43 pounds.  ', 0, 23);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8381747323', 23, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (24);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (24, 6829605577);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (24, 'Dixie', 'Female', '2023-12-19', 111, 1, ' This gorgeous puppy; we believe that he is a Yellow Lab mixed with Siberian Husky and wh', 0, 24);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3205105152', 24, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (25);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (25, 4472491399);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (25, 'Zoey', 'Female', '2023-12-21', 77, 1, NULL, 0, 25);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('PawID Technologies');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8239525162', 25, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (26);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (26, 197857479);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (26, 'Coco', 'Male', '2023-12-25', 119, 1, '  was dumped at a mailbox in rural Texas; is a sweet shy girl  w', 0, 26);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8125909463', 26, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (27);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (27, 6219654658);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (27, 'Chase', 'Male', '2023-12-27', 73, 1, '  was found curled up in a shivering ball one frosty morning in the landscaping outside of a ', 0, 27);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6401218324', 27, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (28);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (28, 7159023002);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (28, 'Cleo', 'Female', '2023-12-28', 267, 1, ' is a very friendly and energetic Rottweiler mix who is7 years old & weighs 59', 0, 28);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4778612876', 28, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (29);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (29, 1029635526);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (29, 'Duke', 'Male', '2023-12-29', 190, 1, ' When her dad passed away in a tragic accident, she and her "brother"  found themselv', 0, 29);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4196502473', 29, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (30);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (30, 7249519509);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (30, 'Rose', 'Unknown', '2024-01-02', 69, 1, ' is a very friendly and energetic Rottweiler mix who is7 years old & weighs 59', 0, 30);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7795786303', 30, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (31);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (31, 1265748998);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (31, 'Bentley', 'Male', '2024-01-04', 70, 1, '  We are looking for a home for our dog . He was born in December of 2015', 0, 31);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8853516222', 31, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (32);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (32, 7580291925);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (32, 'Buster', 'Male', '2024-01-08', 161, 1, NULL, 0, 32);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9983172300', 32, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (33);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (33, 190608159);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (33, 'Kona', 'Unknown', '2024-01-10', 34, 1, '  is a 9-year-old Treeing Walker Hound, a playful boy who likes toys & like', 0, 33);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9165779760', 33, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (34);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (34, 3682937167);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (34, 'Chester', 'Male', '2024-01-10', 72, 1, NULL, 0, 34);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('BarkCode Solutions');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7449562720', 34, 'BarkCode Solutions');
INSERT INTO Surrender (surrenderID) VALUES (35);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (35, 8714238960);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (35, 'Felix', 'Unknown', '2024-01-11', 218, 1, '  is so smart and curious too.  She''s becoming a TV binge watching c', 0, 35);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1147578094', 35, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (36);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (36, 8359799807);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (36, 'Bandit', 'Male', '2024-01-15', 81, 1, '   I''m an absolute awesome dog and I love all people. My foster says I have', 0, 36);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('Trovan');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3291378398', 36, 'Trovan');
INSERT INTO Surrender (surrenderID) VALUES (37);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (37, 9484756993);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (37, 'Olive', 'Female', '2024-01-17', 60, 1, '  is a 3-year-old Hound/lab mix who weighs 55 pounds. has been in the same foster home wit', 0, 37);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7620928636', 37, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (38);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (38, 2741973727);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (38, 'Jack', 'Male', '2024-01-18', 55, 1, '  a fun-loving energetic gir', 0, 38);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3645333766', 38, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (39);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (39, 5463443545);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (39, 'Leo', 'Male', '2024-01-19', 102, 1, ' We don''t know what happened to him before he arrived', 0, 39);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2318914541', 39, 'Trovan');
INSERT INTO Surrender (surrenderID) VALUES (40);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (40, 9442338603);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (40, 'Willow', 'Female', '2024-01-22', 16, 1, '   Meet a 3 month old cuddly, lovable Terrier mix.  He was dumped in', 0, 40);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1866985520', 40, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (41);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (41, 3427869137);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (41, 'Coco', 'Male', '2024-01-29', 38, 1, '  is a loving, snuggly girl who loves long walks and going for car rides but she''s als', 0, 41);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4709506110', 41, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (42);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (42, 3172412491);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (42, 'Ginger', 'Female', '2024-01-30', 21, 1, '  was being given away for free on a neighborhood site in Texas because a child in the home w', 0, 42);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1089661605', 42, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (43);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (43, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (43, 'Penny', 'Female', '2024-02-01', 50, 1, NULL, 0, 43);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7266467037', 43, 'BarkCode Solutions');
INSERT INTO Surrender (surrenderID) VALUES (44);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (44, 1848166828);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (44, 'Maggie', 'Female', '2024-02-06', 174, 1, ' he has had a hard start to his life! This little blue nose nugget of wiggles was scheduled ', 0, 44);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2058319606', 44, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (45);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (45, 682771502);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (45, 'Mac', 'Male', '2024-02-07', 132, 1, '  is a loving, snuggly girl who loves long walks and going for car rides but she''s als', 0, 45);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('PetSafe Chips');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2847073139', 45, 'PetSafe Chips');
INSERT INTO Surrender (surrenderID) VALUES (46);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (46, 1468355737);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (46, 'Gigi', 'Female', '2024-02-08', 96, 1, '  is a 4-year-old Boxer/Lab gal weighing 67 pounds, so of course the name is perfect. She ca', 0, 46);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2492638644', 46, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (47);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (47, 3562896738);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (47, 'Max', 'Male', '2024-02-09', 59, 1, ' This gorgeous girl hails from Puerto Rico. She is a 3-year-old P', 0, 47);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('FurTrack Microchips');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3353996393', 47, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (48);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (48, 5370334038);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (48, 'Gigi', 'Female', '2024-02-13', 11, 1, ' was found in rural Texas all alone outside of a residence one cold January nigh', 0, 48);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5265638072', 48, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (49);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (49, 1550733559);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (49, 'Pebbles', 'Female', '2024-02-14', 121, 1, '  He''s approximately one to one and a half years old. He was rescued a few months', 0, 49);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('Datamars');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2426683780', 49, 'Datamars');
INSERT INTO Surrender (surrenderID) VALUES (50);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (50, 5954082315);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (50, 'Heidi', 'Female', '2024-02-14', 8, 1, '  was rescued from euthanasia at a Texas shelter. She was a wonderful mama to her puppi', 0, 50);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7294697421', 50, 'PawPrint ID');
INSERT INTO Surrender (surrenderID) VALUES (51);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (51, 8909625137);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (51, 'Pebbles', 'Female', '2024-02-20', 99, 1, NULL, 0, 51);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2972323575', 51, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (52);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (52, 1668682153);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (52, 'Tigger', 'Unknown', '2024-02-21', 53, 1, '  2 years old. If interested please fill out an application at EHRdogs.org  Click for more informati', 0, 52);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6861960060', 52, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (53);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (53, 5484274484);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (53, 'Penny', 'Female', '2024-02-26', 155, 1, ' was recently diagnosed with glaucoma and required surgery to remove both eyes. :( Consi', 0, 53);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2537142631', 53, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (54);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (54, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (54, 'Harley', 'Male', '2024-02-27', 69, 1, ' Meet a very sweet natured young pup. She is a Parvo survivor~ having spent a week ', 0, 54);
INSERT INTO MicrochipVendor (manufacture_name) VALUES ('PetGuardian Chips');
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4942322452', 54, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (55);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (55, 6338381992);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (55, 'Louie', 'Male', '2024-02-27', 64, 1, ' This Southern Belle has traveled all the way from South Carolina to find her forever home here in ', 0, 55);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('332172809', 55, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (56);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (56, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (56, 'Bubba', 'Unknown', '2024-02-28', 22, 1, NULL, 0, 56);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8027222346', 56, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (57);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (57, 3167612052);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (57, 'Sampson', 'Unknown', '2024-02-29', 85, 1, '  beautiful dilute tortie. She was found pregnant and homeless.  She is an amazing ', 0, 57);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4341243132', 57, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (58);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (58, 8887748376);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (58, 'Blue', 'Male', '2024-03-07', 248, 1, ' This gorgeous boy is a Saint Bernard mix. He is', 0, 58);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5595717875', 58, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (59);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (59, 3863481285);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (59, 'Bailey', 'Male', '2024-03-07', 80, 1, ' is a handsome 3 1/2 year old Shepherd mix. He is good with other dogs.  He would do', 0, 59);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3688716849', 59, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (60);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (60, 7716338158);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (60, 'Mimi', 'Female', '2024-03-15', 123, 1, '  a big scruffy pup and devoted friend to those he trusts.  But trust takes tim', 0, 60);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6571707711', 60, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (61);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (61, 5561776161);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (61, 'Belle', 'Female', '2024-03-20', 223, 1, ' Meet a handsome black Lab mix who''s almost 5 years old', 0, 61);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2997170831', 61, 'Trovan');
INSERT INTO Surrender (surrenderID) VALUES (62);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (62, 7862009592);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (62, 'Abby', 'Female', '2024-03-21', 79, 1, ' is a ball-chasing, attention-loving, breathtakingly gorgeous boy.  A perfect day', 0, 62);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8756452956', 62, 'PawPrint ID');
INSERT INTO Surrender (surrenderID) VALUES (63);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (63, 2346505762);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (63, 'Copper', 'Male', '2024-03-22', 118, 1, ' is such a doll! She was recently rescued from euthanasia in a Texas shelt', 0, 63);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8061024433', 63, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (64);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (64, 9309013382);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (64, 'Jack', 'Male', '2024-04-04', 39, 1, ' is a fun, energetic girl who was found as a stray in south Texas.  Her owners refused ', 0, 64);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5067327188', 64, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (65);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (65, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (65, 'Trixie', 'Female', '2024-04-04', 101, 1, NULL, 0, 65);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1411487627', 65, 'Trovan');
INSERT INTO Surrender (surrenderID) VALUES (66);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (66, 7587678111);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (66, 'Athena', 'Female', '2024-04-10', 237, 1, ' Meet a handsome black Lab mix who''s almost 5 years old', 0, 66);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2190857593', 66, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (67);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (67, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (67, 'Henry', 'Male', '2024-04-11', 70, 1, ' Handsome and elegant - that''s how they describe him; was found as a str', 0, 67);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('809012530', 67, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (68);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (68, 4178881653);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (68, 'Benny', 'Male', '2024-04-12', 199, 1, NULL, 0, 68);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5063470616', 68, 'Banfield TruPaws');
INSERT INTO Surrender (surrenderID) VALUES (69);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (69, 6314918037);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (69, 'Oreo', 'Male', '2024-04-12', 255, 1, ' is a big mush of a dog that enjoys the attention of people and smiles from ear to ear when you', 0, 69);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7291686631', 69, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (70);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (70, 6596215803);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (70, 'Coco', 'Female', '2024-04-15', 106, 1, '   was rescued from a parking lot, very malnourished and scared. Rescuer got him healthy and re', 0, 70);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2679603199', 70, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (71);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (71, 1285927582);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (71, 'Dexter', 'Male', '2024-04-19', 14, 1, ' is a stunning girl who was adopted from Eleventh Hour Rescue a few years ago but was recen', 0, 71);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5892815745', 71, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (72);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (72, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (72, 'Chico', 'Male', '2024-04-25', 100, 1, NULL, 0, 72);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8010992064', 72, 'Banfield TruPaws');
INSERT INTO Surrender (surrenderID) VALUES (73);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (73, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (73, 'Jake', 'Male', '2024-04-29', 65, 1, ' is a big mush of a dog that enjoys the attention of people and smiles from ear to ear when you', 0, 73);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2831229841', 73, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (74);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (74, 5207998909);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (74, 'Jax', 'Male', '2024-05-02', 113, 1, NULL, 0, 74);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6039992982', 74, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (75);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (75, 1252658431);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (75, 'Max', 'Male', '2024-05-08', 140, 1, ' is a PRECIOUS little man!  He''s so sweet and snuggly!   gets along w', 0, 75);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8125809391', 75, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (76);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (76, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (76, 'Riley', 'Female', '2024-05-10', 23, 1, NULL, 0, 76);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9120431830', 76, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (77);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (77, 1917333242);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (77, 'Honey', 'Female', '2024-05-14', 164, 1, '  was a service dog for an elderly man who recently passed away. Now this boy needs a new home', 0, 77);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5912684397', 77, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (78);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (78, 8438716284);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (78, 'Bentley', 'Male', '2024-05-15', 55, 1, ' This gorgeous puppy; we believe that he is a Yellow Lab mixed with Siberian Husky and wh', 0, 78);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8309138644', 78, 'Datamars');
INSERT INTO Surrender (surrenderID) VALUES (79);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (79, 7231970417);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (79, 'Bentley', 'Male', '2024-05-17', 84, 1, ' is a sweet but shy Lab/Terrier mix puppy who will be making his way to NJ o', 0, 79);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7033851827', 79, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (80);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (80, 5634545527);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (80, 'Dexter', 'Male', '2024-05-20', 5, 1, NULL, 0, 80);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1130831365', 80, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (81);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (81, 1263484754);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (81, 'Murphy', 'Male', '2024-05-22', 226, 1, '    has the floppiest ears and the saddest eyes, but ', 0, 81);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9761700980', 81, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (82);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (82, 1688633235);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (82, 'Sandy', 'Female', '2024-05-22', 43, 1, '   is a goofy, exciteable, very well trained 8 year old pug-boxer-something mix who', 0, 82);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5412783492', 82, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (83);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (83, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (83, 'Maya', 'Female', '2024-05-24', 19, 1, ' This gorgeous boy is a Saint Bernard mix. He is', 0, 83);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1732916332', 83, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (84);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (84, 948588407);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (84, 'Oreo', 'Male', '2024-05-30', 50, 1, '   is a loving, young, playful bundle of joy & energy who would love to find herself ', 0, 84);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5576709738', 84, 'Banfield TruPaws');
INSERT INTO Surrender (surrenderID) VALUES (85);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (85, 9176995551);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (85, 'Trixie', 'Female', '2024-06-05', 200, 1, '  is a very loving and affectionate 5 1/2 year old dog who is great with adults but he ha', 0, 85);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2194823988', 85, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (86);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (86, 9311265900);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (86, 'Raven', 'Unknown', '2024-06-06', 129, 1, ' is a super sweet boxer/dane mix!  He came from a rural animal contro', 0, 86);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1316245032', 86, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (87);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (87, 6545393058);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (87, 'Diesel', 'Male', '2024-06-07', 96, 1, NULL, 0, 87);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7570467284', 87, 'Trovan');
INSERT INTO Surrender (surrenderID) VALUES (88);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (88, 1237969207);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (88, 'Henry', 'Male', '2024-06-10', 163, 1, NULL, 0, 88);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9485396635', 88, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (89);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (89, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (89, 'Joey', 'Male', '2024-06-11', 71, 1, NULL, 0, 89);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9961958543', 89, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (90);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (90, 851955222);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (90, 'Winnie', 'Female', '2024-06-12', 29, 1, ' is a ball-chasing, attention-loving, breathtakingly gorgeous boy.  A perfect day', 0, 90);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1819689562', 90, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (91);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (91, 1517859554);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (91, 'Spooky', 'Unknown', '2024-06-13', 19, 1, NULL, 0, 91);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5533579321', 91, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (92);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (92, 5487152150);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (92, 'Hunter', 'Male', '2024-06-17', 102, 1, '  is in foster and here''s what her foster has to say: Meet the most lovable, frie', 0, 92);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1343876546', 92, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (93);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (93, 9774792828);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (93, 'Minnie', 'Female', '2024-06-19', 144, 1, NULL, 0, 93);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7359301660', 93, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (94);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (94, 7649815235);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (94, 'Zoey', 'Unknown', '2024-06-21', 103, 1, '  was saved from his terrible living conditions by a good Samaritan.  lived his entire life i', 0, 94);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6964217795', 94, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (95);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (95, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (95, 'Willow', 'Female', '2024-06-27', 19, 1, ' is a very friendly and energetic Rottweiler mix who is7 years old & weighs 59', 0, 95);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('372663232', 95, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (96);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (96, 1891619148);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (96, 'Kobe', 'Unknown', '2024-07-01', 50, 1, '  will require someone patient and skilled. He is very timid, but gentle. He is not ', 0, 96);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5060861874', 96, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (97);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (97, 716159467);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (97, 'Hank', 'Male', '2024-07-04', 21, 1, ' is a beautiful 2-year-old Border Collie/Lab mix weighing 55 lbs. who was rescued from a hoard', 0, 97);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1208440959', 97, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (98);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (98, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (98, 'Lady', 'Unknown', '2024-07-05', 148, 1, '   is a goofy, exciteable, very well trained 8 year old pug-boxer-something mix who', 0, 98);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5678884592', 98, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (99);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (99, 1136743295);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (99, 'Boomer', 'Male', '2024-07-15', 59, 1, ' When their dad passed away in a tragic accident, he and his "sister"  ', 0, 99);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4346932011', 99, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (100);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (100, 4237295555);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (100, 'Maddie', 'Female', '2024-07-17', 5, 1, ' was recently diagnosed with glaucoma and required surgery to remove both eyes. :( Consi', 0, 100);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3021397699', 100, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (101);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (101, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (101, 'Bear', 'Unknown', '2024-07-18', 30, 1, ' wandered over to one of our volunteer''s yards last January and she just cou', 0, 101);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4413430241', 101, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (102);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (102, 7675283312);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (102, 'Gunner', 'Male', '2024-07-25', 184, 1, NULL, 0, 102);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4785912385', 102, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (103);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (103, 5990882480);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (103, 'Oliver', 'Male', '2024-07-26', 180, 1, ' is a beautiful 2-year-old Border Collie/Lab mix weighing 55 lbs. who was rescued from a hoard', 0, 103);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8134136343', 103, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (104);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (104, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (104, 'Mia', 'Female', '2024-07-30', 34, 1, ' has quite a resume.  He has graduated Basic I Obedience, Basic II Obedience, learned ', 0, 104);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('233083892', 104, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (105);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (105, 8298443903);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (105, 'Jasper', 'Male', '2024-07-30', 103, 1, ' Meet a handsome black Lab mix who''s almost 5 years old', 0, 105);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6719682995', 105, 'Datamars');
INSERT INTO Surrender (surrenderID) VALUES (106);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (106, 7481249647);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (106, 'Casey', 'Female', '2024-07-31', 97, 1, '  a fun-loving energetic gir', 0, 106);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7048348823', 106, 'PetLink');
INSERT INTO Surrender (surrenderID) VALUES (107);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (107, 5306618842);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (107, 'Oreo', 'Male', '2024-08-01', 52, 1, NULL, 0, 107);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8101223643', 107, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (108);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (108, 8765857702);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (108, 'Bailey', 'Male', '2024-08-01', 47, 1, ' is a sweet girl who was separated from her litter after having to have a lifesaving blood tr', 0, 108);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5472231360', 108, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (109);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (109, 9787416701);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (109, 'Dakota', 'Female', '2024-08-02', 12, 1, '  is a very loving and affectionate 5 1/2 year old dog who is great with adults but he ha', 0, 109);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4351012073', 109, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (110);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (110, 8239922395);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (110, 'Gizmo', 'Male', '2024-08-02', 9, 1, ' When their dad passed away in a tragic accident, he and his "sister"  ', 0, 110);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4709487464', 110, 'PetLink');
INSERT INTO Surrender (surrenderID) VALUES (111);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (111, 2172297799);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (111, 'Cali', 'Female', '2024-08-06', 9, 1, '  came to rescue in a starved state. Despite this, she has so much love to give. She g', 0, 111);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('33938173', 111, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (112);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (112, 3559025306);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (112, 'Max', 'Male', '2024-08-07', 39, 1, ' is a sweetie pie! He''s very laid back and gentle with people. He walks well on ', 0, 112);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8471672834', 112, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (113);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (113, 5658811522);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (113, 'Blue', 'Male', '2024-08-08', 38, 1, '  I came from a shelter that euthanizes over a hundred animals a week. I turned on', 0, 113);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1304728408', 113, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (114);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (114, 3807333633);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (114, 'Milo', 'Male', '2024-08-09', 1, 1, NULL, 0, 114);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9536479638', 114, 'Datamars');
INSERT INTO Surrender (surrenderID) VALUES (115);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (115, 5843162671);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (115, 'Peanut', 'Unknown', '2024-08-13', 9, 1, NULL, 0, 115);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4372662544', 115, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (116);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (116, 6122532609);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (116, 'Bailey', 'Female', '2024-08-15', 159, 1, ' has quite a resume.  He has graduated Basic I Obedience, Basic II Obedience, learned ', 0, 116);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1960321539', 116, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (117);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (117, 6194816577);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (117, 'Bo', 'Male', '2024-08-15', 38, 1, '  a fun-loving energetic gir', 0, 117);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1969400219', 117, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (118);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (118, 2908104863);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (118, 'Bentley', 'Male', '2024-08-16', 59, 1, '   was rescued from a parking lot, very malnourished and scared. Rescuer got him healthy and re', 0, 118);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4133394504', 118, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (119);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (119, 6298831837);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (119, 'Maddie', 'Female', '2024-08-16', 257, 1, '  Look at that underbite!!! he is a 3 1/2 year old Terrier mix. He was in a home for a couple y', 0, 119);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9883546509', 119, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (120);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (120, 4570617644);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (120, 'Garfield', 'Unknown', '2024-08-20', 110, 1, '  was found with bite wounds that were infected. He is all recovered and a sweet boy. Bandit&', 0, 120);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7277801255', 120, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (121);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (121, 6782003864);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (121, 'Allie', 'Female', '2024-08-22', 43, 1, '  Look at that underbite!!! he is a 3 1/2 year old Terrier mix. He was in a home for a couple y', 0, 121);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9859051656', 121, 'Banfield TruPaws');
INSERT INTO Surrender (surrenderID) VALUES (122);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (122, 6404187029);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (122, 'Henry', 'Male', '2024-08-26', 21, 1, ' Meet a very sweet natured young pup. She is a Parvo survivor~ having spent a week ', 0, 122);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1710335816', 122, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (123);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (123, 9775157216);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (123, 'Maggie', 'Female', '2024-08-29', 165, 1, NULL, 0, 123);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1261649073', 123, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (124);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (124, 4901874121);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (124, 'Piper', 'Unknown', '2024-09-06', 154, 1, ' If you''re looking for a "no brainer", check out this girl. She is a really E', 0, 124);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7363571420', 124, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (125);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (125, 9960277111);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (125, 'Tabby', 'Unknown', '2024-09-10', 74, 1, ' a Boxer mix puppy who will be arriving at 11th Hour Rescue. Bill', 0, 125);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('604987191', 125, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (126);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (126, 2658000075);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (126, 'Jake', 'Male', '2024-09-10', 78, 1, ' LOVES toys and has been entertaining himself in his run. But it''s so much nicer to see', 0, 126);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6538826314', 126, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (127);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (127, 380991498);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (127, 'Brody', 'Male', '2024-09-20', 153, 1, '   is a 3 year old Lab mix who loves people.  She is currently living with 2 children', 0, 127);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1777468792', 127, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (128);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (128, 4113944012);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (128, 'Bubba', 'Male', '2024-09-23', 244, 1, ' From his foster mom: is an 8-month-old, 43 pound, Black Lab who spent his firs', 0, 128);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1993284747', 128, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (129);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (129, 2941154438);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (129, 'Dante', 'Unknown', '2024-09-26', 116, 1, NULL, 0, 129);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2984497911', 129, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (130);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (130, 118361779);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (130, 'Bailey', 'Female', '2024-10-01', 80, 1, ' was found in rural Texas all alone outside of a residence one cold January nigh', 0, 130);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2420119393', 130, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (131);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (131, 6901239459);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (131, 'Bubba', 'Male', '2024-10-03', 106, 1, '  was being given away for free on a neighborhood site in Texas because a child in the home w', 0, 131);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8451154183', 131, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (132);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (132, 5222533336);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (132, 'Macy', 'Female', '2024-10-03', 92, 1, ' This pretty girl needs a family!! Was adopted out as a puppy, but due to no fault of her o', 0, 132);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9187558952', 132, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (133);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (133, 1131502113);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (133, 'Socks', 'Unknown', '2024-10-07', 8, 1, ' is a ball-chasing, attention-loving, breathtakingly gorgeous boy.  A perfect day', 0, 133);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3532712050', 133, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (134);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (134, 4724260406);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (134, 'Marley', 'Female', '2024-10-10', 47, 1, ' was homeless and roaming the streets which eventually led to his being picked-up', 0, 134);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9114546833', 134, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (135);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (135, 4658352036);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (135, 'Leo', 'Male', '2024-10-14', 10, 1, NULL, 0, 135);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3673609784', 135, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (136);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (136, 7618047809);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (136, 'Missy', 'Female', '2024-10-22', 252, 1, '   a beautiful Hound mix, 7 years old, and weighing 43 pounds.  ', 0, 136);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1459937907', 136, 'PawPrint ID');
INSERT INTO Surrender (surrenderID) VALUES (137);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (137, 8979195195);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (137, 'Katie', 'Female', '2024-10-22', 25, 1, ' Have you been looking for a Labrador Retriever to join your family? Labs have such great, goofy, c', 0, 137);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3002149424', 137, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (138);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (138, 2442248268);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (138, 'Madison', 'Female', '2024-10-23', 86, 1, '  was dumped at a mailbox in rural Texas; is a sweet shy girl  w', 0, 138);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7099914347', 138, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (139);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (139, 2392655702);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (139, 'Sierra', 'Female', '2024-10-25', 77, 1, '  is a sweet girl who would love to be in a new home for the holidays! She is 3 years old ', 0, 139);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7509276008', 139, 'BarkCode Solutions');
INSERT INTO Surrender (surrenderID) VALUES (140);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (140, 6365140350);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (140, 'Grace', 'Female', '2024-10-28', 31, 1, '  loves to run and play! She gives the best hugs, and she also high fives and gives a firm ha', 0, 140);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1440741152', 140, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (141);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (141, 404711029);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (141, 'Josie', 'Female', '2024-11-01', 118, 1, NULL, 0, 141);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1174566759', 141, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (142);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (142, 3361411794);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (142, 'Buster', 'Male', '2024-11-06', 19, 1, ' she was being given away in the back of a gas station in a rural Texas town when one of our', 0, 142);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2686854006', 142, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (143);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (143, 2170249372);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (143, 'Brandy', 'Female', '2024-11-07', 216, 1, ' This adorable boy is Tango Barnwell.  He wou', 0, 143);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6072863969', 143, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (144);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (144, 2553286114);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (144, 'Bo', 'Male', '2024-11-13', 126, 1, NULL, 0, 144);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7432406137', 144, 'Trovan');
INSERT INTO Surrender (surrenderID) VALUES (145);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (145, 2522283917);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (145, 'Max', 'Unknown', '2024-11-13', 59, 1, '   was surrendered to us because his elderly owner was no longer able to care for h', 0, 145);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7632258714', 145, 'PetLink');
INSERT INTO Surrender (surrenderID) VALUES (146);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (146, 9950530607);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (146, 'Sadie', 'Female', '2024-11-14', 9, 1, '  was dumped at a mailbox in rural Texas; is a sweet shy girl  w', 0, 146);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1408833465', 146, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (147);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (147, 2953839888);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (147, 'Marley', 'Male', '2024-11-15', 113, 1, '   a German Shepherd Mix.  I''m a bit timid at first, but once I get ', 0, 147);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1998282984', 147, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (148);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (148, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (148, 'Apollo', 'Male', '2024-11-22', 64, 1, '  enjoys car rides and loves playing alon', 0, 148);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2445630413', 148, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (149);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (149, 9522859006);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (149, 'Lady', 'Female', '2024-11-25', 133, 1, ' This beautiful girl found herself homeless just before the holidays and no', 0, 149);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2251945177', 149, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (150);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (150, 812627277);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (150, 'Sophie', 'Female', '2024-12-06', 92, 1, NULL, 0, 150);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3594067559', 150, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (151);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (151, 7903619325);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (151, 'Chico', 'Male', '2024-12-10', 63, 1, ' Have you been looking for a Labrador Retriever to join your family? Labs have such great, goofy, c', 0, 151);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2807195997', 151, 'Trovan');
INSERT INTO Surrender (surrenderID) VALUES (152);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (152, 789872028);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (152, 'Zoey', 'Female', '2024-12-11', 266, 1, NULL, 0, 152);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3637161001', 152, 'LifeChip');
INSERT INTO Surrender (surrenderID) VALUES (153);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (153, 1628777738);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (153, 'Baby', 'Unknown', '2024-12-13', 32, 1, NULL, 0, 153);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1013710127', 153, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (154);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (154, 1144780694);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (154, 'Chloe', 'Female', '2024-12-13', 142, 1, ' Meet Louie, originally named Jellybean for his love of candy and sweet disposition. He was adopted', 0, 154);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8401684414', 154, 'Banfield TruPaws');
INSERT INTO Surrender (surrenderID) VALUES (155);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (155, 4897907159);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (155, 'Max', 'Male', '2024-12-17', 150, 1, ' was rescued from euthanasia at a Texas shelter. he is energetic and playful. He gets alon', 0, 155);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('8736172889', 155, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (156);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (156, 8144526342);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (156, 'Mimi', 'Female', '2024-12-17', 262, 1, '  was a service dog for an elderly man who recently passed away. Now this boy needs a new home', 0, 156);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6682888123', 156, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (157);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (157, 1298124314);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (157, 'Baxter', 'Male', '2024-12-18', 91, 1, ' is a really well-behaved pup for her age. She is a happy, friendly girl.  Sally was fou', 0, 157);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('499465406', 157, 'BarkCode Solutions');
INSERT INTO Surrender (surrenderID) VALUES (158);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (158, 1950631264);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (158, 'Sadie', 'Female', '2024-12-30', 27, 1, NULL, 0, 158);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('531694695', 158, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (159);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (159, 2715518166);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (159, 'Trixie', 'Female', '2025-01-02', 115, 1, '  was adopted as a puppy and recently returned after 2 y', 0, 159);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9981888691', 159, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (160);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (160, 9995099910);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (160, 'Lulu', 'Female', '2025-01-03', 14, 1, '  is a very loving and affectionate 5 1/2 year old dog who is great with adults but he ha', 0, 160);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2385041790', 160, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (161);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (161, 3190204569);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (161, 'Cash', 'Male', '2025-01-03', 67, 1, ' We don''t know what happened to him before he arrived', 0, 161);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2967937573', 161, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (162);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (162, 1591287936);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (162, 'Louie', 'Male', '2025-01-06', 53, 1, '  is one of the most beautiful dogs you will ever meet.  She has a beautiful grey shiny ', 0, 162);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9337294651', 162, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (163);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (163, 5289507003);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (163, 'Marley', 'Male', '2025-01-07', 80, 1, NULL, 0, 163);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1037305511', 163, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (164);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (164, 3559284930);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (164, 'Jasper', 'Male', '2025-01-07', 28, 1, '  We are looking for a home for our dog . He was born in December of 2015', 0, 164);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1794980783', 164, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (165);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (165, 4414129817);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (165, 'Henry', 'Male', '2025-01-10', 90, 1, '  Look at that underbite!!! he is a 3 1/2 year old Terrier mix. He was in a home for a couple y', 0, 165);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9369781096', 165, 'PawPrint ID');
INSERT INTO Surrender (surrenderID) VALUES (166);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (166, 2677689195);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (166, 'Jack', 'Male', '2025-01-13', 23, 1, ' a Boxer mix puppy who will be arriving at 11th Hour Rescue. Bill', 0, 166);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2383840969', 166, 'PetLink');
INSERT INTO Surrender (surrenderID) VALUES (167);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (167, 465412833);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (167, 'Bella', 'Female', '2025-01-15', 42, 1, '  We are looking for a home for our dog . He was born in December of 2015', 0, 167);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7298421729', 167, 'PetLink');
INSERT INTO Surrender (surrenderID) VALUES (168);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (168, 2995456514);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (168, 'Marley', 'Male', '2025-01-16', 46, 1, ' is a very friendly and energetic Rottweiler mix who is7 years old & weighs 59', 0, 168);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3676367986', 168, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (169);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (169, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (169, 'Holly', 'Female', '2025-01-16', 199, 1, '  is a loving, snuggly girl who loves long walks and going for car rides but she''s als', 0, 169);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2951339432', 169, 'HomeAgain');
INSERT INTO Surrender (surrenderID) VALUES (170);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (170, 2883904552);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (170, 'Macy', 'Unknown', '2025-01-17', 255, 1, ' is an energetic little fellow who loves exploring the outdoors, taking walks and even ', 0, 170);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1875826038', 170, 'Datamars');
INSERT INTO Surrender (surrenderID) VALUES (171);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (171, 5739067359);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (171, 'Heidi', 'Female', '2025-01-20', 31, 1, ' We don''t know what happened to him before he arrived', 0, 171);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7154224343', 171, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (172);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (172, 2745182088);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (172, 'Chase', 'Male', '2025-01-20', 42, 1, '  a big scruffy pup and devoted friend to those he trusts.  But trust takes tim', 0, 172);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('401378100', 172, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (173);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (173, 3832336693);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (173, 'Frankie', 'Male', '2025-01-29', 120, 1, ' When their dad passed away in a tragic accident, he and his "sister"  ', 0, 173);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2391842171', 173, '24PetWatch');
INSERT INTO Surrender (surrenderID) VALUES (174);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (174, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (174, 'Dixie', 'Female', '2025-02-03', 29, 1, '  is in foster and here''s what her foster has to say: Meet the most lovable, frie', 0, 174);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3259377569', 174, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (175);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (175, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (175, 'Bella', 'Unknown', '2025-02-03', 127, 1, ' is a senior boy, 11-12 years old, the life he led before being rescued was filled ', 0, 175);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3725514884', 175, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (176);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (176, 1954371942);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (176, 'Hazel', 'Female', '2025-02-03', 98, 1, NULL, 0, 176);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7983695402', 176, 'CritterID Systems');
INSERT INTO Surrender (surrenderID) VALUES (177);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (177, 3642071656);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (177, 'Lucky', 'Male', '2025-02-04', 78, 1, '  was a service dog for an elderly man who recently passed away. Now this boy needs a new home', 0, 177);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6290584612', 177, 'PawPrint ID');
INSERT INTO Surrender (surrenderID) VALUES (178);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (178, 2762998195);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (178, 'Sally', 'Female', '2025-02-04', 50, 1, '  is a 1 year old Terrier mix! He is walks well on a leash and loves affection. He would prefer', 0, 178);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7012285202', 178, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (179);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (179, 1745763502);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (179, 'Grace', 'Female', '2025-02-04', 3, 1, ' is a handsome 3 1/2 year old Shepherd mix. He is good with other dogs.  He would do', 0, 179);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7773850739', 179, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (180);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (180, 7178654353);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (180, 'Sasha', 'Female', '2025-02-06', 27, 1, '  was being given away for free on a neighborhood site in Texas because a child in the home w', 0, 180);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9622504873', 180, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (181);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (181, 1970001154);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (181, 'Nikki', 'Female', '2025-02-11', 50, 1, ' is a handsome 3 1/2 year old Shepherd mix. He is good with other dogs.  He would do', 0, 181);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5475953207', 181, 'Destron Fearing');
INSERT INTO Surrender (surrenderID) VALUES (182);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (182, 7399996209);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (182, 'Nala', 'Female', '2025-02-12', 46, 1, ' Hi I am 2 years old. I love long walks in the park and I can be a couch pot', 0, 182);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('9295701587', 182, 'PetSafe Chips');
INSERT INTO Surrender (surrenderID) VALUES (183);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (183, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (183, 'Chester', 'Unknown', '2025-02-13', 67, 1, ' was rescued as a friendly girl from outside. She was found in a colony, but did not belong', 0, 183);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1066712611', 183, 'PetSafe Chips');
INSERT INTO Surrender (surrenderID) VALUES (184);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (184, 1773426644);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (184, 'Lily', 'Female', '2025-02-17', 161, 1, ' This pretty girl needs a family!! Was adopted out as a puppy, but due to no fault of her o', 0, 184);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5568627741', 184, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (185);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (185, 1454179418);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (185, 'Elvis', 'Male', '2025-02-18', 9, 1, '  was recently rescued from euthanasia at a Texas shelter. She has the sweetest face!  I', 0, 185);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('2195581790', 185, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (186);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (186, 1970809228);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (186, 'Abby', 'Female', '2025-02-18', 25, 1, ' is a really well-behaved pup for her age. She is a happy, friendly girl.  Sally was fou', 0, 186);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6244290027', 186, 'FurSecure ID');
INSERT INTO Surrender (surrenderID) VALUES (187);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (187, 1578817593);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (187, 'Henry', 'Male', '2025-02-18', 111, 1, ' This sweet brindle boy with the crooked smile is Whopper. He''s such a good boy - playful,', 0, 187);
INSERT INTO Surrender (surrenderID) VALUES (188);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (188, 690686898);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (188, 'Bella', 'Female', '2025-02-21', 119, 1, ' Verde''s story has a very sad beginning but I''m sure this girl gets her happy days ahead ', 0, 188);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5969941780', 188, 'FurryTag Systems');
INSERT INTO Surrender (surrenderID) VALUES (189);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (189, 8314361550);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (189, 'Loki', 'Male', '2025-02-25', 115, 1, ' is an energetic little fellow who loves exploring the outdoors, taking walks and even ', 0, 189);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5213432559', 189, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (190);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (190, 4578023180);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (190, 'George', 'Male', '2025-02-26', 114, 1, ' was homeless and roaming the streets which eventually led to his being picked-up', 0, 190);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1299956040', 190, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (191);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (191, 4753716432);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (191, 'Sasha', 'Female', '2025-02-27', 96, 0, ' was rescued from euthanasia at a Texas shelter. he is energetic and playful. He gets alon', 0, 191);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1427434877', 191, 'AVID');
INSERT INTO Surrender (surrenderID) VALUES (192);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (192, 9605716166);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (192, 'Riley', 'Female', '2025-03-11', 143, 1, ' This gorgeous puppy; we believe that he is a Yellow Lab mixed with Siberian Husky and wh', 0, 192);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('338929243', 192, 'PetGuardian Chips');
INSERT INTO Surrender (surrenderID) VALUES (193);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (193, 5472316011);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (193, 'Frankie', 'Male', '2025-03-11', 78, 0, ' was homeless and roaming the streets which eventually led to his being picked-up', 0, 193);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6982871754', 193, 'AKC Reunite');
INSERT INTO Surrender (surrenderID) VALUES (194);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (194, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (194, 'Jake', 'Male', '2025-03-11', 80, 1, NULL, 0, 194);
INSERT INTO Surrender (surrenderID) VALUES (195);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (195, 1838271895);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (195, 'Kobe', 'Male', '2025-03-13', 87, 1, ' Our girl may look like a plain little black dog but she is anything but ordinary!  Th', 0, 195);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('5024975151', 195, 'PawID Technologies');
INSERT INTO Surrender (surrenderID) VALUES (196);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (196, 5222982601);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (196, 'Jasmine', 'Female', '2025-03-14', 23, 1, ' is a sweetie pie! He''s very laid back and gentle with people. He walks well on ', 0, 196);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4415106067', 196, 'PetSafe Chips');
INSERT INTO Surrender (surrenderID) VALUES (197);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (197, 3227208213);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (197, 'Ellie', 'Female', '2025-03-17', 41, 1, ' is a 12-week-old Black Cur mix pup who got adopted and who thought he had found his fo', 0, 197);
INSERT INTO Surrender (surrenderID) VALUES (198);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (198, 9270645659);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (198, 'Dixie', 'Female', '2025-03-19', 117, 1, '  is a sweet girl who would love to be in a new home for the holidays! She is 3 years old ', 0, 198);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('3469212555', 198, 'FurTrack Microchips');
INSERT INTO Surrender (surrenderID) VALUES (199);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (199, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (199, 'Gizmo', 'Male', '2025-03-19', 101, 1, ' Have you been looking for a Labrador Retriever to join your family? Labs have such great, goofy, c', 0, 199);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('6580338967', 199, 'PawPrint ID');
INSERT INTO Surrender (surrenderID) VALUES (200);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (200, 4812801221);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (200, 'Cleo', 'Female', '2025-03-21', 47, 1, '  is a 9-year-old Treeing Walker Hound, a playful boy who likes toys & like', 0, 200);
INSERT INTO Surrender (surrenderID) VALUES (201);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (201, NULL);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (201, 'Bailey', 'Female', '2025-03-25', 45, 1, ' I''m looking to to rehome my male Catahoula Leopard Dog/Mountain Cur.', 0, 201);
INSERT INTO Surrender (surrenderID) VALUES (202);
INSERT INTO LocalAnimalControlDepartment (surrenderID, phonenumber) VALUES (202, 5451785505);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (202, 'Maxwell', 'Unknown', '2025-03-26', 76, 1, NULL, 0, 202);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('1183326368', 202, 'PawTech Microchips');
INSERT INTO Surrender (surrenderID) VALUES (203);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (203, 7707735459);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (203, 'Tango', 'Unknown', '2025-03-27', 33, 1, '  is an adorable little girl that is fostered with cats, dogs and kids. If interested please f', 0, 203);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('4233819750', 203, 'PetLink');
INSERT INTO Surrender (surrenderID) VALUES (204);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (204, 1946252298);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (204, 'Rosie', 'Unknown', '2025-03-28', 41, 1, ' was found in rural Texas all alone outside of a residence one cold January nigh', 0, 204);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7056675045', 204, 'Banfield TruPaws');
INSERT INTO Surrender (surrenderID) VALUES (205);
INSERT INTO Individual (surrenderID, phonenumber) VALUES (205, 7894058420);
INSERT INTO Dog (dogID, name, sex, surrender_date, age_when_surrender, alteration_status, description, adoption_state, surrenderID) VALUES (205, 'Lucy', 'Female', '2025-03-31', 42, 0, ' This adorable boy is Tango Barnwell.  He wou', 0, 205);
INSERT INTO Microchip (microchipID, dogID, manufacture_name) VALUES ('7232576436', 205, 'PetGuardian Chips');
-- Dog Breeds Data
INSERT INTO breed (breedname) VALUES ('Affenpinscher');
INSERT INTO breed (breedname) VALUES ('Afghan Hound');
INSERT INTO breed (breedname) VALUES ('Airedale Terrier');
INSERT INTO breed (breedname) VALUES ('Akbash Dog');
INSERT INTO breed (breedname) VALUES ('Akita');
INSERT INTO breed (breedname) VALUES ('Alaskan Husky');
INSERT INTO breed (breedname) VALUES ('Alaskan Malamute');
INSERT INTO breed (breedname) VALUES ('American Bulldog');
INSERT INTO breed (breedname) VALUES ('American Foxhound');
INSERT INTO breed (breedname) VALUES ('American Pit Bull Terrier');
INSERT INTO breed (breedname) VALUES ('American Water Spaniel');
INSERT INTO breed (breedname) VALUES ('Aussiedoodle');
INSERT INTO breed (breedname) VALUES ('Australian Cattle Dog');
INSERT INTO breed (breedname) VALUES ('Australian Kelpie');
INSERT INTO breed (breedname) VALUES ('Australian Shepherd');
INSERT INTO breed (breedname) VALUES ('Australian Terrier');
INSERT INTO breed (breedname) VALUES ('Azawakh');
INSERT INTO breed (breedname) VALUES ('Basenji');
INSERT INTO breed (breedname) VALUES ('Basset Bleu de Gascogne');
INSERT INTO breed (breedname) VALUES ('Basset Hound');
INSERT INTO breed (breedname) VALUES ('Bearded Collie');
INSERT INTO breed (breedname) VALUES ('Beauceron');
INSERT INTO breed (breedname) VALUES ('Bedlington Terrier');
INSERT INTO breed (breedname) VALUES ('Belgian Laekenois');
INSERT INTO breed (breedname) VALUES ('Belgian Malinois');
INSERT INTO breed (breedname) VALUES ('Belgian Sheepdog');
INSERT INTO breed (breedname) VALUES ('Belgian Tervuren');
INSERT INTO breed (breedname) VALUES ('Berger Picard');
INSERT INTO breed (breedname) VALUES ('Bernese Mountain Dog');
INSERT INTO breed (breedname) VALUES ('Bichon Frise');
INSERT INTO breed (breedname) VALUES ('Black and Tan Coonhound');
INSERT INTO breed (breedname) VALUES ('Black Russian Terrier');
INSERT INTO breed (breedname) VALUES ('Bloodhound');
INSERT INTO breed (breedname) VALUES ('Blue Picardy Spaniel');
INSERT INTO breed (breedname) VALUES ('Bluetick Coonhound');
INSERT INTO breed (breedname) VALUES ('Boerboel');
INSERT INTO breed (breedname) VALUES ('Bolognese');
INSERT INTO breed (breedname) VALUES ('Border Terrier');
INSERT INTO breed (breedname) VALUES ('Borzoi');
INSERT INTO breed (breedname) VALUES ('Boston Terrier');
INSERT INTO breed (breedname) VALUES ('Bouvier des Flandres');
INSERT INTO breed (breedname) VALUES ('Boxer');
INSERT INTO breed (breedname) VALUES ('Boykin Spaniel');
INSERT INTO breed (breedname) VALUES ('Brussels Griffon');
INSERT INTO breed (breedname) VALUES ('Bull Terrier');
INSERT INTO breed (breedname) VALUES ('Bullmastiff');
INSERT INTO breed (breedname) VALUES ('Cairn Terrier');
INSERT INTO breed (breedname) VALUES ('Canaan Dog');
INSERT INTO breed (breedname) VALUES ('Cane Corso');
INSERT INTO breed (breedname) VALUES ('Cardigan Welsh Corgi');
INSERT INTO breed (breedname) VALUES ('Catahoula Leopard Dog');
INSERT INTO breed (breedname) VALUES ('Caucasian Ovcharka');
INSERT INTO breed (breedname) VALUES ('Cavalier King Charles Spaniel');
INSERT INTO breed (breedname) VALUES ('Cavapom');
INSERT INTO breed (breedname) VALUES ('Cavapoo');
INSERT INTO breed (breedname) VALUES ('Cesky Terrier');
INSERT INTO breed (breedname) VALUES ('Chesapeake Bay Retriever');
INSERT INTO breed (breedname) VALUES ('Chihuahua');
INSERT INTO breed (breedname) VALUES ('Chinese Shar-Pei');
INSERT INTO breed (breedname) VALUES ('Chinook');
INSERT INTO breed (breedname) VALUES ('Chow Chow');
INSERT INTO breed (breedname) VALUES ('Chug');
INSERT INTO breed (breedname) VALUES ('Cirneco dell''Etna');
INSERT INTO breed (breedname) VALUES ('Clumber Spaniel');
INSERT INTO breed (breedname) VALUES ('Cockapoo');
INSERT INTO breed (breedname) VALUES ('Cocker Spaniel');
INSERT INTO breed (breedname) VALUES ('Collie');
INSERT INTO breed (breedname) VALUES ('Curly-Coated Retriever');
INSERT INTO breed (breedname) VALUES ('Dachshund');
INSERT INTO breed (breedname) VALUES ('Dalmatian');
INSERT INTO breed (breedname) VALUES ('Dogue de Bordeaux');
INSERT INTO breed (breedname) VALUES ('English Cocker Spaniel');
INSERT INTO breed (breedname) VALUES ('English Foxhound');
INSERT INTO breed (breedname) VALUES ('English Setter');
INSERT INTO breed (breedname) VALUES ('English Springer Spaniel');
INSERT INTO breed (breedname) VALUES ('English Toy Spaniel');
INSERT INTO breed (breedname) VALUES ('Eurasier');
INSERT INTO breed (breedname) VALUES ('Field Spaniel');
INSERT INTO breed (breedname) VALUES ('Finnish Lapphund');
INSERT INTO breed (breedname) VALUES ('Finnish Spitz');
INSERT INTO breed (breedname) VALUES ('Fox Terrier');
INSERT INTO breed (breedname) VALUES ('French Bulldog');
INSERT INTO breed (breedname) VALUES ('German Pinscher');
INSERT INTO breed (breedname) VALUES ('German Shepherd Dog');
INSERT INTO breed (breedname) VALUES ('German Shorthaired Pointer');
INSERT INTO breed (breedname) VALUES ('German Wirehaired Pointer');
INSERT INTO breed (breedname) VALUES ('Golden Retriever');
INSERT INTO breed (breedname) VALUES ('Gordon Setter');
INSERT INTO breed (breedname) VALUES ('Great Dane');
INSERT INTO breed (breedname) VALUES ('Great Pyrenees');
INSERT INTO breed (breedname) VALUES ('Greater Swiss Mountain Dog');
INSERT INTO breed (breedname) VALUES ('Greyhound');
INSERT INTO breed (breedname) VALUES ('Ibizan Hound');
INSERT INTO breed (breedname) VALUES ('Irish Red and White Setter');
INSERT INTO breed (breedname) VALUES ('Irish Setter');
INSERT INTO breed (breedname) VALUES ('Irish Water Spaniel');
INSERT INTO breed (breedname) VALUES ('Irish Wolfhound');
INSERT INTO breed (breedname) VALUES ('Italian Greyhound');
INSERT INTO breed (breedname) VALUES ('Japanese Chin');
INSERT INTO breed (breedname) VALUES ('Komondor');
INSERT INTO breed (breedname) VALUES ('Kooikerhondje');
INSERT INTO breed (breedname) VALUES ('Kromfohrlander');
INSERT INTO breed (breedname) VALUES ('Kuvasz');
INSERT INTO breed (breedname) VALUES ('Lagotto Romagnolo');
INSERT INTO breed (breedname) VALUES ('Lakeland Terrier');
INSERT INTO breed (breedname) VALUES ('Large Munsterlander');
INSERT INTO breed (breedname) VALUES ('Lhasa Apso');
INSERT INTO breed (breedname) VALUES ('Lhasapoo');
INSERT INTO breed (breedname) VALUES ('Longdog');
INSERT INTO breed (breedname) VALUES ('Lowchen');
INSERT INTO breed (breedname) VALUES ('Lurcher');
INSERT INTO breed (breedname) VALUES ('Maltese');
INSERT INTO breed (breedname) VALUES ('Mastiff');
INSERT INTO breed (breedname) VALUES ('Miniature Bull Terrier');
INSERT INTO breed (breedname) VALUES ('Miniature Pinscher');
INSERT INTO breed (breedname) VALUES ('Miniature Schnauzer');
INSERT INTO breed (breedname) VALUES ('Mudi');
INSERT INTO breed (breedname) VALUES ('Neapolitan Mastiff');
INSERT INTO breed (breedname) VALUES ('Newfoundland');
INSERT INTO breed (breedname) VALUES ('Norwegian Buhund');
INSERT INTO breed (breedname) VALUES ('Norwegian Elkhound');
INSERT INTO breed (breedname) VALUES ('Norwegian Lundehund');
INSERT INTO breed (breedname) VALUES ('Norwich Terrier');
INSERT INTO breed (breedname) VALUES ('Nova Scotia Duck Tolling Retriever');
INSERT INTO breed (breedname) VALUES ('Otterhound');
INSERT INTO breed (breedname) VALUES ('Pekeapoo');
INSERT INTO breed (breedname) VALUES ('Pekingese');
INSERT INTO breed (breedname) VALUES ('Pembroke Welsh Corgi');
INSERT INTO breed (breedname) VALUES ('Perro de Presa Canario');
INSERT INTO breed (breedname) VALUES ('Peruvian Inca Orchid');
INSERT INTO breed (breedname) VALUES ('Pharaoh Hound');
INSERT INTO breed (breedname) VALUES ('Plott');
INSERT INTO breed (breedname) VALUES ('Pointer');
INSERT INTO breed (breedname) VALUES ('Pomapoo');
INSERT INTO breed (breedname) VALUES ('Pomeranian');
INSERT INTO breed (breedname) VALUES ('Pomsky');
INSERT INTO breed (breedname) VALUES ('Portuguese Podengo');
INSERT INTO breed (breedname) VALUES ('Portuguese Water Dog');
INSERT INTO breed (breedname) VALUES ('Pug');
INSERT INTO breed (breedname) VALUES ('Puggle');
INSERT INTO breed (breedname) VALUES ('Pyrenean Shepherd');
INSERT INTO breed (breedname) VALUES ('Rat Terrier');
INSERT INTO breed (breedname) VALUES ('Redbone Coonhound');
INSERT INTO breed (breedname) VALUES ('Rhodesian Ridgeback');
INSERT INTO breed (breedname) VALUES ('Rottweiler');
INSERT INTO breed (breedname) VALUES ('Russian Toy');
INSERT INTO breed (breedname) VALUES ('Saint Bernard');
INSERT INTO breed (breedname) VALUES ('Saluki');
INSERT INTO breed (breedname) VALUES ('Samoyed');
INSERT INTO breed (breedname) VALUES ('Schapendoes');
INSERT INTO breed (breedname) VALUES ('Schipperke');
INSERT INTO breed (breedname) VALUES ('Schnoodle');
INSERT INTO breed (breedname) VALUES ('Scottish Terrier');
INSERT INTO breed (breedname) VALUES ('Sealyham Terrier');
INSERT INTO breed (breedname) VALUES ('Shetland Sheepdog');
INSERT INTO breed (breedname) VALUES ('Shiba Inu');
INSERT INTO breed (breedname) VALUES ('Shih Tzu');
INSERT INTO breed (breedname) VALUES ('Shihpoo');
INSERT INTO breed (breedname) VALUES ('Siberian Husky');
INSERT INTO breed (breedname) VALUES ('Silky Terrier');
INSERT INTO breed (breedname) VALUES ('Skye Terrier');
INSERT INTO breed (breedname) VALUES ('Sloughi');
INSERT INTO breed (breedname) VALUES ('Spanish Water Dog');
INSERT INTO breed (breedname) VALUES ('Spinone Italiano');
INSERT INTO breed (breedname) VALUES ('Sprollie');
INSERT INTO breed (breedname) VALUES ('Staffordshire Bull Terrier');
INSERT INTO breed (breedname) VALUES ('Standard Schnauzer');
INSERT INTO breed (breedname) VALUES ('Sussex Spaniel');
INSERT INTO breed (breedname) VALUES ('Thai Ridgeback');
INSERT INTO breed (breedname) VALUES ('Tibetan Mastiff');
INSERT INTO breed (breedname) VALUES ('Tibetan Spaniel');
INSERT INTO breed (breedname) VALUES ('Tosa Ken');
INSERT INTO breed (breedname) VALUES ('Toy Fox Terrier');
INSERT INTO breed (breedname) VALUES ('Toy Poodle');
INSERT INTO breed (breedname) VALUES ('Weimaraner');
INSERT INTO breed (breedname) VALUES ('Welsh Springer Spaniel');
INSERT INTO breed (breedname) VALUES ('Welsh Terrier');
INSERT INTO breed (breedname) VALUES ('Whippet');
INSERT INTO breed (breedname) VALUES ('Wirehaired Vizsla');
INSERT INTO breed (breedname) VALUES ('Xoloitzcuintli');
INSERT INTO breed (breedname) VALUES ('Yorkipoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (48, 'Affenpinscher');
INSERT INTO dogbreed (dogID, breedname) VALUES (192, 'Affenpinscher');
INSERT INTO dogbreed (dogID, breedname) VALUES (23, 'Afghan Hound');
INSERT INTO dogbreed (dogID, breedname) VALUES (116, 'Airedale Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (70, 'Akbash Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (144, 'Akbash Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (164, 'Akbash Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (54, 'Akita');
INSERT INTO dogbreed (dogID, breedname) VALUES (68, 'Alaskan Husky');
INSERT INTO dogbreed (dogID, breedname) VALUES (115, 'Alaskan Malamute');
INSERT INTO dogbreed (dogID, breedname) VALUES (139, 'American Bulldog');
INSERT INTO dogbreed (dogID, breedname) VALUES (195, 'American Bulldog');
INSERT INTO dogbreed (dogID, breedname) VALUES (76, 'American Foxhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (23, 'American Pit Bull Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (107, 'American Water Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (124, 'Aussiedoodle');
INSERT INTO dogbreed (dogID, breedname) VALUES (137, 'Australian Cattle Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (113, 'Australian Kelpie');
INSERT INTO dogbreed (dogID, breedname) VALUES (48, 'Australian Shepherd');
INSERT INTO dogbreed (dogID, breedname) VALUES (52, 'Australian Shepherd');
INSERT INTO dogbreed (dogID, breedname) VALUES (37, 'Australian Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (44, 'Australian Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (138, 'Australian Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (30, 'Azawakh');
INSERT INTO dogbreed (dogID, breedname) VALUES (87, 'Azawakh');
INSERT INTO dogbreed (dogID, breedname) VALUES (162, 'Azawakh');
INSERT INTO dogbreed (dogID, breedname) VALUES (103, 'Basenji');
INSERT INTO dogbreed (dogID, breedname) VALUES (203, 'Basenji');
INSERT INTO dogbreed (dogID, breedname) VALUES (26, 'Basset Bleu de Gascogne');
INSERT INTO dogbreed (dogID, breedname) VALUES (43, 'Basset Bleu de Gascogne');
INSERT INTO dogbreed (dogID, breedname) VALUES (106, 'Basset Hound');
INSERT INTO dogbreed (dogID, breedname) VALUES (2, 'Bearded Collie');
INSERT INTO dogbreed (dogID, breedname) VALUES (130, 'Beauceron');
INSERT INTO dogbreed (dogID, breedname) VALUES (91, 'Bedlington Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (92, 'Bedlington Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (90, 'Belgian Laekenois');
INSERT INTO dogbreed (dogID, breedname) VALUES (1, 'Belgian Malinois');
INSERT INTO dogbreed (dogID, breedname) VALUES (18, 'Belgian Malinois');
INSERT INTO dogbreed (dogID, breedname) VALUES (108, 'Belgian Sheepdog');
INSERT INTO dogbreed (dogID, breedname) VALUES (180, 'Belgian Sheepdog');
INSERT INTO dogbreed (dogID, breedname) VALUES (194, 'Belgian Sheepdog');
INSERT INTO dogbreed (dogID, breedname) VALUES (81, 'Belgian Tervuren');
INSERT INTO dogbreed (dogID, breedname) VALUES (152, 'Belgian Tervuren');
INSERT INTO dogbreed (dogID, breedname) VALUES (12, 'Berger Picard');
INSERT INTO dogbreed (dogID, breedname) VALUES (66, 'Berger Picard');
INSERT INTO dogbreed (dogID, breedname) VALUES (169, 'Berger Picard');
INSERT INTO dogbreed (dogID, breedname) VALUES (34, 'Bernese Mountain Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (74, 'Bernese Mountain Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (146, 'Bernese Mountain Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (43, 'Bichon Frise');
INSERT INTO dogbreed (dogID, breedname) VALUES (169, 'Bichon Frise');
INSERT INTO dogbreed (dogID, breedname) VALUES (203, 'Black and Tan Coonhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (1, 'Black Russian Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (55, 'Black Russian Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (142, 'Bloodhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (9, 'Blue Picardy Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (80, 'Bluetick Coonhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (123, 'Bluetick Coonhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (4, 'Boerboel');
INSERT INTO dogbreed (dogID, breedname) VALUES (204, 'Bolognese');
INSERT INTO dogbreed (dogID, breedname) VALUES (16, 'Border Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (92, 'Border Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (159, 'Borzoi');
INSERT INTO dogbreed (dogID, breedname) VALUES (98, 'Boston Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (163, 'Boston Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (86, 'Bouvier des Flandres');
INSERT INTO dogbreed (dogID, breedname) VALUES (201, 'Boxer');
INSERT INTO dogbreed (dogID, breedname) VALUES (57, 'Boykin Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (82, 'Boykin Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (2, 'Brussels Griffon');
INSERT INTO dogbreed (dogID, breedname) VALUES (122, 'Brussels Griffon');
INSERT INTO dogbreed (dogID, breedname) VALUES (140, 'Brussels Griffon');
INSERT INTO dogbreed (dogID, breedname) VALUES (179, 'Brussels Griffon');
INSERT INTO dogbreed (dogID, breedname) VALUES (132, 'Bull Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (175, 'Bull Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (89, 'Bullmastiff');
INSERT INTO dogbreed (dogID, breedname) VALUES (124, 'Cairn Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (7, 'Canaan Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (87, 'Canaan Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (50, 'Cane Corso');
INSERT INTO dogbreed (dogID, breedname) VALUES (62, 'Cane Corso');
INSERT INTO dogbreed (dogID, breedname) VALUES (149, 'Cane Corso');
INSERT INTO dogbreed (dogID, breedname) VALUES (157, 'Cane Corso');
INSERT INTO dogbreed (dogID, breedname) VALUES (9, 'Cardigan Welsh Corgi');
INSERT INTO dogbreed (dogID, breedname) VALUES (83, 'Cardigan Welsh Corgi');
INSERT INTO dogbreed (dogID, breedname) VALUES (145, 'Cardigan Welsh Corgi');
INSERT INTO dogbreed (dogID, breedname) VALUES (10, 'Catahoula Leopard Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (22, 'Catahoula Leopard Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (17, 'Caucasian Ovcharka');
INSERT INTO dogbreed (dogID, breedname) VALUES (32, 'Cavalier King Charles Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (105, 'Cavalier King Charles Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (119, 'Cavalier King Charles Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (153, 'Cavalier King Charles Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (172, 'Cavalier King Charles Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (144, 'Cavapom');
INSERT INTO dogbreed (dogID, breedname) VALUES (151, 'Cavapom');
INSERT INTO dogbreed (dogID, breedname) VALUES (172, 'Cavapom');
INSERT INTO dogbreed (dogID, breedname) VALUES (110, 'Cavapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (141, 'Cesky Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (73, 'Chesapeake Bay Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (65, 'Chihuahua');
INSERT INTO dogbreed (dogID, breedname) VALUES (102, 'Chihuahua');
INSERT INTO dogbreed (dogID, breedname) VALUES (121, 'Chihuahua');
INSERT INTO dogbreed (dogID, breedname) VALUES (154, 'Chihuahua');
INSERT INTO dogbreed (dogID, breedname) VALUES (133, 'Chinese Shar-Pei');
INSERT INTO dogbreed (dogID, breedname) VALUES (180, 'Chinese Shar-Pei');
INSERT INTO dogbreed (dogID, breedname) VALUES (32, 'Chinook');
INSERT INTO dogbreed (dogID, breedname) VALUES (202, 'Chow Chow');
INSERT INTO dogbreed (dogID, breedname) VALUES (85, 'Chug');
INSERT INTO dogbreed (dogID, breedname) VALUES (110, 'Chug');
INSERT INTO dogbreed (dogID, breedname) VALUES (31, 'Cirneco dell''Etna');
INSERT INTO dogbreed (dogID, breedname) VALUES (150, 'Cirneco dell''Etna');
INSERT INTO dogbreed (dogID, breedname) VALUES (191, 'Cirneco dell''Etna');
INSERT INTO dogbreed (dogID, breedname) VALUES (67, 'Clumber Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (137, 'Clumber Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (125, 'Cockapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (148, 'Cockapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (150, 'Cockapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (51, 'Cocker Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (128, 'Cocker Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (156, 'Cocker Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (15, 'Collie');
INSERT INTO dogbreed (dogID, breedname) VALUES (20, 'Collie');
INSERT INTO dogbreed (dogID, breedname) VALUES (62, 'Collie');
INSERT INTO dogbreed (dogID, breedname) VALUES (13, 'Curly-Coated Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (194, 'Curly-Coated Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (42, 'Dachshund');
INSERT INTO dogbreed (dogID, breedname) VALUES (131, 'Dalmatian');
INSERT INTO dogbreed (dogID, breedname) VALUES (38, 'Dogue de Bordeaux');
INSERT INTO dogbreed (dogID, breedname) VALUES (21, 'English Cocker Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (73, 'English Cocker Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (19, 'English Foxhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (79, 'English Foxhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (155, 'English Setter');
INSERT INTO dogbreed (dogID, breedname) VALUES (198, 'English Setter');
INSERT INTO dogbreed (dogID, breedname) VALUES (81, 'English Springer Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (86, 'English Springer Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (167, 'English Springer Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (177, 'English Springer Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (183, 'English Springer Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (135, 'English Toy Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (8, 'Eurasier');
INSERT INTO dogbreed (dogID, breedname) VALUES (39, 'Eurasier');
INSERT INTO dogbreed (dogID, breedname) VALUES (152, 'Field Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (39, 'Finnish Lapphund');
INSERT INTO dogbreed (dogID, breedname) VALUES (149, 'Finnish Lapphund');
INSERT INTO dogbreed (dogID, breedname) VALUES (150, 'Finnish Lapphund');
INSERT INTO dogbreed (dogID, breedname) VALUES (199, 'Finnish Spitz');
INSERT INTO dogbreed (dogID, breedname) VALUES (50, 'Fox Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (67, 'Fox Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (112, 'Fox Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (146, 'French Bulldog');
INSERT INTO dogbreed (dogID, breedname) VALUES (46, 'German Pinscher');
INSERT INTO dogbreed (dogID, breedname) VALUES (101, 'German Shepherd Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (103, 'German Shepherd Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (3, 'German Shorthaired Pointer');
INSERT INTO dogbreed (dogID, breedname) VALUES (64, 'German Shorthaired Pointer');
INSERT INTO dogbreed (dogID, breedname) VALUES (153, 'German Shorthaired Pointer');
INSERT INTO dogbreed (dogID, breedname) VALUES (134, 'German Wirehaired Pointer');
INSERT INTO dogbreed (dogID, breedname) VALUES (200, 'German Wirehaired Pointer');
INSERT INTO dogbreed (dogID, breedname) VALUES (172, 'Golden Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (178, 'Golden Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (197, 'Golden Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (55, 'Gordon Setter');
INSERT INTO dogbreed (dogID, breedname) VALUES (61, 'Gordon Setter');
INSERT INTO dogbreed (dogID, breedname) VALUES (100, 'Gordon Setter');
INSERT INTO dogbreed (dogID, breedname) VALUES (53, 'Great Dane');
INSERT INTO dogbreed (dogID, breedname) VALUES (72, 'Great Dane');
INSERT INTO dogbreed (dogID, breedname) VALUES (174, 'Great Pyrenees');
INSERT INTO dogbreed (dogID, breedname) VALUES (22, 'Greater Swiss Mountain Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (101, 'Greater Swiss Mountain Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (196, 'Greater Swiss Mountain Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (93, 'Greyhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (136, 'Greyhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (6, 'Ibizan Hound');
INSERT INTO dogbreed (dogID, breedname) VALUES (187, 'Irish Red and White Setter');
INSERT INTO dogbreed (dogID, breedname) VALUES (29, 'Irish Setter');
INSERT INTO dogbreed (dogID, breedname) VALUES (179, 'Irish Setter');
INSERT INTO dogbreed (dogID, breedname) VALUES (32, 'Irish Water Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (44, 'Irish Water Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (70, 'Irish Water Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (131, 'Irish Water Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (182, 'Irish Water Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (204, 'Irish Water Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (205, 'Irish Wolfhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (22, 'Italian Greyhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (89, 'Japanese Chin');
INSERT INTO dogbreed (dogID, breedname) VALUES (99, 'Komondor');
INSERT INTO dogbreed (dogID, breedname) VALUES (125, 'Kooikerhondje');
INSERT INTO dogbreed (dogID, breedname) VALUES (147, 'Kooikerhondje');
INSERT INTO dogbreed (dogID, breedname) VALUES (125, 'Kromfohrlander');
INSERT INTO dogbreed (dogID, breedname) VALUES (13, 'Kuvasz');
INSERT INTO dogbreed (dogID, breedname) VALUES (20, 'Kuvasz');
INSERT INTO dogbreed (dogID, breedname) VALUES (202, 'Kuvasz');
INSERT INTO dogbreed (dogID, breedname) VALUES (35, 'Lagotto Romagnolo');
INSERT INTO dogbreed (dogID, breedname) VALUES (114, 'Lagotto Romagnolo');
INSERT INTO dogbreed (dogID, breedname) VALUES (121, 'Lagotto Romagnolo');
INSERT INTO dogbreed (dogID, breedname) VALUES (75, 'Lakeland Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (176, 'Lakeland Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (195, 'Lakeland Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (88, 'Large Munsterlander');
INSERT INTO dogbreed (dogID, breedname) VALUES (148, 'Large Munsterlander');
INSERT INTO dogbreed (dogID, breedname) VALUES (117, 'Lhasa Apso');
INSERT INTO dogbreed (dogID, breedname) VALUES (203, 'Lhasa Apso');
INSERT INTO dogbreed (dogID, breedname) VALUES (75, 'Lhasapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (136, 'Lhasapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (174, 'Lhasapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (188, 'Lhasapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (168, 'Longdog');
INSERT INTO dogbreed (dogID, breedname) VALUES (2, 'Lowchen');
INSERT INTO dogbreed (dogID, breedname) VALUES (102, 'Lurcher');
INSERT INTO dogbreed (dogID, breedname) VALUES (56, 'Maltese');
INSERT INTO dogbreed (dogID, breedname) VALUES (73, 'Maltese');
INSERT INTO dogbreed (dogID, breedname) VALUES (9, 'Mastiff');
INSERT INTO dogbreed (dogID, breedname) VALUES (79, 'Miniature Bull Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (164, 'Miniature Bull Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (71, 'Miniature Pinscher');
INSERT INTO dogbreed (dogID, breedname) VALUES (173, 'Miniature Pinscher');
INSERT INTO dogbreed (dogID, breedname) VALUES (161, 'Miniature Schnauzer');
INSERT INTO dogbreed (dogID, breedname) VALUES (11, 'Mudi');
INSERT INTO dogbreed (dogID, breedname) VALUES (126, 'Neapolitan Mastiff');
INSERT INTO dogbreed (dogID, breedname) VALUES (202, 'Neapolitan Mastiff');
INSERT INTO dogbreed (dogID, breedname) VALUES (14, 'Newfoundland');
INSERT INTO dogbreed (dogID, breedname) VALUES (190, 'Norwegian Buhund');
INSERT INTO dogbreed (dogID, breedname) VALUES (127, 'Norwegian Elkhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (94, 'Norwegian Lundehund');
INSERT INTO dogbreed (dogID, breedname) VALUES (158, 'Norwegian Lundehund');
INSERT INTO dogbreed (dogID, breedname) VALUES (110, 'Norwich Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (21, 'Nova Scotia Duck Tolling Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (141, 'Nova Scotia Duck Tolling Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (202, 'Nova Scotia Duck Tolling Retriever');
INSERT INTO dogbreed (dogID, breedname) VALUES (4, 'Otterhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (146, 'Otterhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (205, 'Otterhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (189, 'Pekeapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (155, 'Pekingese');
INSERT INTO dogbreed (dogID, breedname) VALUES (81, 'Pembroke Welsh Corgi');
INSERT INTO dogbreed (dogID, breedname) VALUES (96, 'Pembroke Welsh Corgi');
INSERT INTO dogbreed (dogID, breedname) VALUES (39, 'Perro de Presa Canario');
INSERT INTO dogbreed (dogID, breedname) VALUES (105, 'Perro de Presa Canario');
INSERT INTO dogbreed (dogID, breedname) VALUES (33, 'Peruvian Inca Orchid');
INSERT INTO dogbreed (dogID, breedname) VALUES (161, 'Peruvian Inca Orchid');
INSERT INTO dogbreed (dogID, breedname) VALUES (185, 'Peruvian Inca Orchid');
INSERT INTO dogbreed (dogID, breedname) VALUES (45, 'Pharaoh Hound');
INSERT INTO dogbreed (dogID, breedname) VALUES (165, 'Pharaoh Hound');
INSERT INTO dogbreed (dogID, breedname) VALUES (148, 'Plott');
INSERT INTO dogbreed (dogID, breedname) VALUES (77, 'Pointer');
INSERT INTO dogbreed (dogID, breedname) VALUES (115, 'Pointer');
INSERT INTO dogbreed (dogID, breedname) VALUES (173, 'Pomapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (184, 'Pomapoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (58, 'Pomeranian');
INSERT INTO dogbreed (dogID, breedname) VALUES (113, 'Pomeranian');
INSERT INTO dogbreed (dogID, breedname) VALUES (100, 'Pomsky');
INSERT INTO dogbreed (dogID, breedname) VALUES (170, 'Pomsky');
INSERT INTO dogbreed (dogID, breedname) VALUES (187, 'Pomsky');
INSERT INTO dogbreed (dogID, breedname) VALUES (71, 'Portuguese Podengo');
INSERT INTO dogbreed (dogID, breedname) VALUES (118, 'Portuguese Podengo');
INSERT INTO dogbreed (dogID, breedname) VALUES (6, 'Portuguese Water Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (119, 'Pug');
INSERT INTO dogbreed (dogID, breedname) VALUES (99, 'Puggle');
INSERT INTO dogbreed (dogID, breedname) VALUES (46, 'Pyrenean Shepherd');
INSERT INTO dogbreed (dogID, breedname) VALUES (9, 'Rat Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (11, 'Redbone Coonhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (47, 'Redbone Coonhound');
INSERT INTO dogbreed (dogID, breedname) VALUES (41, 'Rhodesian Ridgeback');
INSERT INTO dogbreed (dogID, breedname) VALUES (95, 'Rottweiler');
INSERT INTO dogbreed (dogID, breedname) VALUES (60, 'Russian Toy');
INSERT INTO dogbreed (dogID, breedname) VALUES (160, 'Russian Toy');
INSERT INTO dogbreed (dogID, breedname) VALUES (96, 'Saint Bernard');
INSERT INTO dogbreed (dogID, breedname) VALUES (181, 'Saint Bernard');
INSERT INTO dogbreed (dogID, breedname) VALUES (104, 'Saluki');
INSERT INTO dogbreed (dogID, breedname) VALUES (129, 'Saluki');
INSERT INTO dogbreed (dogID, breedname) VALUES (8, 'Samoyed');
INSERT INTO dogbreed (dogID, breedname) VALUES (166, 'Samoyed');
INSERT INTO dogbreed (dogID, breedname) VALUES (192, 'Schapendoes');
INSERT INTO dogbreed (dogID, breedname) VALUES (24, 'Schipperke');
INSERT INTO dogbreed (dogID, breedname) VALUES (74, 'Schipperke');
INSERT INTO dogbreed (dogID, breedname) VALUES (143, 'Schipperke');
INSERT INTO dogbreed (dogID, breedname) VALUES (97, 'Schnoodle');
INSERT INTO dogbreed (dogID, breedname) VALUES (154, 'Scottish Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (129, 'Sealyham Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (162, 'Sealyham Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (37, 'Shetland Sheepdog');
INSERT INTO dogbreed (dogID, breedname) VALUES (40, 'Shetland Sheepdog');
INSERT INTO dogbreed (dogID, breedname) VALUES (69, 'Shetland Sheepdog');
INSERT INTO dogbreed (dogID, breedname) VALUES (164, 'Shetland Sheepdog');
INSERT INTO dogbreed (dogID, breedname) VALUES (34, 'Shiba Inu');
INSERT INTO dogbreed (dogID, breedname) VALUES (109, 'Shiba Inu');
INSERT INTO dogbreed (dogID, breedname) VALUES (27, 'Shih Tzu');
INSERT INTO dogbreed (dogID, breedname) VALUES (134, 'Shihpoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (86, 'Siberian Husky');
INSERT INTO dogbreed (dogID, breedname) VALUES (78, 'Silky Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (25, 'Skye Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (120, 'Skye Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (171, 'Sloughi');
INSERT INTO dogbreed (dogID, breedname) VALUES (5, 'Spanish Water Dog');
INSERT INTO dogbreed (dogID, breedname) VALUES (16, 'Spinone Italiano');
INSERT INTO dogbreed (dogID, breedname) VALUES (122, 'Spinone Italiano');
INSERT INTO dogbreed (dogID, breedname) VALUES (157, 'Spinone Italiano');
INSERT INTO dogbreed (dogID, breedname) VALUES (169, 'Spinone Italiano');
INSERT INTO dogbreed (dogID, breedname) VALUES (19, 'Sprollie');
INSERT INTO dogbreed (dogID, breedname) VALUES (59, 'Staffordshire Bull Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (62, 'Staffordshire Bull Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (63, 'Standard Schnauzer');
INSERT INTO dogbreed (dogID, breedname) VALUES (93, 'Sussex Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (109, 'Thai Ridgeback');
INSERT INTO dogbreed (dogID, breedname) VALUES (101, 'Tibetan Mastiff');
INSERT INTO dogbreed (dogID, breedname) VALUES (26, 'Tibetan Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (49, 'Tibetan Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (51, 'Tosa Ken');
INSERT INTO dogbreed (dogID, breedname) VALUES (81, 'Tosa Ken');
INSERT INTO dogbreed (dogID, breedname) VALUES (52, 'Toy Fox Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (27, 'Toy Poodle');
INSERT INTO dogbreed (dogID, breedname) VALUES (36, 'Toy Poodle');
INSERT INTO dogbreed (dogID, breedname) VALUES (100, 'Toy Poodle');
INSERT INTO dogbreed (dogID, breedname) VALUES (111, 'Toy Poodle');
INSERT INTO dogbreed (dogID, breedname) VALUES (118, 'Toy Poodle');
INSERT INTO dogbreed (dogID, breedname) VALUES (170, 'Toy Poodle');
INSERT INTO dogbreed (dogID, breedname) VALUES (193, 'Weimaraner');
INSERT INTO dogbreed (dogID, breedname) VALUES (28, 'Welsh Springer Spaniel');
INSERT INTO dogbreed (dogID, breedname) VALUES (123, 'Welsh Terrier');
INSERT INTO dogbreed (dogID, breedname) VALUES (105, 'Whippet');
INSERT INTO dogbreed (dogID, breedname) VALUES (30, 'Wirehaired Vizsla');
INSERT INTO dogbreed (dogID, breedname) VALUES (19, 'Xoloitzcuintli');
INSERT INTO dogbreed (dogID, breedname) VALUES (61, 'Xoloitzcuintli');
INSERT INTO dogbreed (dogID, breedname) VALUES (84, 'Xoloitzcuintli');
INSERT INTO dogbreed (dogID, breedname) VALUES (104, 'Xoloitzcuintli');
INSERT INTO dogbreed (dogID, breedname) VALUES (186, 'Xoloitzcuintli');
INSERT INTO dogbreed (dogID, breedname) VALUES (62, 'Yorkipoo');
INSERT INTO dogbreed (dogID, breedname) VALUES (65, 'Yorkipoo');
-- Updated with expenses data 
INSERT INTO expensecategory (category) VALUES ('Dental care');
INSERT INTO expensecategory (category) VALUES ('Food supplies');
INSERT INTO expensecategory (category) VALUES ('Grooming supplies');
INSERT INTO expensecategory (category) VALUES ('Leashes, collars, harnesses');
INSERT INTO expensecategory (category) VALUES ('Medications');
INSERT INTO expensecategory (category) VALUES ('Miscellaneous');
INSERT INTO expensecategory (category) VALUES ('Shelter supplies');
INSERT INTO expensecategory (category) VALUES ('Transportation');
INSERT INTO expensecategory (category) VALUES ('Treats and Toys');
INSERT INTO expensecategory (category) VALUES ('Veterinarian fees');
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (1, 'TagWorks', 'Dental care', '2023-10-06', 1.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Hudson', 'Dental care', '2024-01-17', 288.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Kahoots Pet', 'Dental care', '2023-11-28', 1.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pet Group Inc', 'Dental care', '2023-11-28', 18.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Arrieros Pet Shop', 'Dental care', '2023-11-06', 40.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Canine Learning Centers', 'Dental care', '2023-12-11', 62.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (10, 'Dr Rozenman', 'Dental care', '2023-11-13', 31.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (14, 'Canine Learning Centers', 'Dental care', '2023-11-22', 9.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (14, 'Unleashed by Petco', 'Dental care', '2023-11-22', 7.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (17, 'Dr Towers', 'Dental care', '2023-12-04', 126.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Decker''s Dog and Cat', 'Dental care', '2024-01-25', 2.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'TagWorks', 'Dental care', '2024-01-30', 21.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Canine Learning Centers', 'Dental care', '2024-01-17', 74.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Brown', 'Dental care', '2024-02-05', 45.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Rozenman', 'Dental care', '2024-01-29', 293.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Smith', 'Dental care', '2024-01-25', 276.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Dr Hudson', 'Dental care', '2023-12-25', 129.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (27, 'Dr Brown', 'Dental care', '2023-12-30', 83.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Pet Kingdom', 'Dental care', '2024-01-20', 9.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (38, 'Pawerica Pet Store', 'Dental care', '2024-01-21', 20.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Dr Jones', 'Dental care', '2024-02-28', 90.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Pet Group Inc', 'Dental care', '2024-02-21', 25.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Petco', 'Dental care', '2024-02-21', 0.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Pet Group Inc', 'Dental care', '2024-03-25', 3.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'TagWorks', 'Dental care', '2024-05-07', 9.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Dr Hudson', 'Dental care', '2024-02-10', 132.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Dr Brown', 'Dental care', '2024-02-13', 141.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Wilson', 'Dental care', '2024-03-12', 152.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Pawerica Pet Store', 'Dental care', '2024-04-11', 2.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Petco', 'Dental care', '2024-03-18', 10.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (52, 'Decker''s Dog and Cat', 'Dental care', '2024-02-25', 16.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Pet Group Inc', 'Dental care', '2024-03-02', 10.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (56, 'Pet Kingdom', 'Dental care', '2024-03-13', 21.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Dr Wilson', 'Dental care', '2024-03-28', 54.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Dr Rozenman', 'Dental care', '2024-04-15', 112.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Canine Learning Centers', 'Dental care', '2024-04-05', 10.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Arnold', 'Dental care', '2024-03-07', 147.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Rozenman', 'Dental care', '2024-03-23', 274.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Wilson', 'Dental care', '2024-04-05', 31.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'TagWorks', 'Dental care', '2024-04-06', 74.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'Dr Brown', 'Dental care', '2024-03-30', 170.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'Dr Jones', 'Dental care', '2024-03-27', 185.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Pet Kingdom', 'Dental care', '2024-05-06', 34.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'Kahoots Pet', 'Dental care', '2024-04-14', 3.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (69, 'Arrieros Pet Shop', 'Dental care', '2024-04-12', 35.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Dr Rozenman', 'Dental care', '2024-04-27', 180.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Pet Kingdom', 'Dental care', '2024-04-21', 10.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (71, 'Canine Learning Centers', 'Dental care', '2024-04-24', 48.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Arnold', 'Dental care', '2024-05-23', 65.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Arnold', 'Dental care', '2024-06-07', 245.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Rozenman', 'Dental care', '2024-05-23', 245.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Wilson', 'Dental care', '2024-05-05', 127.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Pet Group Inc', 'Dental care', '2024-05-05', 23.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Dr Jones', 'Dental care', '2024-05-20', 199.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Petco', 'Dental care', '2024-05-17', 15.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Jones', 'Dental care', '2024-06-02', 232.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Jones', 'Dental care', '2024-06-13', 211.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Towers', 'Dental care', '2024-06-10', 278.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Wilson', 'Dental care', '2024-06-29', 260.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Wilson', 'Dental care', '2024-07-17', 185.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'TagWorks', 'Dental care', '2024-06-11', 20.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (85, 'Dr Arnold', 'Dental care', '2024-06-15', 210.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Jones', 'Dental care', '2024-06-19', 227.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'TagWorks', 'Dental care', '2024-06-18', 20.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Canine Learning Centers', 'Dental care', '2024-07-08', 6.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Dr Rozenman', 'Dental care', '2024-06-17', 209.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Dr Jones', 'Dental care', '2024-06-16', 294.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Unleashed by Petco', 'Dental care', '2024-06-19', 42.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Dr Arnold', 'Dental care', '2024-06-24', 203.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Arnold', 'Dental care', '2024-07-15', 11.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Arnold', 'Dental care', '2024-07-24', 11.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (96, 'Unleashed by Petco', 'Dental care', '2024-07-02', 47.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Dr Arnold', 'Dental care', '2024-07-09', 214.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Dr Brown', 'Dental care', '2024-07-19', 77.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'TagWorks', 'Dental care', '2024-07-19', 11.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Dr Smith', 'Dental care', '2024-07-22', 37.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Dr Towers', 'Dental care', '2024-07-29', 255.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Pet Kingdom', 'Dental care', '2024-07-29', 13.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Pawerica Pet Store', 'Dental care', '2024-07-27', 20.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Pawerica Pet Store', 'Dental care', '2024-08-08', 29.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Canine Learning Centers', 'Dental care', '2024-08-28', 8.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Brown', 'Dental care', '2024-08-01', 290.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Smith', 'Dental care', '2024-08-22', 132.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Decker''s Dog and Cat', 'Dental care', '2024-10-25', 18.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Decker''s Dog and Cat', 'Dental care', '2024-11-09', 22.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Dental care', '2024-08-09', 12.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Dental care', '2024-10-08', 171.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Hudson', 'Dental care', '2024-12-16', 189.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Jones', 'Dental care', '2024-10-01', 12.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Jones', 'Dental care', '2024-11-09', 27.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Rozenman', 'Dental care', '2024-10-08', 8.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Rozenman', 'Dental care', '2024-11-19', 233.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pet Kingdom', 'Dental care', '2024-12-30', 21.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Arrieros Pet Shop', 'Dental care', '2024-09-16', 11.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Jones', 'Dental care', '2024-08-20', 246.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Arnold', 'Dental care', '2024-08-16', 127.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Petco', 'Dental care', '2024-08-16', 57.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Petco', 'Dental care', '2024-08-27', 60.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Arrieros Pet Shop', 'Dental care', '2024-09-02', 23.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Canine Learning Centers', 'Dental care', '2024-08-17', 3.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Hudson', 'Dental care', '2024-08-16', 144.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Pawerica Pet Store', 'Dental care', '2024-09-02', 0.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Wilson', 'Dental care', '2024-08-30', 236.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pet Group Inc', 'Dental care', '2024-09-11', 0.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Brown', 'Dental care', '2024-10-11', 221.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Rozenman', 'Dental care', '2024-10-04', 228.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'TagWorks', 'Dental care', '2024-09-13', 25.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Arrieros Pet Shop', 'Dental care', '2024-09-12', 19.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Arrieros Pet Shop', 'Dental care', '2024-09-19', 13.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Rozenman', 'Dental care', '2024-12-04', 177.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Wilson', 'Dental care', '2024-09-17', 3.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Wilson', 'Dental care', '2024-10-07', 118.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Group Inc', 'Dental care', '2024-09-17', 8.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Group Inc', 'Dental care', '2024-10-07', 4.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (130, 'Petco', 'Dental care', '2024-10-15', 3.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Arrieros Pet Shop', 'Dental care', '2024-10-27', 4.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Smith', 'Dental care', '2024-10-05', 177.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Canine Learning Centers', 'Dental care', '2024-10-11', 11.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Pet Kingdom', 'Dental care', '2024-10-14', 0.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Dr Brown', 'Dental care', '2024-11-04', 77.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Pawerica Pet Store', 'Dental care', '2024-10-10', 14.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (137, 'Dr Arnold', 'Dental care', '2024-10-22', 68.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (138, 'Dr Arnold', 'Dental care', '2024-10-23', 27.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Kahoots Pet', 'Dental care', '2024-10-28', 12.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Arnold', 'Dental care', '2024-12-17', 243.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Jones', 'Dental care', '2024-11-01', 25.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Towers', 'Dental care', '2024-12-06', 183.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'TagWorks', 'Dental care', '2024-12-17', 8.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (143, 'Decker''s Dog and Cat', 'Dental care', '2024-11-07', 54.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (143, 'Pawerica Pet Store', 'Dental care', '2024-11-07', 20.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (144, 'Kahoots Pet', 'Dental care', '2024-11-16', 9.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (144, 'Pet Kingdom', 'Dental care', '2024-11-14', 32.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (144, 'Pet Kingdom', 'Dental care', '2024-11-17', 9.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Hudson', 'Dental care', '2024-12-09', 21.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Pet Kingdom', 'Dental care', '2024-11-18', 20.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Pet Kingdom', 'Dental care', '2024-12-05', 16.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'TagWorks', 'Dental care', '2024-12-17', 56.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Decker''s Dog and Cat', 'Dental care', '2024-12-05', 8.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Wilson', 'Dental care', '2024-12-06', 159.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Wilson', 'Dental care', '2024-12-26', 65.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Petco', 'Dental care', '2024-12-06', 10.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (149, 'Pet Group Inc', 'Dental care', '2024-11-25', 3.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Brown', 'Dental care', '2024-12-20', 188.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Hudson', 'Dental care', '2024-12-26', 237.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Jones', 'Dental care', '2024-12-26', 147.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Smith', 'Dental care', '2024-12-25', 102.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Towers', 'Dental care', '2025-01-01', 98.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Jones', 'Dental care', '2024-12-14', 231.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Smith', 'Dental care', '2024-12-19', 272.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Pet Group Inc', 'Dental care', '2024-12-14', 43.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Canine Learning Centers', 'Dental care', '2024-12-21', 7.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Arnold', 'Dental care', '2024-12-30', 181.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Brown', 'Dental care', '2024-12-30', 34.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Wilson', 'Dental care', '2024-12-30', 5.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'TagWorks', 'Dental care', '2024-12-30', 16.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Dr Arnold', 'Dental care', '2024-12-20', 260.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Dr Towers', 'Dental care', '2024-12-19', 63.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Arnold', 'Dental care', '2025-01-05', 60.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Hudson', 'Dental care', '2025-01-11', 261.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Smith', 'Dental care', '2025-01-23', 225.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Towers', 'Dental care', '2025-01-02', 42.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Wilson', 'Dental care', '2025-01-06', 264.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pawerica Pet Store', 'Dental care', '2025-01-11', 53.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pet Kingdom', 'Dental care', '2025-01-09', 70.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'TagWorks', 'Dental care', '2025-01-05', 50.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'TagWorks', 'Dental care', '2025-01-25', 8.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Dr Towers', 'Dental care', '2025-01-08', 133.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Petco', 'Dental care', '2025-01-05', 11.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Arrieros Pet Shop', 'Dental care', '2025-01-21', 61.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Canine Learning Centers', 'Dental care', '2025-01-23', 48.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Arnold', 'Dental care', '2025-01-08', 288.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Arnold', 'Dental care', '2025-01-14', 289.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Brown', 'Dental care', '2025-02-09', 174.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Hudson', 'Dental care', '2025-01-22', 44.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Wilson', 'Dental care', '2025-01-12', 268.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Kahoots Pet', 'Dental care', '2025-01-12', 10.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Arnold', 'Dental care', '2025-01-14', 11.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Smith', 'Dental care', '2025-01-14', 178.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Pet Group Inc', 'Dental care', '2025-01-09', 19.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Dr Brown', 'Dental care', '2025-01-13', 168.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Dr Towers', 'Dental care', '2025-01-24', 237.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Kahoots Pet', 'Dental care', '2025-01-07', 24.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'TagWorks', 'Dental care', '2025-01-13', 15.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (165, 'TagWorks', 'Dental care', '2025-01-10', 23.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Canine Learning Centers', 'Dental care', '2025-01-14', 21.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Arrieros Pet Shop', 'Dental care', '2025-01-15', 0.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (171, 'Dr Rozenman', 'Dental care', '2025-01-20', 196.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Arrieros Pet Shop', 'Dental care', '2025-02-03', 10.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Hudson', 'Dental care', '2025-02-12', 255.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Pet Kingdom', 'Dental care', '2025-02-07', 18.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'TagWorks', 'Dental care', '2025-02-13', 22.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (177, 'Dr Smith', 'Dental care', '2025-02-09', 178.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (179, 'Canine Learning Centers', 'Dental care', '2025-02-04', 22.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Pawerica Pet Store', 'Dental care', '2025-02-12', 56.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Kahoots Pet', 'Dental care', '2025-02-14', 2.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Arnold', 'Dental care', '2025-02-22', 276.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Kingdom', 'Dental care', '2025-02-17', 16.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Rozenman', 'Dental care', '2025-02-25', 229.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Wilson', 'Dental care', '2025-02-20', 15.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Kahoots Pet', 'Dental care', '2025-02-25', 17.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Pawerica Pet Store', 'Dental care', '2025-02-19', 6.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Pet Kingdom', 'Dental care', '2025-02-28', 23.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Pet Group Inc', 'Dental care', '2025-02-23', 49.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (190, 'Pet Kingdom', 'Dental care', '2025-02-26', 16.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Jones', 'Food supplies', '2024-01-17', 186.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Wilson', 'Food supplies', '2023-11-30', 102.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Petco', 'Food supplies', '2023-11-28', 12.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Unleashed by Petco', 'Food supplies', '2023-11-28', 20.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Dr Jones', 'Food supplies', '2023-11-06', 126.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Petco', 'Food supplies', '2023-12-17', 14.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (10, 'Arrieros Pet Shop', 'Food supplies', '2023-11-13', 5.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (14, 'Dr Towers', 'Food supplies', '2023-11-22', 162.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Canine Learning Centers', 'Food supplies', '2024-02-08', 51.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Decker''s Dog and Cat', 'Food supplies', '2024-01-30', 2.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pet Group Inc', 'Food supplies', '2024-01-10', 20.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pet Kingdom', 'Food supplies', '2024-01-30', 33.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Arrieros Pet Shop', 'Food supplies', '2024-01-25', 45.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Kahoots Pet', 'Food supplies', '2023-12-21', 12.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Pet Kingdom', 'Food supplies', '2024-01-25', 25.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'TagWorks', 'Food supplies', '2023-12-25', 13.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Dr Wilson', 'Food supplies', '2024-01-28', 259.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Kahoots Pet', 'Food supplies', '2024-02-10', 14.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (32, 'Pet Kingdom', 'Food supplies', '2024-01-08', 39.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Canine Learning Centers', 'Food supplies', '2024-02-01', 20.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Pawerica Pet Store', 'Food supplies', '2024-01-20', 22.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Unleashed by Petco', 'Food supplies', '2024-02-01', 20.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (39, 'Dr Brown', 'Food supplies', '2024-01-21', 93.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Kahoots Pet', 'Food supplies', '2024-01-23', 19.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Dr Rozenman', 'Food supplies', '2024-02-21', 236.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Dr Wilson', 'Food supplies', '2024-01-29', 82.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (42, 'Unleashed by Petco', 'Food supplies', '2024-01-30', 23.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Dr Brown', 'Food supplies', '2024-02-23', 96.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Kahoots Pet', 'Food supplies', '2024-02-23', 68.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'TagWorks', 'Food supplies', '2024-02-07', 13.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Arrieros Pet Shop', 'Food supplies', '2024-03-25', 58.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Pawerica Pet Store', 'Food supplies', '2024-03-10', 13.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Pet Group Inc', 'Food supplies', '2024-02-20', 6.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Arrieros Pet Shop', 'Food supplies', '2024-02-14', 7.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Arrieros Pet Shop', 'Food supplies', '2024-03-02', 8.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Dr Arnold', 'Food supplies', '2024-03-23', 40.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Pawerica Pet Store', 'Food supplies', '2024-03-23', 23.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Petco', 'Food supplies', '2024-03-16', 19.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Arnold', 'Food supplies', '2024-04-11', 147.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Smith', 'Food supplies', '2024-04-11', 39.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Pawerica Pet Store', 'Food supplies', '2024-03-12', 12.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Pet Group Inc', 'Food supplies', '2024-04-11', 53.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Pet Kingdom', 'Food supplies', '2024-02-21', 13.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Pet Kingdom', 'Food supplies', '2024-03-18', 7.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Unleashed by Petco', 'Food supplies', '2024-03-08', 12.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Decker''s Dog and Cat', 'Food supplies', '2024-03-13', 12.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Decker''s Dog and Cat', 'Food supplies', '2024-03-28', 1.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Dr Smith', 'Food supplies', '2024-03-04', 104.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Arrieros Pet Shop', 'Food supplies', '2024-04-25', 25.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'TagWorks', 'Food supplies', '2024-05-13', 0.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (60, 'Pet Kingdom', 'Food supplies', '2024-03-15', 9.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Petco', 'Food supplies', '2024-03-22', 9.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (64, 'Unleashed by Petco', 'Food supplies', '2024-04-04', 50.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Canine Learning Centers', 'Food supplies', '2024-04-25', 53.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'Decker''s Dog and Cat', 'Food supplies', '2024-05-03', 33.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (69, 'Dr Towers', 'Food supplies', '2024-04-12', 70.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Decker''s Dog and Cat', 'Food supplies', '2024-04-21', 10.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Pawerica Pet Store', 'Food supplies', '2024-04-21', 24.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (71, 'Dr Brown', 'Food supplies', '2024-04-28', 273.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Petco', 'Food supplies', '2024-06-11', 14.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (74, 'Decker''s Dog and Cat', 'Food supplies', '2024-05-02', 21.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (75, 'Decker''s Dog and Cat', 'Food supplies', '2024-05-17', 6.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (77, 'Dr Brown', 'Food supplies', '2024-05-25', 265.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (77, 'Dr Smith', 'Food supplies', '2024-05-25', 20.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Dr Smith', 'Food supplies', '2024-05-20', 208.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Towers', 'Food supplies', '2024-05-25', 173.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Towers', 'Food supplies', '2024-06-13', 97.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Petco', 'Food supplies', '2024-06-05', 22.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Smith', 'Food supplies', '2024-07-17', 2.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Towers', 'Food supplies', '2024-06-11', 298.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Pawerica Pet Store', 'Food supplies', '2024-06-29', 19.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Hudson', 'Food supplies', '2024-06-18', 292.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Pawerica Pet Store', 'Food supplies', '2024-06-29', 45.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Brown', 'Food supplies', '2024-07-24', 255.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Kahoots Pet', 'Food supplies', '2024-08-16', 36.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Pet Kingdom', 'Food supplies', '2024-07-15', 69.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Canine Learning Centers', 'Food supplies', '2024-07-06', 31.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Pawerica Pet Store', 'Food supplies', '2024-07-07', 20.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Canine Learning Centers', 'Food supplies', '2024-07-18', 31.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Dr Smith', 'Food supplies', '2024-07-21', 117.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Petco', 'Food supplies', '2024-08-15', 9.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Unleashed by Petco', 'Food supplies', '2024-08-08', 45.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Rozenman', 'Food supplies', '2024-09-15', 184.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Arrieros Pet Shop', 'Food supplies', '2024-10-01', 37.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Kahoots Pet', 'Food supplies', '2024-08-09', 39.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Kahoots Pet', 'Food supplies', '2024-10-01', 58.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Food supplies', '2024-12-01', 62.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Food supplies', '2025-01-09', 12.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Dr Towers', 'Food supplies', '2024-08-26', 258.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Petco', 'Food supplies', '2024-08-12', 33.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'TagWorks', 'Food supplies', '2024-08-09', 12.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Arnold', 'Food supplies', '2024-08-14', 180.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Jones', 'Food supplies', '2024-09-12', 178.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Rozenman', 'Food supplies', '2024-08-22', 186.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Wilson', 'Food supplies', '2024-08-09', 142.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Pet Group Inc', 'Food supplies', '2024-09-12', 65.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Unleashed by Petco', 'Food supplies', '2024-08-20', 40.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Unleashed by Petco', 'Food supplies', '2024-09-10', 11.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Wilson', 'Food supplies', '2024-08-16', 247.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Decker''s Dog and Cat', 'Food supplies', '2024-09-07', 13.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Hudson', 'Food supplies', '2024-09-02', 0.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'TagWorks', 'Food supplies', '2024-09-07', 64.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Unleashed by Petco', 'Food supplies', '2024-09-07', 2.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (118, 'Decker''s Dog and Cat', 'Food supplies', '2024-08-18', 47.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (119, 'Dr Smith', 'Food supplies', '2024-08-17', 0.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (119, 'Dr Towers', 'Food supplies', '2024-08-19', 30.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (121, 'Dr Smith', 'Food supplies', '2024-08-27', 250.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Kahoots Pet', 'Food supplies', '2024-09-11', 15.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (123, 'Dr Arnold', 'Food supplies', '2024-08-30', 181.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Towers', 'Food supplies', '2024-10-04', 149.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Pawerica Pet Store', 'Food supplies', '2024-09-25', 14.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Petco', 'Food supplies', '2024-09-22', 6.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Petco', 'Food supplies', '2024-10-11', 4.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (125, 'Dr Arnold', 'Food supplies', '2024-09-10', 28.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Arrieros Pet Shop', 'Food supplies', '2024-09-23', 44.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Arrieros Pet Shop', 'Food supplies', '2024-10-02', 20.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Arnold', 'Food supplies', '2024-11-30', 286.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Hudson', 'Food supplies', '2024-11-12', 73.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Hudson', 'Food supplies', '2024-12-08', 162.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Wilson', 'Food supplies', '2024-09-10', 78.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Group Inc', 'Food supplies', '2024-11-26', 28.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Group Inc', 'Food supplies', '2024-12-08', 14.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Food supplies', '2024-09-12', 38.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'TagWorks', 'Food supplies', '2024-10-09', 33.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'TagWorks', 'Food supplies', '2024-11-10', 24.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'TagWorks', 'Food supplies', '2024-11-25', 0.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Unleashed by Petco', 'Food supplies', '2024-10-09', 23.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (128, 'Dr Rozenman', 'Food supplies', '2024-09-23', 287.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Arrieros Pet Shop', 'Food supplies', '2024-10-14', 3.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Arrieros Pet Shop', 'Food supplies', '2024-10-24', 20.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Jones', 'Food supplies', '2024-10-14', 40.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Pet Group Inc', 'Food supplies', '2024-11-14', 4.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (133, 'Dr Smith', 'Food supplies', '2024-10-08', 202.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (133, 'Petco', 'Food supplies', '2024-10-08', 72.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Dr Wilson', 'Food supplies', '2024-11-04', 268.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Arrieros Pet Shop', 'Food supplies', '2025-01-15', 14.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Brown', 'Food supplies', '2024-11-25', 228.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pet Kingdom', 'Food supplies', '2025-01-10', 16.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Petco', 'Food supplies', '2024-12-12', 20.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'TagWorks', 'Food supplies', '2024-11-22', 70.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'TagWorks', 'Food supplies', '2024-11-27', 0.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'TagWorks', 'Food supplies', '2024-12-09', 45.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (144, 'Dr Brown', 'Food supplies', '2024-11-17', 180.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (146, 'Arrieros Pet Shop', 'Food supplies', '2024-11-21', 31.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (146, 'Unleashed by Petco', 'Food supplies', '2024-11-17', 16.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Brown', 'Food supplies', '2024-12-05', 78.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Brown', 'Food supplies', '2024-12-17', 295.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'TagWorks', 'Food supplies', '2024-12-11', 21.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Wilson', 'Food supplies', '2024-12-01', 100.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Petco', 'Food supplies', '2025-01-07', 70.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Unleashed by Petco', 'Food supplies', '2024-12-05', 20.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (149, 'Arrieros Pet Shop', 'Food supplies', '2024-11-25', 15.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Arrieros Pet Shop', 'Food supplies', '2024-12-18', 68.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Decker''s Dog and Cat', 'Food supplies', '2025-01-01', 1.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Hudson', 'Food supplies', '2025-01-06', 130.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Rozenman', 'Food supplies', '2024-12-16', 40.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Rozenman', 'Food supplies', '2025-01-04', 140.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Wilson', 'Food supplies', '2025-01-01', 266.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Pet Kingdom', 'Food supplies', '2024-12-22', 16.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Canine Learning Centers', 'Food supplies', '2024-12-17', 37.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Decker''s Dog and Cat', 'Food supplies', '2024-12-22', 74.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Towers', 'Food supplies', '2024-12-15', 59.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (152, 'Pet Kingdom', 'Food supplies', '2024-12-17', 39.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Hudson', 'Food supplies', '2024-12-21', 104.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Towers', 'Food supplies', '2024-12-26', 118.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Pet Kingdom', 'Food supplies', '2024-12-15', 1.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Pet Kingdom', 'Food supplies', '2024-12-19', 18.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (156, 'Dr Jones', 'Food supplies', '2024-12-18', 135.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (156, 'Dr Smith', 'Food supplies', '2024-12-18', 149.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Decker''s Dog and Cat', 'Food supplies', '2024-12-18', 48.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Dr Hudson', 'Food supplies', '2024-12-18', 15.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (158, 'Petco', 'Food supplies', '2024-12-30', 17.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (158, 'TagWorks', 'Food supplies', '2024-12-30', 6.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Brown', 'Food supplies', '2025-01-06', 36.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Jones', 'Food supplies', '2025-01-05', 168.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Jones', 'Food supplies', '2025-01-19', 195.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Dr Hudson', 'Food supplies', '2025-01-03', 250.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Dr Jones', 'Food supplies', '2025-01-03', 21.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Petco', 'Food supplies', '2025-01-05', 61.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Dr Brown', 'Food supplies', '2025-01-12', 249.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Petco', 'Food supplies', '2025-01-12', 8.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Hudson', 'Food supplies', '2025-01-14', 17.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Rozenman', 'Food supplies', '2025-01-07', 100.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Pawerica Pet Store', 'Food supplies', '2025-02-08', 58.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'TagWorks', 'Food supplies', '2025-01-21', 49.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Unleashed by Petco', 'Food supplies', '2025-01-23', 58.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Brown', 'Food supplies', '2025-01-19', 29.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Dr Rozenman', 'Food supplies', '2025-01-11', 97.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (165, 'Kahoots Pet', 'Food supplies', '2025-01-13', 70.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Decker''s Dog and Cat', 'Food supplies', '2025-01-14', 52.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Dr Rozenman', 'Food supplies', '2025-01-20', 17.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Canine Learning Centers', 'Food supplies', '2025-01-27', 21.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Hudson', 'Food supplies', '2025-01-25', 131.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Brown', 'Food supplies', '2025-02-18', 158.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Jones', 'Food supplies', '2025-02-12', 268.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Pet Kingdom', 'Food supplies', '2025-02-12', 30.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'TagWorks', 'Food supplies', '2025-02-12', 19.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Hudson', 'Food supplies', '2025-02-14', 197.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Rozenman', 'Food supplies', '2025-02-24', 39.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Towers', 'Food supplies', '2025-03-01', 186.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Wilson', 'Food supplies', '2025-02-19', 299.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Kahoots Pet', 'Food supplies', '2025-02-26', 19.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Kahoots Pet', 'Food supplies', '2025-02-21', 5.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Group Inc', 'Food supplies', '2025-02-19', 3.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Group Inc', 'Food supplies', '2025-02-25', 5.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Unleashed by Petco', 'Food supplies', '2025-02-25', 12.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (186, 'Arrieros Pet Shop', 'Food supplies', '2025-02-18', 74.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (186, 'Kahoots Pet', 'Food supplies', '2025-02-19', 35.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Canine Learning Centers', 'Food supplies', '2025-02-25', 6.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Towers', 'Food supplies', '2025-02-24', 251.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Dr Arnold', 'Food supplies', '2025-02-21', 61.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Dr Towers', 'Food supplies', '2025-02-21', 209.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Unleashed by Petco', 'Food supplies', '2025-02-25', 13.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (189, 'Decker''s Dog and Cat', 'Food supplies', '2025-02-26', 17.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (190, 'Kahoots Pet', 'Food supplies', '2025-02-26', 11.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Smith', 'Grooming supplies', '2023-12-31', 29.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pawerica Pet Store', 'Grooming supplies', '2024-01-13', 12.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pet Kingdom', 'Grooming supplies', '2024-01-13', 64.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Unleashed by Petco', 'Grooming supplies', '2023-11-30', 8.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (8, 'Pet Kingdom', 'Grooming supplies', '2023-11-07', 19.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (10, 'Unleashed by Petco', 'Grooming supplies', '2023-11-13', 6.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (20, 'Dr Smith', 'Grooming supplies', '2023-12-12', 2.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Arnold', 'Grooming supplies', '2024-01-30', 273.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Jones', 'Grooming supplies', '2024-02-08', 203.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Canine Learning Centers', 'Grooming supplies', '2024-02-05', 19.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Towers', 'Grooming supplies', '2024-02-14', 279.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (27, 'Dr Smith', 'Grooming supplies', '2024-01-21', 37.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'Canine Learning Centers', 'Grooming supplies', '2024-01-10', 31.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'Pawerica Pet Store', 'Grooming supplies', '2024-01-10', 19.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (32, 'Dr Rozenman', 'Grooming supplies', '2024-01-14', 299.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (33, 'Dr Brown', 'Grooming supplies', '2024-01-20', 91.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (33, 'TagWorks', 'Grooming supplies', '2024-01-20', 15.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Kahoots Pet', 'Grooming supplies', '2024-01-20', 72.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (37, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-01-18', 22.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (37, 'Dr Smith', 'Grooming supplies', '2024-01-18', 137.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Dr Brown', 'Grooming supplies', '2024-02-10', 232.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Pawerica Pet Store', 'Grooming supplies', '2024-02-01', 15.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-02-28', 0.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Dr Hudson', 'Grooming supplies', '2024-02-21', 178.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Arrieros Pet Shop', 'Grooming supplies', '2024-02-23', 19.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Dr Jones', 'Grooming supplies', '2024-02-23', 98.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Arnold', 'Grooming supplies', '2024-05-07', 116.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Brown', 'Grooming supplies', '2024-03-10', 199.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Rozenman', 'Grooming supplies', '2024-03-30', 74.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Pet Kingdom', 'Grooming supplies', '2024-03-25', 7.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'TagWorks', 'Grooming supplies', '2024-04-12', 59.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Arrieros Pet Shop', 'Grooming supplies', '2024-02-20', 11.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-03-10', 9.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Arrieros Pet Shop', 'Grooming supplies', '2024-03-16', 60.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Pet Group Inc', 'Grooming supplies', '2024-03-16', 3.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Jones', 'Grooming supplies', '2024-03-18', 288.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Pet Group Inc', 'Grooming supplies', '2024-03-08', 6.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Pawerica Pet Store', 'Grooming supplies', '2024-03-28', 5.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Dr Towers', 'Grooming supplies', '2024-03-26', 133.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Pet Group Inc', 'Grooming supplies', '2024-04-08', 37.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Arrieros Pet Shop', 'Grooming supplies', '2024-05-13', 64.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Canine Learning Centers', 'Grooming supplies', '2024-04-21', 57.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (60, 'Kahoots Pet', 'Grooming supplies', '2024-03-15', 1.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (60, 'Pet Group Inc', 'Grooming supplies', '2024-03-15', 45.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'TagWorks', 'Grooming supplies', '2024-03-30', 22.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Dr Brown', 'Grooming supplies', '2024-03-22', 177.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (64, 'Dr Towers', 'Grooming supplies', '2024-04-04', 286.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Arrieros Pet Shop', 'Grooming supplies', '2024-04-25', 39.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Dr Hudson', 'Grooming supplies', '2024-04-25', 20.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Dr Smith', 'Grooming supplies', '2024-04-25', 202.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (69, 'Pet Group Inc', 'Grooming supplies', '2024-04-12', 6.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Dr Rozenman', 'Grooming supplies', '2024-04-21', 270.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Dr Towers', 'Grooming supplies', '2024-04-21', 266.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Hudson', 'Grooming supplies', '2024-06-07', 198.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Pawerica Pet Store', 'Grooming supplies', '2024-05-10', 36.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Pet Kingdom', 'Grooming supplies', '2024-06-07', 7.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (76, 'Pet Group Inc', 'Grooming supplies', '2024-05-10', 49.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (77, 'Petco', 'Grooming supplies', '2024-05-14', 19.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Dr Towers', 'Grooming supplies', '2024-05-17', 8.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (79, 'TagWorks', 'Grooming supplies', '2024-05-17', 31.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Jones', 'Grooming supplies', '2024-05-25', 296.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Kahoots Pet', 'Grooming supplies', '2024-05-25', 64.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-06-11', 39.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Wilson', 'Grooming supplies', '2024-06-10', 285.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Rozenman', 'Grooming supplies', '2024-06-19', 267.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Wilson', 'Grooming supplies', '2024-06-18', 218.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Dr Brown', 'Grooming supplies', '2024-06-21', 272.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Kahoots Pet', 'Grooming supplies', '2024-06-20', 19.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Pawerica Pet Store', 'Grooming supplies', '2024-06-21', 64.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Pet Group Inc', 'Grooming supplies', '2024-06-13', 19.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Canine Learning Centers', 'Grooming supplies', '2024-07-19', 8.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Dr Arnold', 'Grooming supplies', '2024-07-19', 31.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Unleashed by Petco', 'Grooming supplies', '2024-07-08', 9.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Dr Wilson', 'Grooming supplies', '2024-06-30', 197.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Canine Learning Centers', 'Grooming supplies', '2024-07-20', 5.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Jones', 'Grooming supplies', '2024-07-24', 239.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Wilson', 'Grooming supplies', '2024-07-20', 194.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Pet Group Inc', 'Grooming supplies', '2024-07-04', 38.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Pet Kingdom', 'Grooming supplies', '2024-06-29', 6.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-07-06', 24.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Dr Smith', 'Grooming supplies', '2024-07-25', 143.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Dr Brown', 'Grooming supplies', '2024-08-15', 119.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Dr Wilson', 'Grooming supplies', '2024-08-08', 157.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Arnold', 'Grooming supplies', '2024-09-13', 205.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Arnold', 'Grooming supplies', '2024-09-15', 292.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Towers', 'Grooming supplies', '2024-09-13', 55.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Arrieros Pet Shop', 'Grooming supplies', '2024-11-09', 20.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Canine Learning Centers', 'Grooming supplies', '2024-08-09', 17.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-10-08', 7.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Grooming supplies', '2024-10-21', 110.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Hudson', 'Grooming supplies', '2024-08-27', 213.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Hudson', 'Grooming supplies', '2024-11-19', 3.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Jones', 'Grooming supplies', '2024-08-18', 181.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Rozenman', 'Grooming supplies', '2024-10-25', 207.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Smith', 'Grooming supplies', '2024-11-09', 273.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Towers', 'Grooming supplies', '2024-12-16', 219.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pet Group Inc', 'Grooming supplies', '2024-09-20', 23.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pet Kingdom', 'Grooming supplies', '2024-10-21', 8.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Grooming supplies', '2024-12-23', 12.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (110, 'Petco', 'Grooming supplies', '2024-08-04', 43.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Dr Towers', 'Grooming supplies', '2024-08-07', 202.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-09-16', 5.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Rozenman', 'Grooming supplies', '2024-08-14', 62.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'TagWorks', 'Grooming supplies', '2024-09-16', 1.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Arnold', 'Grooming supplies', '2024-08-22', 0.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Smith', 'Grooming supplies', '2024-08-22', 271.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Unleashed by Petco', 'Grooming supplies', '2024-09-06', 55.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (121, 'Arrieros Pet Shop', 'Grooming supplies', '2024-08-27', 1.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Arrieros Pet Shop', 'Grooming supplies', '2024-08-26', 10.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Hudson', 'Grooming supplies', '2024-09-05', 158.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pet Group Inc', 'Grooming supplies', '2024-09-05', 32.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Rozenman', 'Grooming supplies', '2024-10-02', 25.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Smith', 'Grooming supplies', '2024-10-21', 84.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Pet Kingdom', 'Grooming supplies', '2024-10-04', 23.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Arrieros Pet Shop', 'Grooming supplies', '2024-11-30', 47.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Canine Learning Centers', 'Grooming supplies', '2024-09-23', 14.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Arnold', 'Grooming supplies', '2024-11-12', 199.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Rozenman', 'Grooming supplies', '2024-10-27', 95.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Towers', 'Grooming supplies', '2024-10-02', 275.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Wilson', 'Grooming supplies', '2024-11-25', 270.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Kahoots Pet', 'Grooming supplies', '2024-09-10', 70.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Kingdom', 'Grooming supplies', '2024-10-07', 33.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Unleashed by Petco', 'Grooming supplies', '2024-11-26', 5.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (130, 'Dr Brown', 'Grooming supplies', '2024-10-15', 203.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Wilson', 'Grooming supplies', '2024-10-05', 142.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Wilson', 'Grooming supplies', '2024-10-24', 70.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Pet Kingdom', 'Grooming supplies', '2024-11-13', 16.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Pet Group Inc', 'Grooming supplies', '2024-10-10', 29.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-10-28', 41.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'TagWorks', 'Grooming supplies', '2024-10-28', 36.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Canine Learning Centers', 'Grooming supplies', '2024-11-01', 9.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-12-06', 12.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Jones', 'Grooming supplies', '2024-12-24', 197.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pawerica Pet Store', 'Grooming supplies', '2024-11-01', 36.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pet Group Inc', 'Grooming supplies', '2024-11-27', 41.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (141, 'Pawerica Pet Store', 'Grooming supplies', '2024-11-15', 3.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (143, 'Dr Towers', 'Grooming supplies', '2024-11-15', 213.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (145, 'Dr Towers', 'Grooming supplies', '2024-11-14', 141.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (145, 'Dr Wilson', 'Grooming supplies', '2024-11-14', 176.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (146, 'Canine Learning Centers', 'Grooming supplies', '2024-11-17', 34.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'TagWorks', 'Grooming supplies', '2024-12-09', 54.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Arrieros Pet Shop', 'Grooming supplies', '2024-12-01', 74.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Arrieros Pet Shop', 'Grooming supplies', '2025-01-12', 29.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-12-31', 41.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Hudson', 'Grooming supplies', '2024-12-26', 165.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Jones', 'Grooming supplies', '2024-12-01', 201.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Towers', 'Grooming supplies', '2025-01-16', 180.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Wilson', 'Grooming supplies', '2025-01-16', 66.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (149, 'Dr Hudson', 'Grooming supplies', '2024-11-25', 88.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Canine Learning Centers', 'Grooming supplies', '2024-12-07', 2.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Canine Learning Centers', 'Grooming supplies', '2024-12-12', 68.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Canine Learning Centers', 'Grooming supplies', '2024-12-20', 15.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Arnold', 'Grooming supplies', '2024-12-12', 173.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Rozenman', 'Grooming supplies', '2024-12-14', 17.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Rozenman', 'Grooming supplies', '2025-01-06', 216.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Smith', 'Grooming supplies', '2025-01-06', 135.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Towers', 'Grooming supplies', '2024-12-25', 99.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Kahoots Pet', 'Grooming supplies', '2024-12-22', 13.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Pawerica Pet Store', 'Grooming supplies', '2024-12-20', 3.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'TagWorks', 'Grooming supplies', '2025-01-04', 7.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Unleashed by Petco', 'Grooming supplies', '2024-12-12', 8.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Arnold', 'Grooming supplies', '2024-12-22', 14.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Hudson', 'Grooming supplies', '2024-12-14', 220.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (152, 'Dr Arnold', 'Grooming supplies', '2024-12-13', 30.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (152, 'Dr Smith', 'Grooming supplies', '2024-12-13', 123.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Brown', 'Grooming supplies', '2025-01-03', 148.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Wilson', 'Grooming supplies', '2025-01-06', 243.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Kahoots Pet', 'Grooming supplies', '2024-12-15', 37.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Kahoots Pet', 'Grooming supplies', '2024-12-26', 54.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Decker''s Dog and Cat', 'Grooming supplies', '2024-12-30', 10.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (156, 'Canine Learning Centers', 'Grooming supplies', '2024-12-18', 57.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Arrieros Pet Shop', 'Grooming supplies', '2025-01-27', 33.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Brown', 'Grooming supplies', '2025-01-30', 265.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Rozenman', 'Grooming supplies', '2025-01-11', 93.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Towers', 'Grooming supplies', '2025-01-09', 170.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Towers', 'Grooming supplies', '2025-01-30', 184.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'TagWorks', 'Grooming supplies', '2025-01-26', 28.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Dr Brown', 'Grooming supplies', '2025-01-19', 249.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Petco', 'Grooming supplies', '2025-01-15', 11.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (169, 'Dr Wilson', 'Grooming supplies', '2025-01-17', 16.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Jones', 'Grooming supplies', '2025-01-27', 162.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Pet Group Inc', 'Grooming supplies', '2025-01-23', 63.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Smith', 'Grooming supplies', '2025-02-15', 17.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Pet Group Inc', 'Grooming supplies', '2025-02-07', 16.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Pet Kingdom', 'Grooming supplies', '2025-02-03', 11.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (177, 'Canine Learning Centers', 'Grooming supplies', '2025-02-09', 65.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (180, 'Dr Towers', 'Grooming supplies', '2025-02-06', 38.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Canine Learning Centers', 'Grooming supplies', '2025-02-18', 8.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Dr Wilson', 'Grooming supplies', '2025-02-16', 294.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Smith', 'Grooming supplies', '2025-02-27', 7.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Arrieros Pet Shop', 'Grooming supplies', '2025-02-27', 4.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Smith', 'Grooming supplies', '2025-02-18', 221.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Smith', 'Grooming supplies', '2025-02-19', 253.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Kingdom', 'Grooming supplies', '2025-02-18', 13.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Rozenman', 'Grooming supplies', '2025-02-28', 134.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Pawerica Pet Store', 'Grooming supplies', '2025-02-24', 3.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Pawerica Pet Store', 'Grooming supplies', '2025-02-25', 46.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Unleashed by Petco', 'Grooming supplies', '2025-02-28', 3.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (189, 'Dr Rozenman', 'Grooming supplies', '2025-02-26', 7.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (189, 'Dr Towers', 'Grooming supplies', '2025-02-25', 95.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (191, 'Canine Learning Centers', 'Grooming supplies', '2025-02-28', 6.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Decker''s Dog and Cat', 'Leashes, collars, harnesses', '2023-10-31', 12.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Hudson', 'Leashes, collars, harnesses', '2023-11-30', 285.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Towers', 'Leashes, collars, harnesses', '2023-12-20', 210.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Towers', 'Leashes, collars, harnesses', '2024-01-17', 66.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pet Group Inc', 'Leashes, collars, harnesses', '2023-10-25', 65.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-01-17', 68.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Petco', 'Leashes, collars, harnesses', '2024-01-17', 2.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-01-27', 22.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Dr Smith', 'Leashes, collars, harnesses', '2023-12-11', 96.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Dr Smith', 'Leashes, collars, harnesses', '2024-01-27', 290.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2023-12-11', 70.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (14, 'TagWorks', 'Leashes, collars, harnesses', '2023-11-22', 42.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (17, 'Dr Hudson', 'Leashes, collars, harnesses', '2023-12-04', 177.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (20, 'Dr Jones', 'Leashes, collars, harnesses', '2023-12-12', 244.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Rozenman', 'Leashes, collars, harnesses', '2023-12-15', 30.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2023-12-29', 1.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-01-30', 18.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pet Kingdom', 'Leashes, collars, harnesses', '2024-02-08', 14.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-01-30', 34.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-02-01', 76.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-02-01', 102.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Smith', 'Leashes, collars, harnesses', '2023-12-25', 199.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Smith', 'Leashes, collars, harnesses', '2024-01-21', 22.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-01-21', 203.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-01-05', 20.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-02-01', 139.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-02-28', 22.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'TagWorks', 'Leashes, collars, harnesses', '2024-02-23', 38.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Jones', 'Leashes, collars, harnesses', '2024-02-09', 248.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-03-30', 43.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Dr Smith', 'Leashes, collars, harnesses', '2024-02-20', 31.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-02-29', 17.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-02-14', 19.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Petco', 'Leashes, collars, harnesses', '2024-02-28', 59.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Rozenman', 'Leashes, collars, harnesses', '2024-03-27', 73.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-02-21', 241.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Dr Smith', 'Leashes, collars, harnesses', '2024-03-12', 189.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (55, 'Dr Brown', 'Leashes, collars, harnesses', '2024-02-27', 87.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Dr Jones', 'Leashes, collars, harnesses', '2024-03-28', 74.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'TagWorks', 'Leashes, collars, harnesses', '2024-04-08', 18.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-03-12', 47.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-03-16', 32.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-04-06', 230.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-04-30', 66.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-04-30', 3.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (60, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-03-15', 23.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (60, 'Dr Towers', 'Leashes, collars, harnesses', '2024-03-15', 6.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-03-30', 61.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-03-22', 14.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'TagWorks', 'Leashes, collars, harnesses', '2024-03-22', 17.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-04-04', 245.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Dr Brown', 'Leashes, collars, harnesses', '2024-04-25', 50.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (69, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2024-04-12', 41.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Decker''s Dog and Cat', 'Leashes, collars, harnesses', '2024-05-23', 24.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Jones', 'Leashes, collars, harnesses', '2024-06-07', 49.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (75, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-05-15', 268.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-05-20', 60.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (79, 'Dr Jones', 'Leashes, collars, harnesses', '2024-05-17', 245.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (79, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-05-17', 21.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-05-21', 36.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-05-25', 44.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-06-26', 53.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Smith', 'Leashes, collars, harnesses', '2024-06-29', 225.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Petco', 'Leashes, collars, harnesses', '2024-05-23', 24.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (86, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-06-06', 44.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-07-06', 116.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Towers', 'Leashes, collars, harnesses', '2024-06-12', 112.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-07-06', 9.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Pet Kingdom', 'Leashes, collars, harnesses', '2024-06-19', 41.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-07-08', 39.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2024-06-16', 18.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-06-19', 48.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-06-24', 34.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-08-06', 2.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2024-07-15', 9.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Brown', 'Leashes, collars, harnesses', '2024-06-29', 213.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Jones', 'Leashes, collars, harnesses', '2024-08-10', 42.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Rozenman', 'Leashes, collars, harnesses', '2024-07-15', 1.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Rozenman', 'Leashes, collars, harnesses', '2024-08-16', 214.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'TagWorks', 'Leashes, collars, harnesses', '2024-07-24', 72.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (96, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-07-02', 23.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-07-22', 288.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Petco', 'Leashes, collars, harnesses', '2024-07-21', 11.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-08-04', 189.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-08-22', 16.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-09-15', 14.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-08-28', 22.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-09-13', 21.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2024-08-03', 15.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Rozenman', 'Leashes, collars, harnesses', '2024-09-20', 182.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Towers', 'Leashes, collars, harnesses', '2024-12-27', 194.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-12-23', 44.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-08-25', 15.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Leashes, collars, harnesses', '2024-10-01', 22.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (110, 'Decker''s Dog and Cat', 'Leashes, collars, harnesses', '2024-08-04', 12.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Dr Towers', 'Leashes, collars, harnesses', '2024-08-12', 48.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-09-19', 17.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2024-08-14', 63.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-09-12', 171.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-09-19', 92.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Jones', 'Leashes, collars, harnesses', '2024-08-14', 289.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Smith', 'Leashes, collars, harnesses', '2024-08-14', 18.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-08-27', 24.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-09-19', 22.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-08-16', 8.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-09-02', 222.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Brown', 'Leashes, collars, harnesses', '2024-08-27', 76.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Brown', 'Leashes, collars, harnesses', '2024-09-02', 90.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-08-16', 22.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-09-02', 5.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Brown', 'Leashes, collars, harnesses', '2024-08-17', 168.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-08-17', 14.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-08-23', 42.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (121, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-08-27', 8.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2024-09-11', 19.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-08-30', 149.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Towers', 'Leashes, collars, harnesses', '2024-09-05', 3.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-09-16', 16.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-09-26', 8.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-11-09', 5.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2024-09-25', 1.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-09-22', 146.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-10-04', 3.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Decker''s Dog and Cat', 'Leashes, collars, harnesses', '2024-12-06', 11.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Rozenman', 'Leashes, collars, harnesses', '2024-10-07', 179.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Towers', 'Leashes, collars, harnesses', '2024-11-26', 16.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Kingdom', 'Leashes, collars, harnesses', '2024-12-08', 19.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2024-10-27', 21.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (130, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-10-15', 37.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-10-05', 55.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-11-01', 67.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-10-11', 250.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Jones', 'Leashes, collars, harnesses', '2024-10-11', 90.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Pet Kingdom', 'Leashes, collars, harnesses', '2024-11-04', 8.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'TagWorks', 'Leashes, collars, harnesses', '2024-10-29', 16.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (138, 'Dr Jones', 'Leashes, collars, harnesses', '2024-10-23', 97.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-10-27', 9.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-12-06', 163.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Smith', 'Leashes, collars, harnesses', '2024-10-28', 242.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Smith', 'Leashes, collars, harnesses', '2024-11-13', 259.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Smith', 'Leashes, collars, harnesses', '2025-01-04', 79.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Towers', 'Leashes, collars, harnesses', '2024-10-28', 230.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Towers', 'Leashes, collars, harnesses', '2024-11-25', 141.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Kahoots Pet', 'Leashes, collars, harnesses', '2024-11-22', 3.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (143, 'Petco', 'Leashes, collars, harnesses', '2024-11-07', 65.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (144, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2024-11-17', 7.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Decker''s Dog and Cat', 'Leashes, collars, harnesses', '2024-12-13', 4.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Jones', 'Leashes, collars, harnesses', '2024-12-01', 223.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2025-01-16', 38.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Arnold', 'Leashes, collars, harnesses', '2024-12-26', 53.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Wilson', 'Leashes, collars, harnesses', '2024-12-18', 94.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Pet Group Inc', 'Leashes, collars, harnesses', '2024-12-18', 22.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Brown', 'Leashes, collars, harnesses', '2024-12-14', 89.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Hudson', 'Leashes, collars, harnesses', '2024-12-22', 144.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (152, 'Pet Kingdom', 'Leashes, collars, harnesses', '2024-12-13', 20.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2024-12-21', 9.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2024-12-26', 53.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Jones', 'Leashes, collars, harnesses', '2024-12-15', 204.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Towers', 'Leashes, collars, harnesses', '2024-12-27', 157.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2025-01-03', 20.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Dr Towers', 'Leashes, collars, harnesses', '2024-12-19', 145.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Hudson', 'Leashes, collars, harnesses', '2025-01-30', 215.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Dr Towers', 'Leashes, collars, harnesses', '2025-01-03', 267.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Dr Towers', 'Leashes, collars, harnesses', '2025-01-10', 214.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Dr Wilson', 'Leashes, collars, harnesses', '2025-01-05', 82.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2025-01-26', 14.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2025-01-07', 20.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2025-02-06', 55.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2025-01-07', 51.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Rozenman', 'Leashes, collars, harnesses', '2025-01-14', 264.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Smith', 'Leashes, collars, harnesses', '2025-01-19', 148.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Towers', 'Leashes, collars, harnesses', '2025-01-12', 254.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Decker''s Dog and Cat', 'Leashes, collars, harnesses', '2025-01-19', 73.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2025-01-24', 17.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Pet Group Inc', 'Leashes, collars, harnesses', '2025-01-19', 29.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Canine Learning Centers', 'Leashes, collars, harnesses', '2025-01-13', 11.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2025-01-14', 23.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Pet Kingdom', 'Leashes, collars, harnesses', '2025-01-13', 30.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2025-01-20', 5.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (168, 'Dr Wilson', 'Leashes, collars, harnesses', '2025-01-16', 40.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2025-01-22', 45.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (171, 'Petco', 'Leashes, collars, harnesses', '2025-01-20', 67.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Arnold', 'Leashes, collars, harnesses', '2025-02-03', 122.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Smith', 'Leashes, collars, harnesses', '2025-02-18', 180.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Pet Group Inc', 'Leashes, collars, harnesses', '2025-02-19', 14.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (175, 'Dr Jones', 'Leashes, collars, harnesses', '2025-02-03', 277.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (181, 'Pet Kingdom', 'Leashes, collars, harnesses', '2025-02-11', 1.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Kahoots Pet', 'Leashes, collars, harnesses', '2025-02-17', 11.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Kahoots Pet', 'Leashes, collars, harnesses', '2025-02-18', 7.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'TagWorks', 'Leashes, collars, harnesses', '2025-02-14', 13.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'TagWorks', 'Leashes, collars, harnesses', '2025-02-18', 56.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Decker''s Dog and Cat', 'Leashes, collars, harnesses', '2025-02-16', 23.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Hudson', 'Leashes, collars, harnesses', '2025-02-27', 120.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Pawerica Pet Store', 'Leashes, collars, harnesses', '2025-02-26', 14.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Pet Kingdom', 'Leashes, collars, harnesses', '2025-02-25', 15.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Petco', 'Leashes, collars, harnesses', '2025-03-01', 14.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'TagWorks', 'Leashes, collars, harnesses', '2025-02-19', 59.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Hudson', 'Leashes, collars, harnesses', '2025-02-18', 276.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Jones', 'Leashes, collars, harnesses', '2025-02-22', 281.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Smith', 'Leashes, collars, harnesses', '2025-02-25', 212.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Kingdom', 'Leashes, collars, harnesses', '2025-02-19', 14.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Petco', 'Leashes, collars, harnesses', '2025-02-25', 62.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (185, 'Decker''s Dog and Cat', 'Leashes, collars, harnesses', '2025-02-19', 1.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Arrieros Pet Shop', 'Leashes, collars, harnesses', '2025-02-20', 13.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Pet Kingdom', 'Leashes, collars, harnesses', '2025-02-25', 18.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Unleashed by Petco', 'Leashes, collars, harnesses', '2025-02-23', 71.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Arnold', 'Medications', '2023-12-20', 14.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pet Group Inc', 'Medications', '2023-11-18', 16.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pet Group Inc', 'Medications', '2023-12-20', 11.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'TagWorks', 'Medications', '2023-12-14', 1.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Arrieros Pet Shop', 'Medications', '2023-12-11', 72.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Canine Learning Centers', 'Medications', '2024-01-27', 24.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Pawerica Pet Store', 'Medications', '2023-12-11', 63.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (17, 'Dr Arnold', 'Medications', '2023-12-04', 248.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (17, 'Pet Kingdom', 'Medications', '2023-12-04', 21.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Smith', 'Medications', '2023-12-23', 93.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Towers', 'Medications', '2023-12-15', 266.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Jones', 'Medications', '2024-02-01', 219.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Kahoots Pet', 'Medications', '2024-02-01', 10.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Pawerica Pet Store', 'Medications', '2023-12-25', 23.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Petco', 'Medications', '2023-12-21', 3.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Dr Brown', 'Medications', '2023-12-25', 223.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Kahoots Pet', 'Medications', '2023-12-25', 6.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (27, 'Pet Kingdom', 'Medications', '2024-01-21', 51.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (28, 'Dr Smith', 'Medications', '2023-12-29', 151.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'Decker''s Dog and Cat', 'Medications', '2024-01-10', 7.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (33, 'Decker''s Dog and Cat', 'Medications', '2024-01-20', 44.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (33, 'Unleashed by Petco', 'Medications', '2024-01-10', 8.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Dr Smith', 'Medications', '2024-01-20', 273.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Pet Kingdom', 'Medications', '2024-02-01', 35.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Dr Smith', 'Medications', '2024-02-21', 57.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Arrieros Pet Shop', 'Medications', '2024-02-10', 5.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Dr Brown', 'Medications', '2024-02-10', 36.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Dr Towers', 'Medications', '2024-02-07', 156.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Kahoots Pet', 'Medications', '2024-02-06', 64.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Brown', 'Medications', '2024-04-22', 24.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Unleashed by Petco', 'Medications', '2024-05-07', 6.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Dr Brown', 'Medications', '2024-03-02', 236.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Dr Rozenman', 'Medications', '2024-02-14', 5.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Pawerica Pet Store', 'Medications', '2024-03-16', 66.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Petco', 'Medications', '2024-03-27', 8.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (55, 'Dr Arnold', 'Medications', '2024-03-20', 299.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Unleashed by Petco', 'Medications', '2024-03-04', 13.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Jones', 'Medications', '2024-04-05', 246.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Towers', 'Medications', '2024-04-21', 206.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Wilson', 'Medications', '2024-03-07', 42.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'TagWorks', 'Medications', '2024-04-05', 38.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'Petco', 'Medications', '2024-03-22', 26.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Petco', 'Medications', '2024-04-04', 14.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (64, 'Kahoots Pet', 'Medications', '2024-04-04', 74.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Dr Brown', 'Medications', '2024-04-13', 57.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Dr Smith', 'Medications', '2024-05-06', 249.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Pet Group Inc', 'Medications', '2024-05-06', 46.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'Dr Arnold', 'Medications', '2024-04-23', 166.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (71, 'Decker''s Dog and Cat', 'Medications', '2024-04-24', 14.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Petco', 'Medications', '2024-06-07', 43.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (76, 'Dr Jones', 'Medications', '2024-05-10', 267.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Canine Learning Centers', 'Medications', '2024-05-20', 17.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (79, 'Dr Wilson', 'Medications', '2024-05-17', 93.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Canine Learning Centers', 'Medications', '2024-05-21', 1.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Pawerica Pet Store', 'Medications', '2024-07-15', 47.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Unleashed by Petco', 'Medications', '2024-06-13', 34.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Unleashed by Petco', 'Medications', '2024-06-10', 0.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Unleashed by Petco', 'Medications', '2024-07-29', 2.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (85, 'Dr Wilson', 'Medications', '2024-06-09', 270.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (85, 'Dr Wilson', 'Medications', '2024-06-19', 152.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Petco', 'Medications', '2024-06-19', 24.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Arrieros Pet Shop', 'Medications', '2024-07-08', 1.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Pawerica Pet Store', 'Medications', '2024-06-16', 6.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Dr Smith', 'Medications', '2024-07-18', 95.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Arrieros Pet Shop', 'Medications', '2024-06-19', 10.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Dr Brown', 'Medications', '2024-06-24', 21.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Arrieros Pet Shop', 'Medications', '2024-08-10', 49.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Decker''s Dog and Cat', 'Medications', '2024-07-24', 35.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Smith', 'Medications', '2024-08-16', 219.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'TagWorks', 'Medications', '2024-08-16', 70.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Unleashed by Petco', 'Medications', '2024-08-16', 48.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (96, 'Dr Jones', 'Medications', '2024-07-02', 96.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Canine Learning Centers', 'Medications', '2024-07-17', 38.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Dr Arnold', 'Medications', '2024-07-17', 121.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Pawerica Pet Store', 'Medications', '2024-07-09', 19.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Decker''s Dog and Cat', 'Medications', '2024-07-18', 70.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Dr Wilson', 'Medications', '2024-07-19', 68.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Pawerica Pet Store', 'Medications', '2024-07-21', 41.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Hudson', 'Medications', '2024-09-13', 62.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Wilson', 'Medications', '2024-09-07', 275.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Unleashed by Petco', 'Medications', '2024-08-01', 6.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Arrieros Pet Shop', 'Medications', '2024-12-30', 18.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Canine Learning Centers', 'Medications', '2024-10-25', 17.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Medications', '2024-09-19', 287.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Jones', 'Medications', '2025-01-09', 107.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Wilson', 'Medications', '2024-12-27', 60.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pet Kingdom', 'Medications', '2024-10-01', 30.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Petco', 'Medications', '2024-10-25', 8.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (110, 'Canine Learning Centers', 'Medications', '2024-08-04', 4.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (110, 'Dr Rozenman', 'Medications', '2024-08-04', 16.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (110, 'Kahoots Pet', 'Medications', '2024-08-04', 15.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'TagWorks', 'Medications', '2024-08-16', 4.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Pet Kingdom', 'Medications', '2024-08-14', 21.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Pawerica Pet Store', 'Medications', '2024-09-12', 21.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Petco', 'Medications', '2024-08-27', 24.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Petco', 'Medications', '2024-09-16', 11.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Rozenman', 'Medications', '2024-09-06', 66.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (118, 'Dr Arnold', 'Medications', '2024-08-18', 177.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (121, 'Pet Kingdom', 'Medications', '2024-08-24', 14.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (121, 'Pet Kingdom', 'Medications', '2024-08-27', 20.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Brown', 'Medications', '2024-09-11', 15.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Hudson', 'Medications', '2024-08-26', 204.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Kahoots Pet', 'Medications', '2024-09-01', 23.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Petco', 'Medications', '2024-09-16', 11.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'TagWorks', 'Medications', '2024-08-30', 7.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Brown', 'Medications', '2024-11-01', 84.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Rozenman', 'Medications', '2024-11-09', 151.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Wilson', 'Medications', '2024-10-26', 263.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Pet Kingdom', 'Medications', '2024-09-22', 22.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Arrieros Pet Shop', 'Medications', '2024-09-10', 23.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Canine Learning Centers', 'Medications', '2024-09-19', 71.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Arnold', 'Medications', '2024-10-21', 76.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Towers', 'Medications', '2024-11-25', 129.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Kahoots Pet', 'Medications', '2024-12-06', 64.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Group Inc', 'Medications', '2024-10-21', 11.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Kingdom', 'Medications', '2024-10-02', 17.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Kingdom', 'Medications', '2024-12-06', 46.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Medications', '2024-09-23', 25.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Medications', '2024-10-21', 34.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Medications', '2024-11-25', 14.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'TagWorks', 'Medications', '2024-10-27', 22.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (128, 'Dr Wilson', 'Medications', '2024-09-23', 158.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Brown', 'Medications', '2024-10-05', 155.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Hudson', 'Medications', '2024-10-27', 275.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Petco', 'Medications', '2024-10-05', 65.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Decker''s Dog and Cat', 'Medications', '2024-11-14', 33.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Arnold', 'Medications', '2024-10-07', 277.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Pet Kingdom', 'Medications', '2024-10-22', 55.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Petco', 'Medications', '2024-11-14', 5.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (133, 'Dr Jones', 'Medications', '2024-10-08', 57.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Pet Kingdom', 'Medications', '2024-10-29', 10.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Canine Learning Centers', 'Medications', '2024-12-02', 73.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Arnold', 'Medications', '2024-11-01', 82.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Arnold', 'Medications', '2024-11-27', 10.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Arnold', 'Medications', '2024-12-12', 246.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Arnold', 'Medications', '2024-12-24', 245.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Rozenman', 'Medications', '2024-11-13', 290.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Wilson', 'Medications', '2024-11-27', 106.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Petco', 'Medications', '2025-01-04', 24.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (142, 'Decker''s Dog and Cat', 'Medications', '2024-11-07', 4.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (144, 'Dr Hudson', 'Medications', '2024-11-17', 25.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (146, 'Decker''s Dog and Cat', 'Medications', '2024-11-17', 48.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (146, 'Petco', 'Medications', '2024-11-17', 41.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Decker''s Dog and Cat', 'Medications', '2024-12-09', 54.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Arnold', 'Medications', '2024-12-11', 222.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Jones', 'Medications', '2024-12-09', 191.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Jones', 'Medications', '2024-12-13', 64.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Wilson', 'Medications', '2024-12-05', 275.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Pawerica Pet Store', 'Medications', '2024-12-09', 26.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'TagWorks', 'Medications', '2024-11-18', 53.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Arnold', 'Medications', '2024-12-16', 261.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Brown', 'Medications', '2025-01-07', 197.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pet Group Inc', 'Medications', '2025-01-12', 41.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pet Kingdom', 'Medications', '2024-12-01', 57.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Petco', 'Medications', '2024-11-22', 12.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Arrieros Pet Shop', 'Medications', '2024-12-25', 0.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Hudson', 'Medications', '2025-01-01', 1.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Petco', 'Medications', '2024-12-09', 23.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Arrieros Pet Shop', 'Medications', '2024-12-14', 7.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Dr Brown', 'Medications', '2024-12-14', 15.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Dr Jones', 'Medications', '2024-12-21', 284.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Unleashed by Petco', 'Medications', '2024-12-21', 39.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Arrieros Pet Shop', 'Medications', '2025-01-08', 20.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Rozenman', 'Medications', '2024-12-19', 178.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Towers', 'Medications', '2024-12-15', 23.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Wilson', 'Medications', '2024-12-19', 78.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Pet Group Inc', 'Medications', '2024-12-30', 59.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'TagWorks', 'Medications', '2024-12-21', 21.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Dr Brown', 'Medications', '2024-12-19', 232.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Dr Hudson', 'Medications', '2025-01-02', 17.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (156, 'Dr Brown', 'Medications', '2024-12-18', 49.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Arnold', 'Medications', '2025-01-21', 200.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Brown', 'Medications', '2025-01-05', 184.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Rozenman', 'Medications', '2025-01-09', 138.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Dr Arnold', 'Medications', '2025-01-12', 202.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Jones', 'Medications', '2025-01-21', 299.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Kahoots Pet', 'Medications', '2025-01-08', 19.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Pet Group Inc', 'Medications', '2025-01-14', 8.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Decker''s Dog and Cat', 'Medications', '2025-01-07', 18.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Kahoots Pet', 'Medications', '2025-01-19', 13.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'TagWorks', 'Medications', '2025-01-07', 53.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Dr Arnold', 'Medications', '2025-01-14', 122.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Dr Hudson', 'Medications', '2025-01-24', 226.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Dr Smith', 'Medications', '2025-01-20', 124.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Pawerica Pet Store', 'Medications', '2025-01-15', 18.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Arnold', 'Medications', '2025-01-29', 284.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Kahoots Pet', 'Medications', '2025-01-22', 25.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Pet Group Inc', 'Medications', '2025-01-22', 12.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (171, 'TagWorks', 'Medications', '2025-01-20', 23.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (173, 'Decker''s Dog and Cat', 'Medications', '2025-01-29', 61.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Canine Learning Centers', 'Medications', '2025-02-12', 31.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Brown', 'Medications', '2025-02-12', 142.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Smith', 'Medications', '2025-02-06', 33.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Towers', 'Medications', '2025-02-15', 16.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (175, 'Kahoots Pet', 'Medications', '2025-02-03', 17.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (176, 'Dr Brown', 'Medications', '2025-02-04', 174.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (176, 'Petco', 'Medications', '2025-02-04', 11.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (177, 'Dr Jones', 'Medications', '2025-02-09', 281.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (177, 'Unleashed by Petco', 'Medications', '2025-02-09', 49.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (181, 'Canine Learning Centers', 'Medications', '2025-02-11', 7.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Canine Learning Centers', 'Medications', '2025-02-14', 70.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Brown', 'Medications', '2025-02-27', 118.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Hudson', 'Medications', '2025-03-01', 162.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Rozenman', 'Medications', '2025-02-13', 231.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Rozenman', 'Medications', '2025-02-21', 46.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Towers', 'Medications', '2025-02-20', 35.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Pet Kingdom', 'Medications', '2025-02-18', 12.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Canine Learning Centers', 'Medications', '2025-03-01', 25.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Hudson', 'Medications', '2025-02-21', 180.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Rozenman', 'Medications', '2025-02-22', 142.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Wilson', 'Medications', '2025-02-27', 136.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (185, 'Dr Wilson', 'Medications', '2025-02-19', 23.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (186, 'Dr Arnold', 'Medications', '2025-02-19', 66.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (186, 'Petco', 'Medications', '2025-02-19', 1.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Decker''s Dog and Cat', 'Medications', '2025-02-19', 7.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Jones', 'Medications', '2025-02-28', 265.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Towers', 'Medications', '2025-02-19', 135.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Pet Group Inc', 'Medications', '2025-02-23', 25.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Pet Group Inc', 'Medications', '2025-02-26', 38.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'TagWorks', 'Medications', '2025-02-28', 9.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (191, 'Dr Jones', 'Medications', '2025-02-27', 109.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (191, 'Dr Rozenman', 'Medications', '2025-02-27', 18.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Kahoots Pet', 'Miscellaneous', '2023-12-20', 0.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Dr Jones', 'Miscellaneous', '2023-12-11', 12.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Dr Towers', 'Miscellaneous', '2023-11-06', 153.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Kahoots Pet', 'Miscellaneous', '2024-01-27', 12.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Petco', 'Miscellaneous', '2023-12-11', 6.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (14, 'Petco', 'Miscellaneous', '2023-11-22', 7.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (20, 'Dr Hudson', 'Miscellaneous', '2023-12-12', 161.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (20, 'Unleashed by Petco', 'Miscellaneous', '2023-12-12', 40.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Jones', 'Miscellaneous', '2024-01-08', 209.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Rozenman', 'Miscellaneous', '2023-12-23', 6.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Towers', 'Miscellaneous', '2024-01-08', 269.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-02-05', 21.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Jones', 'Miscellaneous', '2024-01-29', 194.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Smith', 'Miscellaneous', '2024-02-05', 212.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'TagWorks', 'Miscellaneous', '2023-12-21', 24.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Unleashed by Petco', 'Miscellaneous', '2024-02-14', 69.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Pet Kingdom', 'Miscellaneous', '2024-02-10', 2.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Petco', 'Miscellaneous', '2024-01-10', 25.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (28, 'Dr Jones', 'Miscellaneous', '2023-12-29', 222.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'TagWorks', 'Miscellaneous', '2024-01-10', 55.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (32, 'Pet Kingdom', 'Miscellaneous', '2024-01-14', 0.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (33, 'Pet Group Inc', 'Miscellaneous', '2024-01-20', 3.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (37, 'Unleashed by Petco', 'Miscellaneous', '2024-01-18', 56.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Canine Learning Centers', 'Miscellaneous', '2024-02-01', 71.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-02-01', 65.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Dr Towers', 'Miscellaneous', '2024-02-01', 86.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (42, 'Dr Rozenman', 'Miscellaneous', '2024-01-30', 178.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Kahoots Pet', 'Miscellaneous', '2024-02-15', 64.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Petco', 'Miscellaneous', '2024-02-07', 35.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Brown', 'Miscellaneous', '2024-05-07', 76.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Pet Kingdom', 'Miscellaneous', '2024-03-30', 4.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Dr Rozenman', 'Miscellaneous', '2024-02-20', 256.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Dr Towers', 'Miscellaneous', '2024-02-10', 99.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Dr Wilson', 'Miscellaneous', '2024-02-10', 232.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (47, 'Dr Smith', 'Miscellaneous', '2024-02-12', 274.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-02-13', 1.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Dr Smith', 'Miscellaneous', '2024-02-13', 279.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Dr Hudson', 'Miscellaneous', '2024-02-14', 84.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Dr Wilson', 'Miscellaneous', '2024-03-02', 158.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Rozenman', 'Miscellaneous', '2024-03-12', 64.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Petco', 'Miscellaneous', '2024-03-02', 3.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (55, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-02-27', 23.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (56, 'Petco', 'Miscellaneous', '2024-03-13', 1.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Canine Learning Centers', 'Miscellaneous', '2024-03-04', 1.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Pet Kingdom', 'Miscellaneous', '2024-03-13', 21.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Dr Jones', 'Miscellaneous', '2024-03-26', 159.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Kahoots Pet', 'Miscellaneous', '2024-04-15', 51.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-04-30', 44.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Smith', 'Miscellaneous', '2024-03-25', 295.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Pawerica Pet Store', 'Miscellaneous', '2024-04-05', 31.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Pawerica Pet Store', 'Miscellaneous', '2024-05-13', 16.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (65, 'Arrieros Pet Shop', 'Miscellaneous', '2024-04-08', 13.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (65, 'Dr Hudson', 'Miscellaneous', '2024-04-10', 212.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (69, 'Dr Jones', 'Miscellaneous', '2024-04-12', 263.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (71, 'Dr Jones', 'Miscellaneous', '2024-04-28', 133.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Canine Learning Centers', 'Miscellaneous', '2024-05-10', 4.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Smith', 'Miscellaneous', '2024-06-07', 59.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (74, 'Unleashed by Petco', 'Miscellaneous', '2024-05-02', 58.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (75, 'Dr Towers', 'Miscellaneous', '2024-05-17', 221.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (77, 'Dr Arnold', 'Miscellaneous', '2024-05-25', 220.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (77, 'Dr Hudson', 'Miscellaneous', '2024-05-14', 63.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Pet Group Inc', 'Miscellaneous', '2024-05-20', 35.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (79, 'Pawerica Pet Store', 'Miscellaneous', '2024-05-17', 68.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Brown', 'Miscellaneous', '2024-05-21', 64.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Rozenman', 'Miscellaneous', '2024-06-05', 223.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Arrieros Pet Shop', 'Miscellaneous', '2024-06-13', 23.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-06-29', 6.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Arnold', 'Miscellaneous', '2024-07-03', 35.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Kahoots Pet', 'Miscellaneous', '2024-06-29', 11.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (85, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-06-19', 19.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (85, 'Dr Towers', 'Miscellaneous', '2024-06-19', 78.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (86, 'Unleashed by Petco', 'Miscellaneous', '2024-06-06', 57.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Kahoots Pet', 'Miscellaneous', '2024-07-06', 33.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Unleashed by Petco', 'Miscellaneous', '2024-06-12', 14.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Unleashed by Petco', 'Miscellaneous', '2024-07-06', 7.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (89, 'Dr Brown', 'Miscellaneous', '2024-06-11', 161.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Pet Kingdom', 'Miscellaneous', '2024-06-17', 67.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Dr Hudson', 'Miscellaneous', '2024-06-13', 224.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Dr Rozenman', 'Miscellaneous', '2024-06-13', 261.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Dr Jones', 'Miscellaneous', '2024-06-30', 120.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Hudson', 'Miscellaneous', '2024-07-20', 3.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Jones', 'Miscellaneous', '2024-08-16', 297.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (97, 'Dr Jones', 'Miscellaneous', '2024-07-04', 36.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (97, 'Dr Smith', 'Miscellaneous', '2024-07-04', 4.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Canine Learning Centers', 'Miscellaneous', '2024-07-19', 38.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Dr Brown', 'Miscellaneous', '2024-07-17', 251.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Dr Rozenman', 'Miscellaneous', '2024-07-06', 263.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Pawerica Pet Store', 'Miscellaneous', '2024-07-17', 13.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Pet Group Inc', 'Miscellaneous', '2024-07-19', 20.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (99, 'Dr Wilson', 'Miscellaneous', '2024-07-24', 174.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Dr Hudson', 'Miscellaneous', '2024-07-18', 110.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Dr Jones', 'Miscellaneous', '2024-07-18', 82.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-08-01', 18.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Rozenman', 'Miscellaneous', '2024-08-16', 41.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Arrieros Pet Shop', 'Miscellaneous', '2024-11-27', 8.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-09-20', 19.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Brown', 'Miscellaneous', '2024-11-09', 201.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Hudson', 'Miscellaneous', '2024-10-27', 55.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Smith', 'Miscellaneous', '2024-09-20', 219.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Smith', 'Miscellaneous', '2024-12-16', 18.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Kahoots Pet', 'Miscellaneous', '2024-12-27', 3.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pawerica Pet Store', 'Miscellaneous', '2025-01-09', 7.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Petco', 'Miscellaneous', '2024-12-05', 12.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Dr Brown', 'Miscellaneous', '2024-08-21', 66.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Dr Brown', 'Miscellaneous', '2024-08-12', 187.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Petco', 'Miscellaneous', '2024-08-09', 21.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Canine Learning Centers', 'Miscellaneous', '2024-09-19', 15.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Pet Kingdom', 'Miscellaneous', '2024-08-27', 42.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Kahoots Pet', 'Miscellaneous', '2024-08-16', 29.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Jones', 'Miscellaneous', '2024-09-02', 28.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Rozenman', 'Miscellaneous', '2024-08-16', 164.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Pawerica Pet Store', 'Miscellaneous', '2024-09-06', 52.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Unleashed by Petco', 'Miscellaneous', '2024-09-02', 4.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (118, 'Canine Learning Centers', 'Miscellaneous', '2024-08-18', 36.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (118, 'Unleashed by Petco', 'Miscellaneous', '2024-08-18', 18.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (119, 'Unleashed by Petco', 'Miscellaneous', '2024-08-19', 35.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (120, 'Unleashed by Petco', 'Miscellaneous', '2024-08-21', 12.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Arrieros Pet Shop', 'Miscellaneous', '2024-09-18', 9.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pet Group Inc', 'Miscellaneous', '2024-08-26', 9.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pet Kingdom', 'Miscellaneous', '2024-08-30', 69.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'TagWorks', 'Miscellaneous', '2024-08-26', 22.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (123, 'Dr Wilson', 'Miscellaneous', '2024-08-30', 267.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-10-04', 21.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Arnold', 'Miscellaneous', '2024-10-11', 169.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Rozenman', 'Miscellaneous', '2024-09-25', 208.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Smith', 'Miscellaneous', '2024-09-25', 247.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Towers', 'Miscellaneous', '2024-09-07', 256.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Pet Group Inc', 'Miscellaneous', '2024-09-07', 51.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-09-17', 55.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Hudson', 'Miscellaneous', '2024-09-23', 186.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Smith', 'Miscellaneous', '2024-11-12', 273.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Wilson', 'Miscellaneous', '2024-09-12', 222.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Kahoots Pet', 'Miscellaneous', '2024-12-04', 48.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Group Inc', 'Miscellaneous', '2024-09-10', 24.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Kingdom', 'Miscellaneous', '2024-10-13', 19.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Kingdom', 'Miscellaneous', '2024-11-30', 34.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Miscellaneous', '2024-12-08', 24.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (128, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-09-23', 19.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Arrieros Pet Shop', 'Miscellaneous', '2024-10-09', 4.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Canine Learning Centers', 'Miscellaneous', '2024-11-02', 68.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Towers', 'Miscellaneous', '2024-10-05', 293.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'TagWorks', 'Miscellaneous', '2024-10-12', 72.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Hudson', 'Miscellaneous', '2024-10-11', 87.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Hudson', 'Miscellaneous', '2024-10-24', 267.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Dr Hudson', 'Miscellaneous', '2024-10-10', 113.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Kahoots Pet', 'Miscellaneous', '2024-10-24', 1.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Petco', 'Miscellaneous', '2024-10-10', 8.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Pawerica Pet Store', 'Miscellaneous', '2024-10-27', 72.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pawerica Pet Store', 'Miscellaneous', '2024-12-02', 63.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pet Kingdom', 'Miscellaneous', '2024-11-25', 12.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (142, 'Dr Jones', 'Miscellaneous', '2024-11-07', 264.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (143, 'Canine Learning Centers', 'Miscellaneous', '2024-11-15', 29.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Rozenman', 'Miscellaneous', '2024-12-09', 146.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Towers', 'Miscellaneous', '2024-12-01', 220.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Kahoots Pet', 'Miscellaneous', '2024-12-01', 7.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Pet Kingdom', 'Miscellaneous', '2024-11-24', 71.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Pet Kingdom', 'Miscellaneous', '2024-12-11', 16.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Hudson', 'Miscellaneous', '2024-11-22', 230.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Kahoots Pet', 'Miscellaneous', '2025-01-16', 15.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pet Kingdom', 'Miscellaneous', '2024-12-05', 10.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'TagWorks', 'Miscellaneous', '2024-12-26', 17.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (149, 'Canine Learning Centers', 'Miscellaneous', '2024-11-25', 38.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Kahoots Pet', 'Miscellaneous', '2024-12-18', 20.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'TagWorks', 'Miscellaneous', '2025-01-01', 10.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Decker''s Dog and Cat', 'Miscellaneous', '2024-12-17', 3.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Kahoots Pet', 'Miscellaneous', '2024-12-17', 10.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (152, 'Dr Rozenman', 'Miscellaneous', '2024-12-12', 253.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Towers', 'Miscellaneous', '2025-01-03', 139.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'TagWorks', 'Miscellaneous', '2024-12-26', 10.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Dr Towers', 'Miscellaneous', '2024-12-22', 190.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'TagWorks', 'Miscellaneous', '2024-12-19', 22.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (158, 'Dr Rozenman', 'Miscellaneous', '2024-12-30', 37.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Arrieros Pet Shop', 'Miscellaneous', '2025-01-19', 49.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Smith', 'Miscellaneous', '2025-02-03', 238.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pawerica Pet Store', 'Miscellaneous', '2025-01-02', 9.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pet Group Inc', 'Miscellaneous', '2025-01-30', 69.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pet Kingdom', 'Miscellaneous', '2025-01-02', 8.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Unleashed by Petco', 'Miscellaneous', '2025-01-23', 11.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Dr Jones', 'Miscellaneous', '2025-01-05', 216.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Decker''s Dog and Cat', 'Miscellaneous', '2025-01-08', 58.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Arrieros Pet Shop', 'Miscellaneous', '2025-02-08', 11.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Decker''s Dog and Cat', 'Miscellaneous', '2025-01-21', 21.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Smith', 'Miscellaneous', '2025-01-26', 229.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Smith', 'Miscellaneous', '2025-02-08', 234.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Towers', 'Miscellaneous', '2025-01-07', 289.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Pet Group Inc', 'Miscellaneous', '2025-01-14', 15.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Kahoots Pet', 'Miscellaneous', '2025-01-09', 65.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Dr Arnold', 'Miscellaneous', '2025-01-20', 229.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Dr Hudson', 'Miscellaneous', '2025-01-15', 90.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Pawerica Pet Store', 'Miscellaneous', '2025-01-20', 16.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (169, 'Arrieros Pet Shop', 'Miscellaneous', '2025-01-17', 12.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (169, 'Canine Learning Centers', 'Miscellaneous', '2025-01-17', 72.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Hudson', 'Miscellaneous', '2025-01-27', 278.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Pet Group Inc', 'Miscellaneous', '2025-01-18', 2.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Pet Group Inc', 'Miscellaneous', '2025-01-25', 56.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Pawerica Pet Store', 'Miscellaneous', '2025-02-09', 22.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Petco', 'Miscellaneous', '2025-02-12', 9.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (179, 'TagWorks', 'Miscellaneous', '2025-02-04', 48.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (180, 'Pet Kingdom', 'Miscellaneous', '2025-02-06', 12.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (181, 'Dr Arnold', 'Miscellaneous', '2025-02-11', 125.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (181, 'Dr Hudson', 'Miscellaneous', '2025-02-11', 191.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Decker''s Dog and Cat', 'Miscellaneous', '2025-02-18', 13.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Pet Group Inc', 'Miscellaneous', '2025-02-14', 54.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Pawerica Pet Store', 'Miscellaneous', '2025-02-13', 12.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Unleashed by Petco', 'Miscellaneous', '2025-02-27', 11.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Canine Learning Centers', 'Miscellaneous', '2025-02-27', 19.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Canine Learning Centers', 'Miscellaneous', '2025-02-28', 21.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Smith', 'Miscellaneous', '2025-02-21', 270.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Towers', 'Miscellaneous', '2025-03-01', 164.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Group Inc', 'Miscellaneous', '2025-02-20', 23.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Kingdom', 'Miscellaneous', '2025-02-20', 66.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Kingdom', 'Miscellaneous', '2025-03-01', 69.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (186, 'Pet Kingdom', 'Miscellaneous', '2025-02-19', 22.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Canine Learning Centers', 'Miscellaneous', '2025-02-19', 6.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Decker''s Dog and Cat', 'Miscellaneous', '2025-02-26', 31.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Pet Kingdom', 'Miscellaneous', '2025-02-19', 19.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'TagWorks', 'Miscellaneous', '2025-02-20', 7.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'TagWorks', 'Miscellaneous', '2025-02-23', 15.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (189, 'Dr Towers', 'Miscellaneous', '2025-02-26', 94.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (189, 'Petco', 'Miscellaneous', '2025-02-25', 21.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Canine Learning Centers', 'Shelter supplies', '2023-12-14', 44.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pawerica Pet Store', 'Shelter supplies', '2023-11-30', 17.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Pet Group Inc', 'Shelter supplies', '2023-11-30', 19.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (8, 'Dr Towers', 'Shelter supplies', '2023-11-07', 128.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (8, 'Petco', 'Shelter supplies', '2023-11-07', 33.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (17, 'Unleashed by Petco', 'Shelter supplies', '2023-12-04', 2.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Arnold', 'Shelter supplies', '2024-01-10', 28.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Rozenman', 'Shelter supplies', '2024-01-25', 195.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Smith', 'Shelter supplies', '2024-02-08', 4.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pawerica Pet Store', 'Shelter supplies', '2023-12-23', 46.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Wilson', 'Shelter supplies', '2024-02-01', 266.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Wilson', 'Shelter supplies', '2024-02-14', 93.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Canine Learning Centers', 'Shelter supplies', '2024-01-28', 17.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (27, 'Pawerica Pet Store', 'Shelter supplies', '2024-01-21', 2.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (28, 'Pawerica Pet Store', 'Shelter supplies', '2023-12-29', 7.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (32, 'Dr Wilson', 'Shelter supplies', '2024-01-14', 24.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Dr Jones', 'Shelter supplies', '2024-01-20', 44.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (39, 'Petco', 'Shelter supplies', '2024-01-21', 6.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Canine Learning Centers', 'Shelter supplies', '2024-02-06', 18.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Decker''s Dog and Cat', 'Shelter supplies', '2024-02-15', 3.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Dr Arnold', 'Shelter supplies', '2024-02-07', 121.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Towers', 'Shelter supplies', '2024-03-10', 194.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Wilson', 'Shelter supplies', '2024-02-09', 174.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Dr Hudson', 'Shelter supplies', '2024-02-29', 78.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Dr Towers', 'Shelter supplies', '2024-03-16', 172.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Unleashed by Petco', 'Shelter supplies', '2024-03-16', 24.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Pet Group Inc', 'Shelter supplies', '2024-02-21', 5.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (52, 'Pet Kingdom', 'Shelter supplies', '2024-02-25', 3.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Canine Learning Centers', 'Shelter supplies', '2024-03-02', 15.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Dr Brown', 'Shelter supplies', '2024-03-02', 186.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Dr Towers', 'Shelter supplies', '2024-03-02', 100.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (55, 'Dr Towers', 'Shelter supplies', '2024-02-27', 47.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Dr Jones', 'Shelter supplies', '2024-03-04', 292.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Dr Towers', 'Shelter supplies', '2024-04-15', 27.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Canine Learning Centers', 'Shelter supplies', '2024-05-13', 23.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Arnold', 'Shelter supplies', '2024-05-13', 183.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Brown', 'Shelter supplies', '2024-04-06', 190.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Towers', 'Shelter supplies', '2024-03-23', 117.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (60, 'Dr Arnold', 'Shelter supplies', '2024-03-15', 276.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'Unleashed by Petco', 'Shelter supplies', '2024-03-30', 73.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Dr Arnold', 'Shelter supplies', '2024-03-22', 244.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (65, 'Pet Group Inc', 'Shelter supplies', '2024-04-05', 8.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Dr Jones', 'Shelter supplies', '2024-05-06', 286.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Petco', 'Shelter supplies', '2024-04-13', 14.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'Dr Jones', 'Shelter supplies', '2024-04-14', 283.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Dr Arnold', 'Shelter supplies', '2024-04-27', 3.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Kahoots Pet', 'Shelter supplies', '2024-04-26', 14.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Jones', 'Shelter supplies', '2024-05-10', 288.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Kahoots Pet', 'Shelter supplies', '2024-05-14', 29.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Petco', 'Shelter supplies', '2024-05-05', 63.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (74, 'Petco', 'Shelter supplies', '2024-05-02', 28.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (76, 'Arrieros Pet Shop', 'Shelter supplies', '2024-05-10', 9.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Canine Learning Centers', 'Shelter supplies', '2024-06-02', 16.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Decker''s Dog and Cat', 'Shelter supplies', '2024-07-15', 11.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Arnold', 'Shelter supplies', '2024-06-13', 60.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Jones', 'Shelter supplies', '2024-06-13', 191.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Rozenman', 'Shelter supplies', '2024-06-02', 7.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Wilson', 'Shelter supplies', '2024-06-29', 3.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Canine Learning Centers', 'Shelter supplies', '2024-06-13', 8.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Wilson', 'Shelter supplies', '2024-07-29', 290.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Kahoots Pet', 'Shelter supplies', '2024-07-23', 44.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Pet Group Inc', 'Shelter supplies', '2024-06-13', 24.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Pet Kingdom', 'Shelter supplies', '2024-06-13', 12.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (85, 'Unleashed by Petco', 'Shelter supplies', '2024-06-09', 62.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Arrieros Pet Shop', 'Shelter supplies', '2024-06-18', 47.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Hudson', 'Shelter supplies', '2024-06-19', 75.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Dr Hudson', 'Shelter supplies', '2024-07-08', 223.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Pet Group Inc', 'Shelter supplies', '2024-06-21', 18.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Pet Kingdom', 'Shelter supplies', '2024-06-30', 8.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Canine Learning Centers', 'Shelter supplies', '2024-06-13', 67.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Pawerica Pet Store', 'Shelter supplies', '2024-07-07', 23.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Dr Jones', 'Shelter supplies', '2024-07-18', 115.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Decker''s Dog and Cat', 'Shelter supplies', '2024-06-24', 36.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Decker''s Dog and Cat', 'Shelter supplies', '2024-08-10', 36.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Brown', 'Shelter supplies', '2024-08-06', 252.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Pet Group Inc', 'Shelter supplies', '2024-07-24', 3.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'TagWorks', 'Shelter supplies', '2024-07-15', 14.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (97, 'Petco', 'Shelter supplies', '2024-07-04', 38.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Dr Wilson', 'Shelter supplies', '2024-07-19', 177.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Pet Kingdom', 'Shelter supplies', '2024-07-07', 23.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Pet Kingdom', 'Shelter supplies', '2024-07-09', 13.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Petco', 'Shelter supplies', '2024-07-06', 5.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Dr Brown', 'Shelter supplies', '2024-07-29', 31.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Dr Brown', 'Shelter supplies', '2024-07-21', 189.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Pet Kingdom', 'Shelter supplies', '2024-07-21', 3.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Brown', 'Shelter supplies', '2024-08-28', 155.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Unleashed by Petco', 'Shelter supplies', '2024-09-07', 47.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Unleashed by Petco', 'Shelter supplies', '2024-09-08', 17.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Canine Learning Centers', 'Shelter supplies', '2024-08-18', 61.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Decker''s Dog and Cat', 'Shelter supplies', '2024-10-21', 61.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Shelter supplies', '2024-11-19', 268.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Brown', 'Shelter supplies', '2024-10-01', 199.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Brown', 'Shelter supplies', '2024-11-19', 207.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Brown', 'Shelter supplies', '2024-12-30', 92.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Jones', 'Shelter supplies', '2024-09-29', 55.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Rozenman', 'Shelter supplies', '2024-08-09', 152.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pet Kingdom', 'Shelter supplies', '2024-10-25', 19.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Petco', 'Shelter supplies', '2024-08-25', 9.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Petco', 'Shelter supplies', '2024-08-31', 68.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Petco', 'Shelter supplies', '2024-09-20', 18.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Shelter supplies', '2024-08-27', 22.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Shelter supplies', '2024-11-19', 5.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Shelter supplies', '2024-12-05', 14.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Unleashed by Petco', 'Shelter supplies', '2025-01-09', 28.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Petco', 'Shelter supplies', '2024-08-26', 36.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Brown', 'Shelter supplies', '2024-09-19', 111.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Wilson', 'Shelter supplies', '2024-08-20', 98.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'TagWorks', 'Shelter supplies', '2024-09-12', 20.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Rozenman', 'Shelter supplies', '2024-08-16', 235.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Arrieros Pet Shop', 'Shelter supplies', '2024-09-07', 11.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Brown', 'Shelter supplies', '2024-08-23', 85.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Kahoots Pet', 'Shelter supplies', '2024-08-16', 15.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Kahoots Pet', 'Shelter supplies', '2024-08-22', 21.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Pet Group Inc', 'Shelter supplies', '2024-08-23', 23.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Petco', 'Shelter supplies', '2024-08-16', 24.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (121, 'TagWorks', 'Shelter supplies', '2024-09-02', 18.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Towers', 'Shelter supplies', '2024-08-26', 102.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (123, 'Pet Kingdom', 'Shelter supplies', '2024-08-30', 61.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Pet Kingdom', 'Shelter supplies', '2024-09-25', 38.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'TagWorks', 'Shelter supplies', '2024-09-25', 21.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Unleashed by Petco', 'Shelter supplies', '2024-09-13', 1.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (125, 'Dr Rozenman', 'Shelter supplies', '2024-09-10', 250.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Arrieros Pet Shop', 'Shelter supplies', '2024-11-21', 32.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Hudson', 'Shelter supplies', '2024-12-06', 268.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Towers', 'Shelter supplies', '2024-10-07', 156.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Wilson', 'Shelter supplies', '2024-11-26', 274.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Kahoots Pet', 'Shelter supplies', '2024-10-09', 71.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'TagWorks', 'Shelter supplies', '2024-09-27', 69.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (128, 'Kahoots Pet', 'Shelter supplies', '2024-09-23', 0.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (130, 'Pawerica Pet Store', 'Shelter supplies', '2024-10-05', 4.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (130, 'Pawerica Pet Store', 'Shelter supplies', '2024-10-15', 9.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Pet Group Inc', 'Shelter supplies', '2024-10-27', 20.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Canine Learning Centers', 'Shelter supplies', '2024-11-13', 33.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Hudson', 'Shelter supplies', '2024-11-13', 83.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Pet Kingdom', 'Shelter supplies', '2024-10-24', 11.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Unleashed by Petco', 'Shelter supplies', '2024-10-11', 12.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Kahoots Pet', 'Shelter supplies', '2024-10-15', 29.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'TagWorks', 'Shelter supplies', '2024-10-15', 39.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'TagWorks', 'Shelter supplies', '2024-11-04', 30.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Pet Group Inc', 'Shelter supplies', '2024-10-28', 17.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Jones', 'Shelter supplies', '2025-01-04', 221.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Rozenman', 'Shelter supplies', '2024-10-28', 167.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Wilson', 'Shelter supplies', '2024-10-28', 208.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pawerica Pet Store', 'Shelter supplies', '2024-12-06', 13.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pet Group Inc', 'Shelter supplies', '2024-12-12', 22.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pet Kingdom', 'Shelter supplies', '2024-11-27', 17.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Unleashed by Petco', 'Shelter supplies', '2024-11-18', 13.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (142, 'Pet Kingdom', 'Shelter supplies', '2024-11-07', 3.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (143, 'Dr Rozenman', 'Shelter supplies', '2024-11-15', 1.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (145, 'Arrieros Pet Shop', 'Shelter supplies', '2024-11-14', 2.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (145, 'Dr Rozenman', 'Shelter supplies', '2024-11-14', 170.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (145, 'Petco', 'Shelter supplies', '2024-11-14', 19.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (146, 'Dr Wilson', 'Shelter supplies', '2024-11-17', 161.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Smith', 'Shelter supplies', '2024-12-05', 161.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Smith', 'Shelter supplies', '2024-12-17', 191.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Towers', 'Shelter supplies', '2024-11-18', 79.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Wilson', 'Shelter supplies', '2024-12-17', 172.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Kahoots Pet', 'Shelter supplies', '2024-12-17', 53.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Arrieros Pet Shop', 'Shelter supplies', '2024-12-31', 20.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Brown', 'Shelter supplies', '2024-12-16', 81.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Hudson', 'Shelter supplies', '2024-12-01', 134.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Towers', 'Shelter supplies', '2024-12-31', 140.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Kahoots Pet', 'Shelter supplies', '2024-12-05', 4.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pet Group Inc', 'Shelter supplies', '2024-11-25', 8.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pet Group Inc', 'Shelter supplies', '2025-01-02', 59.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'TagWorks', 'Shelter supplies', '2024-11-28', 11.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Unleashed by Petco', 'Shelter supplies', '2024-12-26', 27.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Arnold', 'Shelter supplies', '2024-12-25', 51.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Hudson', 'Shelter supplies', '2024-12-20', 84.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Hudson', 'Shelter supplies', '2025-01-04', 130.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Smith', 'Shelter supplies', '2024-12-18', 101.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Pet Kingdom', 'Shelter supplies', '2024-12-18', 9.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'TagWorks', 'Shelter supplies', '2024-12-26', 4.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Arrieros Pet Shop', 'Shelter supplies', '2024-12-17', 60.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Arnold', 'Shelter supplies', '2024-12-14', 278.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Arnold', 'Shelter supplies', '2025-01-03', 251.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Kahoots Pet', 'Shelter supplies', '2025-01-08', 19.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Canine Learning Centers', 'Shelter supplies', '2024-12-30', 7.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Decker''s Dog and Cat', 'Shelter supplies', '2024-12-19', 1.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (156, 'Dr Towers', 'Shelter supplies', '2024-12-18', 91.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Kahoots Pet', 'Shelter supplies', '2024-12-20', 10.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'TagWorks', 'Shelter supplies', '2024-12-19', 9.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Canine Learning Centers', 'Shelter supplies', '2025-01-19', 14.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Jones', 'Shelter supplies', '2025-01-02', 2.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Wilson', 'Shelter supplies', '2025-01-25', 138.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pet Group Inc', 'Shelter supplies', '2025-01-11', 60.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Unleashed by Petco', 'Shelter supplies', '2025-01-03', 52.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Arnold', 'Shelter supplies', '2025-01-21', 284.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Hudson', 'Shelter supplies', '2025-01-26', 25.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Towers', 'Shelter supplies', '2025-01-21', 12.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Petco', 'Shelter supplies', '2025-01-12', 4.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Pet Kingdom', 'Shelter supplies', '2025-01-09', 22.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Dr Smith', 'Shelter supplies', '2025-01-07', 194.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (165, 'Arrieros Pet Shop', 'Shelter supplies', '2025-01-13', 29.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (165, 'Decker''s Dog and Cat', 'Shelter supplies', '2025-01-10', 24.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Dr Brown', 'Shelter supplies', '2025-01-14', 120.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Dr Rozenman', 'Shelter supplies', '2025-01-14', 44.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (166, 'Kahoots Pet', 'Shelter supplies', '2025-01-13', 0.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Decker''s Dog and Cat', 'Shelter supplies', '2025-01-25', 14.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Arnold', 'Shelter supplies', '2025-01-22', 255.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (171, 'Unleashed by Petco', 'Shelter supplies', '2025-01-20', 14.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (173, 'Arrieros Pet Shop', 'Shelter supplies', '2025-01-29', 44.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Decker''s Dog and Cat', 'Shelter supplies', '2025-02-07', 6.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Rozenman', 'Shelter supplies', '2025-02-07', 20.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Towers', 'Shelter supplies', '2025-02-07', 156.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'TagWorks', 'Shelter supplies', '2025-02-03', 62.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Unleashed by Petco', 'Shelter supplies', '2025-02-18', 8.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (175, 'Dr Towers', 'Shelter supplies', '2025-02-03', 121.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (177, 'Kahoots Pet', 'Shelter supplies', '2025-02-04', 16.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Dr Wilson', 'Shelter supplies', '2025-02-12', 23.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Pet Kingdom', 'Shelter supplies', '2025-02-18', 6.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Arrieros Pet Shop', 'Shelter supplies', '2025-02-14', 42.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Hudson', 'Shelter supplies', '2025-02-26', 235.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Jones', 'Shelter supplies', '2025-02-24', 135.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Rozenman', 'Shelter supplies', '2025-02-14', 270.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Kahoots Pet', 'Shelter supplies', '2025-02-16', 2.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Petco', 'Shelter supplies', '2025-02-16', 22.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Petco', 'Shelter supplies', '2025-02-21', 3.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Arrieros Pet Shop', 'Shelter supplies', '2025-03-01', 16.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Hudson', 'Shelter supplies', '2025-02-25', 57.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pawerica Pet Store', 'Shelter supplies', '2025-02-17', 51.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pet Kingdom', 'Shelter supplies', '2025-02-28', 32.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (186, 'Arrieros Pet Shop', 'Shelter supplies', '2025-02-19', 5.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (186, 'Dr Hudson', 'Shelter supplies', '2025-02-19', 25.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (186, 'Dr Jones', 'Shelter supplies', '2025-02-18', 273.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Canine Learning Centers', 'Shelter supplies', '2025-02-18', 68.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Brown', 'Shelter supplies', '2025-02-25', 56.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Hudson', 'Shelter supplies', '2025-02-19', 61.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Smith', 'Shelter supplies', '2025-02-24', 136.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Dr Arnold', 'Shelter supplies', '2025-02-25', 164.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Dr Hudson', 'Shelter supplies', '2025-02-23', 264.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Dr Smith', 'Shelter supplies', '2025-02-25', 253.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Dr Wilson', 'Shelter supplies', '2025-02-23', 143.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (189, 'Dr Brown', 'Shelter supplies', '2025-02-26', 51.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Jones', 'Transportation', '2023-10-25', 192.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Jones', 'Transportation', '2023-11-28', 185.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Rozenman', 'Transportation', '2023-12-14', 47.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'TagWorks', 'Transportation', '2023-12-20', 22.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'Dr Wilson', 'Transportation', '2024-01-27', 298.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (10, 'Dr Arnold', 'Transportation', '2023-11-13', 186.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (10, 'Dr Towers', 'Transportation', '2023-11-13', 254.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Arrieros Pet Shop', 'Transportation', '2023-12-15', 27.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Brown', 'Transportation', '2023-12-23', 208.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Dr Towers', 'Transportation', '2023-12-29', 86.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pawerica Pet Store', 'Transportation', '2024-01-30', 5.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pet Kingdom', 'Transportation', '2023-12-29', 16.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Jones', 'Transportation', '2024-02-14', 89.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Rozenman', 'Transportation', '2024-01-25', 200.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Rozenman', 'Transportation', '2024-02-05', 170.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Dr Towers', 'Transportation', '2023-12-21', 17.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Dr Arnold', 'Transportation', '2024-01-28', 201.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Pet Kingdom', 'Transportation', '2024-01-10', 52.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Dr Brown', 'Transportation', '2024-02-01', 292.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (37, 'Canine Learning Centers', 'Transportation', '2024-01-18', 33.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (38, 'Decker''s Dog and Cat', 'Transportation', '2024-01-21', 13.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Dr Hudson', 'Transportation', '2024-02-01', 89.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Dr Arnold', 'Transportation', '2024-02-28', 204.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Pawerica Pet Store', 'Transportation', '2024-01-29', 50.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Pawerica Pet Store', 'Transportation', '2024-02-28', 17.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Petco', 'Transportation', '2024-01-29', 8.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Canine Learning Centers', 'Transportation', '2024-03-10', 18.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Towers', 'Transportation', '2024-05-07', 202.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Arrieros Pet Shop', 'Transportation', '2024-02-10', 5.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Arrieros Pet Shop', 'Transportation', '2024-02-21', 60.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Arnold', 'Transportation', '2024-03-27', 263.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Wilson', 'Transportation', '2024-03-27', 22.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'TagWorks', 'Transportation', '2024-02-21', 67.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Unleashed by Petco', 'Transportation', '2024-03-18', 51.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (52, 'Kahoots Pet', 'Transportation', '2024-02-25', 20.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (53, 'Canine Learning Centers', 'Transportation', '2024-02-27', 25.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Petco', 'Transportation', '2024-03-12', 15.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (56, 'Dr Brown', 'Transportation', '2024-03-13', 255.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (56, 'Dr Rozenman', 'Transportation', '2024-03-13', 16.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Dr Rozenman', 'Transportation', '2024-03-13', 192.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Pet Kingdom', 'Transportation', '2024-03-04', 46.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Dr Arnold', 'Transportation', '2024-04-15', 161.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Pet Kingdom', 'Transportation', '2024-04-25', 21.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Kahoots Pet', 'Transportation', '2024-04-05', 21.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Pet Group Inc', 'Transportation', '2024-03-22', 9.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (65, 'Dr Jones', 'Transportation', '2024-04-08', 275.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'Dr Smith', 'Transportation', '2024-04-14', 42.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Decker''s Dog and Cat', 'Transportation', '2024-04-27', 14.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (74, 'Canine Learning Centers', 'Transportation', '2024-05-02', 10.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (74, 'Kahoots Pet', 'Transportation', '2024-05-02', 28.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (79, 'Dr Hudson', 'Transportation', '2024-05-17', 203.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Smith', 'Transportation', '2024-07-15', 130.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Pet Kingdom', 'Transportation', '2024-06-02', 20.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Brown', 'Transportation', '2024-05-23', 190.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Brown', 'Transportation', '2024-07-17', 195.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Smith', 'Transportation', '2024-06-11', 95.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (86, 'Dr Wilson', 'Transportation', '2024-06-06', 193.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Canine Learning Centers', 'Transportation', '2024-06-21', 15.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Decker''s Dog and Cat', 'Transportation', '2024-06-21', 9.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Unleashed by Petco', 'Transportation', '2024-06-21', 16.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Decker''s Dog and Cat', 'Transportation', '2024-06-16', 72.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Dr Rozenman', 'Transportation', '2024-06-19', 177.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Kahoots Pet', 'Transportation', '2024-06-16', 12.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Arrieros Pet Shop', 'Transportation', '2024-06-17', 24.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Dr Wilson', 'Transportation', '2024-07-18', 119.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Pawerica Pet Store', 'Transportation', '2024-07-18', 14.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Dr Jones', 'Transportation', '2024-06-24', 80.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Unleashed by Petco', 'Transportation', '2024-06-30', 17.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Brown', 'Transportation', '2024-07-20', 217.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Jones', 'Transportation', '2024-07-04', 156.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Smith', 'Transportation', '2024-08-06', 137.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Towers', 'Transportation', '2024-07-15', 251.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Pet Kingdom', 'Transportation', '2024-07-04', 29.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (97, 'Pet Kingdom', 'Transportation', '2024-07-04', 7.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'TagWorks', 'Transportation', '2024-07-07', 24.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (99, 'Pet Group Inc', 'Transportation', '2024-07-24', 10.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (99, 'Unleashed by Petco', 'Transportation', '2024-07-24', 0.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Canine Learning Centers', 'Transportation', '2024-07-22', 1.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Canine Learning Centers', 'Transportation', '2024-07-29', 5.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Decker''s Dog and Cat', 'Transportation', '2024-07-29', 19.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Dr Wilson', 'Transportation', '2024-07-18', 179.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Petco', 'Transportation', '2024-07-18', 46.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Arrieros Pet Shop', 'Transportation', '2024-08-01', 7.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Wilson', 'Transportation', '2024-09-08', 34.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Petco', 'Transportation', '2024-09-07', 6.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Canine Learning Centers', 'Transportation', '2024-08-25', 47.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Canine Learning Centers', 'Transportation', '2024-11-27', 59.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Brown', 'Transportation', '2024-08-27', 213.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Brown', 'Transportation', '2024-09-20', 62.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Rozenman', 'Transportation', '2024-12-30', 157.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Wilson', 'Transportation', '2024-08-31', 110.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pawerica Pet Store', 'Transportation', '2024-08-09', 46.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pawerica Pet Store', 'Transportation', '2024-12-27', 14.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Petco', 'Transportation', '2024-12-01', 25.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Transportation', '2024-10-27', 63.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Unleashed by Petco', 'Transportation', '2024-12-01', 67.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Dr Smith', 'Transportation', '2024-08-21', 207.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Dr Towers', 'Transportation', '2024-08-09', 178.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Dr Wilson', 'Transportation', '2024-08-07', 150.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Pet Kingdom', 'Transportation', '2024-08-09', 41.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Brown', 'Transportation', '2024-08-22', 275.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Rozenman', 'Transportation', '2024-09-16', 40.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Kahoots Pet', 'Transportation', '2024-08-14', 18.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Kahoots Pet', 'Transportation', '2024-08-20', 21.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Pawerica Pet Store', 'Transportation', '2024-09-19', 14.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Pet Group Inc', 'Transportation', '2024-08-22', 52.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Decker''s Dog and Cat', 'Transportation', '2024-08-22', 18.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Dr Jones', 'Transportation', '2024-09-02', 167.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Canine Learning Centers', 'Transportation', '2024-09-04', 9.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Hudson', 'Transportation', '2024-08-17', 170.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Hudson', 'Transportation', '2024-09-06', 50.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Rozenman', 'Transportation', '2024-08-23', 23.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Pet Group Inc', 'Transportation', '2024-09-06', 15.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Petco', 'Transportation', '2024-09-06', 66.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (117, 'Dr Jones', 'Transportation', '2024-08-16', 248.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (118, 'Dr Hudson', 'Transportation', '2024-08-18', 185.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (118, 'Dr Jones', 'Transportation', '2024-08-18', 176.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (118, 'Pet Group Inc', 'Transportation', '2024-08-18', 39.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (119, 'Dr Brown', 'Transportation', '2024-08-17', 16.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (121, 'Petco', 'Transportation', '2024-08-27', 63.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Hudson', 'Transportation', '2024-09-16', 171.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Towers', 'Transportation', '2024-08-30', 270.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (123, 'Decker''s Dog and Cat', 'Transportation', '2024-08-30', 2.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (123, 'Dr Jones', 'Transportation', '2024-08-29', 72.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (123, 'TagWorks', 'Transportation', '2024-08-30', 7.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Hudson', 'Transportation', '2024-10-11', 27.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Wilson', 'Transportation', '2024-11-01', 222.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Pet Group Inc', 'Transportation', '2024-10-02', 47.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Arnold', 'Transportation', '2024-09-27', 88.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Arnold', 'Transportation', '2024-11-25', 30.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Hudson', 'Transportation', '2024-11-30', 291.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Wilson', 'Transportation', '2024-12-06', 282.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Group Inc', 'Transportation', '2024-09-12', 18.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (130, 'Dr Towers', 'Transportation', '2024-10-15', 65.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Decker''s Dog and Cat', 'Transportation', '2024-10-05', 17.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Brown', 'Transportation', '2024-11-04', 57.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Rozenman', 'Transportation', '2024-10-26', 137.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Towers', 'Transportation', '2024-10-12', 45.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Arnold', 'Transportation', '2024-11-14', 187.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Wilson', 'Transportation', '2024-11-14', 236.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Petco', 'Transportation', '2024-10-11', 48.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Decker''s Dog and Cat', 'Transportation', '2024-10-15', 30.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Dr Towers', 'Transportation', '2024-10-10', 118.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (138, 'Petco', 'Transportation', '2024-10-23', 13.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Dr Hudson', 'Transportation', '2024-10-28', 42.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Arnold', 'Transportation', '2024-10-28', 64.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Brown', 'Transportation', '2024-12-12', 193.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pawerica Pet Store', 'Transportation', '2024-11-13', 7.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'TagWorks', 'Transportation', '2024-12-06', 10.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (142, 'Dr Wilson', 'Transportation', '2024-11-07', 161.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (143, 'Dr Hudson', 'Transportation', '2024-11-07', 194.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (144, 'Pawerica Pet Store', 'Transportation', '2024-11-17', 20.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (144, 'Unleashed by Petco', 'Transportation', '2024-11-16', 24.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Arnold', 'Transportation', '2024-12-05', 94.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Wilson', 'Transportation', '2024-12-11', 145.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Pawerica Pet Store', 'Transportation', '2024-11-24', 23.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Unleashed by Petco', 'Transportation', '2024-12-11', 22.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Arrieros Pet Shop', 'Transportation', '2024-12-28', 19.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Canine Learning Centers', 'Transportation', '2024-11-22', 5.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Canine Learning Centers', 'Transportation', '2024-12-22', 47.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Brown', 'Transportation', '2024-12-22', 286.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Brown', 'Transportation', '2024-12-28', 80.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Smith', 'Transportation', '2024-12-31', 271.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Smith', 'Transportation', '2025-01-05', 198.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Towers', 'Transportation', '2024-12-06', 260.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Wilson', 'Transportation', '2024-11-22', 206.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Wilson', 'Transportation', '2024-12-22', 187.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Kahoots Pet', 'Transportation', '2024-11-22', 68.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Petco', 'Transportation', '2025-01-16', 66.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (149, 'Kahoots Pet', 'Transportation', '2024-11-25', 9.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (149, 'Pet Kingdom', 'Transportation', '2024-11-25', 39.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Decker''s Dog and Cat', 'Transportation', '2024-12-09', 22.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Arnold', 'Transportation', '2024-12-14', 221.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Pet Kingdom', 'Transportation', '2024-12-20', 18.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Pet Kingdom', 'Transportation', '2025-01-06', 45.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Petco', 'Transportation', '2024-12-25', 40.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Unleashed by Petco', 'Transportation', '2024-12-14', 6.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'TagWorks', 'Transportation', '2024-12-21', 1.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Dr Brown', 'Transportation', '2024-12-21', 122.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Dr Jones', 'Transportation', '2024-12-14', 138.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Pawerica Pet Store', 'Transportation', '2024-12-14', 6.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Kahoots Pet', 'Transportation', '2024-12-30', 20.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Kahoots Pet', 'Transportation', '2025-01-06', 53.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Pet Kingdom', 'Transportation', '2024-12-30', 0.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'TagWorks', 'Transportation', '2024-12-27', 48.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Unleashed by Petco', 'Transportation', '2024-12-19', 16.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Canine Learning Centers', 'Transportation', '2025-01-05', 9.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Towers', 'Transportation', '2025-01-11', 171.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pawerica Pet Store', 'Transportation', '2025-01-25', 2.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pet Kingdom', 'Transportation', '2025-02-03', 57.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Unleashed by Petco', 'Transportation', '2025-01-05', 64.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Dr Wilson', 'Transportation', '2025-01-05', 289.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Canine Learning Centers', 'Transportation', '2025-01-30', 24.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Decker''s Dog and Cat', 'Transportation', '2025-01-16', 45.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Brown', 'Transportation', '2025-02-06', 92.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Wilson', 'Transportation', '2025-01-14', 113.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Kahoots Pet', 'Transportation', '2025-02-02', 0.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Hudson', 'Transportation', '2025-01-09', 131.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Petco', 'Transportation', '2025-01-12', 17.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Canine Learning Centers', 'Transportation', '2025-01-19', 20.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Pet Kingdom', 'Transportation', '2025-01-19', 17.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (165, 'Dr Jones', 'Transportation', '2025-01-10', 120.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (165, 'TagWorks', 'Transportation', '2025-01-13', 18.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Decker''s Dog and Cat', 'Transportation', '2025-01-15', 20.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Dr Smith', 'Transportation', '2025-01-15', 154.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (169, 'Kahoots Pet', 'Transportation', '2025-01-17', 10.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (173, 'Dr Towers', 'Transportation', '2025-01-29', 155.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (173, 'TagWorks', 'Transportation', '2025-01-29', 45.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Decker''s Dog and Cat', 'Transportation', '2025-02-03', 47.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Wilson', 'Transportation', '2025-02-19', 248.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Pawerica Pet Store', 'Transportation', '2025-02-11', 7.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Petco', 'Transportation', '2025-02-07', 18.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Petco', 'Transportation', '2025-02-09', 12.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (177, 'Arrieros Pet Shop', 'Transportation', '2025-02-07', 10.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (178, 'Dr Smith', 'Transportation', '2025-02-05', 152.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Dr Arnold', 'Transportation', '2025-02-14', 265.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Kahoots Pet', 'Transportation', '2025-02-14', 1.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Pawerica Pet Store', 'Transportation', '2025-02-17', 59.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Arrieros Pet Shop', 'Transportation', '2025-02-19', 12.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Wilson', 'Transportation', '2025-02-21', 252.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Wilson', 'Transportation', '2025-03-01', 46.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Pet Kingdom', 'Transportation', '2025-02-14', 52.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Petco', 'Transportation', '2025-02-13', 2.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Hudson', 'Transportation', '2025-02-22', 266.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Dr Hudson', 'Transportation', '2025-02-28', 116.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Decker''s Dog and Cat', 'Transportation', '2025-02-24', 21.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Dr Rozenman', 'Transportation', '2025-02-26', 69.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Pet Kingdom', 'Transportation', '2025-02-21', 34.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (189, 'Dr Wilson', 'Transportation', '2025-02-26', 123.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (189, 'Pet Kingdom', 'Transportation', '2025-02-26', 27.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (190, 'Petco', 'Transportation', '2025-02-26', 4.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Arrieros Pet Shop', 'Treats and Toys', '2023-12-31', 24.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Arnold', 'Treats and Toys', '2023-12-07', 141.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Kahoots Pet', 'Treats and Toys', '2023-10-25', 68.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (8, 'Decker''s Dog and Cat', 'Treats and Toys', '2023-11-07', 20.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (14, 'Pet Group Inc', 'Treats and Toys', '2023-11-22', 14.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (17, 'Pawerica Pet Store', 'Treats and Toys', '2023-12-04', 72.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (20, 'Pawerica Pet Store', 'Treats and Toys', '2023-12-12', 36.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Canine Learning Centers', 'Treats and Toys', '2023-12-15', 1.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (21, 'Pet Group Inc', 'Treats and Toys', '2024-01-08', 13.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Canine Learning Centers', 'Treats and Toys', '2024-02-01', 70.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Petco', 'Treats and Toys', '2024-01-17', 37.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Kahoots Pet', 'Treats and Toys', '2024-01-28', 7.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (27, 'Dr Wilson', 'Treats and Toys', '2023-12-30', 234.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (28, 'Canine Learning Centers', 'Treats and Toys', '2023-12-29', 16.41);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'Dr Brown', 'Treats and Toys', '2024-01-05', 110.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'Kahoots Pet', 'Treats and Toys', '2024-01-05', 67.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'Pawerica Pet Store', 'Treats and Toys', '2024-01-05', 69.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (29, 'Pet Kingdom', 'Treats and Toys', '2024-01-05', 33.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (30, 'Dr Brown', 'Treats and Toys', '2024-01-03', 137.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (32, 'Unleashed by Petco', 'Treats and Toys', '2024-01-14', 59.19);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (35, 'Pawerica Pet Store', 'Treats and Toys', '2024-02-01', 23.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (38, 'Dr Jones', 'Treats and Toys', '2024-01-21', 213.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'TagWorks', 'Treats and Toys', '2024-01-23', 72.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'Pet Kingdom', 'Treats and Toys', '2024-02-28', 21.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (42, 'Dr Wilson', 'Treats and Toys', '2024-01-30', 129.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (42, 'Pawerica Pet Store', 'Treats and Toys', '2024-01-30', 8.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Dr Brown', 'Treats and Toys', '2024-02-19', 117.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Dr Rozenman', 'Treats and Toys', '2024-02-10', 7.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Kahoots Pet', 'Treats and Toys', '2024-02-19', 15.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (43, 'Pet Group Inc', 'Treats and Toys', '2024-02-23', 23.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Jones', 'Treats and Toys', '2024-03-01', 52.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Rozenman', 'Treats and Toys', '2024-03-25', 81.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Dr Wilson', 'Treats and Toys', '2024-05-07', 153.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'TagWorks', 'Treats and Toys', '2024-04-22', 10.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Unleashed by Petco', 'Treats and Toys', '2024-03-30', 15.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Kahoots Pet', 'Treats and Toys', '2024-02-20', 6.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Unleashed by Petco', 'Treats and Toys', '2024-02-13', 55.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Dr Wilson', 'Treats and Toys', '2024-03-23', 171.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'Unleashed by Petco', 'Treats and Toys', '2024-03-23', 70.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Arnold', 'Treats and Toys', '2024-02-21', 6.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Dr Brown', 'Treats and Toys', '2024-03-12', 133.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Decker''s Dog and Cat', 'Treats and Toys', '2024-03-02', 5.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Dr Wilson', 'Treats and Toys', '2024-03-04', 92.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Pet Kingdom', 'Treats and Toys', '2024-04-08', 6.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Pet Kingdom', 'Treats and Toys', '2024-04-15', 71.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Towers', 'Treats and Toys', '2024-04-06', 199.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Pet Group Inc', 'Treats and Toys', '2024-04-30', 34.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'Dr Hudson', 'Treats and Toys', '2024-03-27', 66.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (61, 'Petco', 'Treats and Toys', '2024-03-30', 24.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Dr Rozenman', 'Treats and Toys', '2024-03-22', 38.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Pet Group Inc', 'Treats and Toys', '2024-04-04', 9.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (65, 'TagWorks', 'Treats and Toys', '2024-04-08', 57.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Canine Learning Centers', 'Treats and Toys', '2024-04-13', 10.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (66, 'Kahoots Pet', 'Treats and Toys', '2024-05-06', 52.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'Pet Kingdom', 'Treats and Toys', '2024-04-30', 41.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'TagWorks', 'Treats and Toys', '2024-04-30', 13.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (70, 'Pet Group Inc', 'Treats and Toys', '2024-04-27', 63.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (71, 'Dr Towers', 'Treats and Toys', '2024-04-24', 212.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (71, 'Pawerica Pet Store', 'Treats and Toys', '2024-04-28', 3.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Arrieros Pet Shop', 'Treats and Toys', '2024-05-23', 17.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Canine Learning Centers', 'Treats and Toys', '2024-05-05', 13.64);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Brown', 'Treats and Toys', '2024-05-05', 250.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Hudson', 'Treats and Toys', '2024-05-05', 250.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Jones', 'Treats and Toys', '2024-05-14', 114.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Wilson', 'Treats and Toys', '2024-05-10', 176.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (74, 'TagWorks', 'Treats and Toys', '2024-05-02', 25.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (75, 'Dr Jones', 'Treats and Toys', '2024-05-17', 67.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Dr Arnold', 'Treats and Toys', '2024-05-17', 285.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (78, 'Dr Smith', 'Treats and Toys', '2024-05-17', 232.5);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Canine Learning Centers', 'Treats and Toys', '2024-07-15', 20.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Brown', 'Treats and Toys', '2024-05-25', 156.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Arrieros Pet Shop', 'Treats and Toys', '2024-07-29', 3.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Dr Arnold', 'Treats and Toys', '2024-06-13', 197.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Kahoots Pet', 'Treats and Toys', '2024-07-17', 15.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'TagWorks', 'Treats and Toys', '2024-05-23', 46.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (85, 'Pet Kingdom', 'Treats and Toys', '2024-06-19', 11.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (86, 'Dr Brown', 'Treats and Toys', '2024-06-06', 131.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (86, 'Dr Rozenman', 'Treats and Toys', '2024-06-06', 228.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Towers', 'Treats and Toys', '2024-07-06', 45.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Pet Kingdom', 'Treats and Toys', '2024-06-18', 72.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Canine Learning Centers', 'Treats and Toys', '2024-06-20', 27.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Pet Kingdom', 'Treats and Toys', '2024-06-21', 16.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'TagWorks', 'Treats and Toys', '2024-06-19', 22.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Pawerica Pet Store', 'Treats and Toys', '2024-06-17', 9.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Unleashed by Petco', 'Treats and Toys', '2024-06-17', 15.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (98, 'Dr Hudson', 'Treats and Toys', '2024-07-17', 109.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (99, 'Pet Kingdom', 'Treats and Toys', '2024-07-24', 13.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Pet Group Inc', 'Treats and Toys', '2024-07-18', 5.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Dr Arnold', 'Treats and Toys', '2024-07-18', 268.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Dr Jones', 'Treats and Toys', '2024-07-21', 296.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Decker''s Dog and Cat', 'Treats and Toys', '2024-08-04', 40.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Dr Towers', 'Treats and Toys', '2024-08-04', 140.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Dr Towers', 'Treats and Toys', '2024-08-15', 140.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Arnold', 'Treats and Toys', '2024-09-07', 149.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Hudson', 'Treats and Toys', '2024-08-08', 168.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Smith', 'Treats and Toys', '2024-08-28', 44.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Arrieros Pet Shop', 'Treats and Toys', '2024-08-27', 9.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Treats and Toys', '2024-10-01', 277.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Treats and Toys', '2024-12-16', 176.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Treats and Toys', '2024-12-23', 181.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Hudson', 'Treats and Toys', '2024-08-03', 85.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Jones', 'Treats and Toys', '2024-12-05', 167.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Smith', 'Treats and Toys', '2024-10-08', 84.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pawerica Pet Store', 'Treats and Toys', '2024-11-09', 20.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pawerica Pet Store', 'Treats and Toys', '2024-12-30', 24.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Unleashed by Petco', 'Treats and Toys', '2024-08-27', 11.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (108, 'Dr Smith', 'Treats and Toys', '2024-08-03', 148.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Dr Arnold', 'Treats and Toys', '2024-08-26', 89.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Dr Brown', 'Treats and Toys', '2024-08-16', 213.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Dr Wilson', 'Treats and Toys', '2024-08-21', 231.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Kahoots Pet', 'Treats and Toys', '2024-08-16', 2.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Decker''s Dog and Cat', 'Treats and Toys', '2024-08-12', 10.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Kahoots Pet', 'Treats and Toys', '2024-08-12', 10.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Wilson', 'Treats and Toys', '2024-08-16', 149.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Petco', 'Treats and Toys', '2024-08-17', 23.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Petco', 'Treats and Toys', '2024-09-02', 11.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Unleashed by Petco', 'Treats and Toys', '2024-08-24', 6.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (120, 'Canine Learning Centers', 'Treats and Toys', '2024-08-21', 18.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Arnold', 'Treats and Toys', '2024-09-18', 241.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Dr Towers', 'Treats and Toys', '2024-09-11', 11.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pet Group Inc', 'Treats and Toys', '2024-09-18', 14.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (123, 'Dr Jones', 'Treats and Toys', '2024-08-30', 23.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Decker''s Dog and Cat', 'Treats and Toys', '2024-11-09', 18.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'TagWorks', 'Treats and Toys', '2024-10-02', 31.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'TagWorks', 'Treats and Toys', '2024-10-11', 15.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Rozenman', 'Treats and Toys', '2024-10-21', 245.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Smith', 'Treats and Toys', '2024-09-17', 89.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Wilson', 'Treats and Toys', '2024-11-30', 151.87);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pawerica Pet Store', 'Treats and Toys', '2024-10-21', 19.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Group Inc', 'Treats and Toys', '2024-11-30', 44.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Kingdom', 'Treats and Toys', '2024-10-27', 1.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Treats and Toys', '2024-09-19', 6.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (130, 'Dr Rozenman', 'Treats and Toys', '2024-10-15', 16.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Brown', 'Treats and Toys', '2024-11-02', 12.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Wilson', 'Treats and Toys', '2024-10-12', 297.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Pawerica Pet Store', 'Treats and Toys', '2024-10-12', 49.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Petco', 'Treats and Toys', '2024-11-02', 46.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Canine Learning Centers', 'Treats and Toys', '2024-10-07', 58.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Wilson', 'Treats and Toys', '2024-10-07', 281.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Canine Learning Centers', 'Treats and Toys', '2024-10-19', 66.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Pawerica Pet Store', 'Treats and Toys', '2024-10-15', 4.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Petco', 'Treats and Toys', '2024-10-24', 6.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (138, 'Decker''s Dog and Cat', 'Treats and Toys', '2024-10-23', 29.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Dr Wilson', 'Treats and Toys', '2024-10-27', 168.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Pawerica Pet Store', 'Treats and Toys', '2024-10-28', 34.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Brown', 'Treats and Toys', '2024-11-27', 65.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Hudson', 'Treats and Toys', '2024-12-24', 267.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Jones', 'Treats and Toys', '2024-11-13', 162.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Jones', 'Treats and Toys', '2024-12-02', 294.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Jones', 'Treats and Toys', '2024-12-09', 223.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pet Group Inc', 'Treats and Toys', '2024-11-01', 34.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Pet Group Inc', 'Treats and Toys', '2024-12-17', 29.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Petco', 'Treats and Toys', '2024-12-02', 67.31);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Petco', 'Treats and Toys', '2024-12-06', 10.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (142, 'Canine Learning Centers', 'Treats and Toys', '2024-11-07', 18.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (145, 'Canine Learning Centers', 'Treats and Toys', '2024-11-14', 4.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (146, 'Pet Kingdom', 'Treats and Toys', '2024-11-21', 7.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Hudson', 'Treats and Toys', '2024-12-11', 97.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Petco', 'Treats and Toys', '2024-12-01', 21.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'TagWorks', 'Treats and Toys', '2024-12-13', 21.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Hudson', 'Treats and Toys', '2024-12-14', 73.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Jones', 'Treats and Toys', '2025-01-07', 55.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pawerica Pet Store', 'Treats and Toys', '2024-11-25', 21.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pawerica Pet Store', 'Treats and Toys', '2024-12-28', 7.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pet Kingdom', 'Treats and Toys', '2025-01-02', 24.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Petco', 'Treats and Toys', '2024-12-01', 14.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Unleashed by Petco', 'Treats and Toys', '2024-12-06', 41.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Hudson', 'Treats and Toys', '2024-12-14', 106.06);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Smith', 'Treats and Toys', '2025-01-01', 55.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Kahoots Pet', 'Treats and Toys', '2024-12-14', 13.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'TagWorks', 'Treats and Toys', '2024-12-14', 3.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'TagWorks', 'Treats and Toys', '2024-12-20', 0.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Kahoots Pet', 'Treats and Toys', '2024-12-19', 16.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Pet Group Inc', 'Treats and Toys', '2024-12-22', 9.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'TagWorks', 'Treats and Toys', '2024-12-11', 12.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Pet Kingdom', 'Treats and Toys', '2024-12-21', 67.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Unleashed by Petco', 'Treats and Toys', '2024-12-14', 46.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Decker''s Dog and Cat', 'Treats and Toys', '2024-12-15', 18.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Dr Brown', 'Treats and Toys', '2024-12-19', 22.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Arrieros Pet Shop', 'Treats and Toys', '2024-12-30', 22.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Kahoots Pet', 'Treats and Toys', '2024-12-30', 7.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Pet Kingdom', 'Treats and Toys', '2024-12-19', 20.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (158, 'Dr Towers', 'Treats and Toys', '2024-12-30', 268.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Decker''s Dog and Cat', 'Treats and Toys', '2025-01-30', 72.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Brown', 'Treats and Toys', '2025-01-19', 216.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Smith', 'Treats and Toys', '2025-01-27', 100.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Petco', 'Treats and Toys', '2025-01-25', 57.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'TagWorks', 'Treats and Toys', '2025-02-03', 9.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Dr Jones', 'Treats and Toys', '2025-01-10', 224.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Pawerica Pet Store', 'Treats and Toys', '2025-01-08', 68.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Pet Group Inc', 'Treats and Toys', '2025-01-12', 16.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Towers', 'Treats and Toys', '2025-01-30', 194.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Pet Group Inc', 'Treats and Toys', '2025-01-08', 2.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Petco', 'Treats and Toys', '2025-01-22', 22.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'TagWorks', 'Treats and Toys', '2025-02-12', 20.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Unleashed by Petco', 'Treats and Toys', '2025-02-02', 49.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Rozenman', 'Treats and Toys', '2025-01-12', 0.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Dr Rozenman', 'Treats and Toys', '2025-01-19', 154.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'TagWorks', 'Treats and Toys', '2025-01-14', 49.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Dr Hudson', 'Treats and Toys', '2025-01-13', 255.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Kahoots Pet', 'Treats and Toys', '2025-01-21', 7.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (165, 'Dr Towers', 'Treats and Toys', '2025-01-10', 228.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Canine Learning Centers', 'Treats and Toys', '2025-01-18', 4.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Decker''s Dog and Cat', 'Treats and Toys', '2025-01-29', 8.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Rozenman', 'Treats and Toys', '2025-01-23', 268.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Towers', 'Treats and Toys', '2025-01-27', 260.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Wilson', 'Treats and Toys', '2025-01-22', 48.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Petco', 'Treats and Toys', '2025-01-27', 3.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (173, 'Dr Brown', 'Treats and Toys', '2025-01-29', 110.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Arrieros Pet Shop', 'Treats and Toys', '2025-02-20', 73.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Canine Learning Centers', 'Treats and Toys', '2025-02-15', 20.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Kahoots Pet', 'Treats and Toys', '2025-02-13', 16.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Kahoots Pet', 'Treats and Toys', '2025-02-18', 11.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Kahoots Pet', 'Treats and Toys', '2025-02-19', 9.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Pet Kingdom', 'Treats and Toys', '2025-02-05', 66.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Pet Kingdom', 'Treats and Toys', '2025-02-12', 20.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Unleashed by Petco', 'Treats and Toys', '2025-02-12', 39.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Unleashed by Petco', 'Treats and Toys', '2025-02-19', 17.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (175, 'Pawerica Pet Store', 'Treats and Toys', '2025-02-03', 38.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (176, 'Kahoots Pet', 'Treats and Toys', '2025-02-04', 35.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (180, 'Kahoots Pet', 'Treats and Toys', '2025-02-06', 22.02);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (180, 'TagWorks', 'Treats and Toys', '2025-02-06', 24.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Arrieros Pet Shop', 'Treats and Toys', '2025-02-27', 20.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Brown', 'Treats and Toys', '2025-02-19', 178.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Jones', 'Treats and Toys', '2025-02-26', 60.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Smith', 'Treats and Toys', '2025-02-21', 18.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Kahoots Pet', 'Treats and Toys', '2025-02-17', 1.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pawerica Pet Store', 'Treats and Toys', '2025-02-28', 29.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'TagWorks', 'Treats and Toys', '2025-03-01', 59.08);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Unleashed by Petco', 'Treats and Toys', '2025-02-18', 53.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Petco', 'Treats and Toys', '2025-02-25', 24.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Pawerica Pet Store', 'Treats and Toys', '2025-02-23', 60.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Pet Kingdom', 'Treats and Toys', '2025-02-26', 17.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (190, 'Dr Rozenman', 'Treats and Toys', '2025-03-01', 149.67);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (6, 'Dr Arnold', 'Veterinarian fees', '2023-12-31', 288.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (9, 'TagWorks', 'Veterinarian fees', '2023-11-06', 5.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (14, 'Dr Smith', 'Veterinarian fees', '2023-11-22', 194.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Arrieros Pet Shop', 'Veterinarian fees', '2023-12-25', 7.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Pet Group Inc', 'Veterinarian fees', '2023-12-21', 20.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Pet Group Inc', 'Veterinarian fees', '2023-12-25', 50.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (23, 'Unleashed by Petco', 'Veterinarian fees', '2024-01-21', 48.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'Pet Group Inc', 'Veterinarian fees', '2024-02-10', 26.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (25, 'TagWorks', 'Veterinarian fees', '2024-01-28', 17.0);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (37, 'Dr Jones', 'Veterinarian fees', '2024-01-18', 33.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (39, 'TagWorks', 'Veterinarian fees', '2024-01-21', 4.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (40, 'Pet Kingdom', 'Veterinarian fees', '2024-01-23', 27.32);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (41, 'TagWorks', 'Veterinarian fees', '2024-02-21', 15.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (42, 'Canine Learning Centers', 'Veterinarian fees', '2024-01-30', 19.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Dr Brown', 'Veterinarian fees', '2024-02-07', 252.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Dr Towers', 'Veterinarian fees', '2024-02-06', 219.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Dr Wilson', 'Veterinarian fees', '2024-02-06', 217.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (44, 'Unleashed by Petco', 'Veterinarian fees', '2024-02-07', 3.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (45, 'Decker''s Dog and Cat', 'Veterinarian fees', '2024-02-09', 48.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Decker''s Dog and Cat', 'Veterinarian fees', '2024-02-20', 2.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (46, 'Pet Group Inc', 'Veterinarian fees', '2024-02-20', 25.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Pet Kingdom', 'Veterinarian fees', '2024-03-10', 72.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (48, 'Petco', 'Veterinarian fees', '2024-03-10', 47.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (49, 'TagWorks', 'Veterinarian fees', '2024-02-28', 70.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (51, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-03-12', 55.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (52, 'Dr Arnold', 'Veterinarian fees', '2024-02-25', 41.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (54, 'Dr Arnold', 'Veterinarian fees', '2024-03-02', 0.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (55, 'Dr Rozenman', 'Veterinarian fees', '2024-02-27', 292.92);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (57, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-03-01', 3.34);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Dr Towers', 'Veterinarian fees', '2024-03-07', 279.49);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (58, 'Pawerica Pet Store', 'Veterinarian fees', '2024-03-07', 39.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (59, 'Dr Rozenman', 'Veterinarian fees', '2024-05-13', 62.82);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-04-04', 9.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (63, 'Unleashed by Petco', 'Veterinarian fees', '2024-04-04', 1.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (64, 'Dr Brown', 'Veterinarian fees', '2024-04-04', 20.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (65, 'Dr Brown', 'Veterinarian fees', '2024-04-08', 1.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (65, 'Pawerica Pet Store', 'Veterinarian fees', '2024-04-08', 7.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'Dr Arnold', 'Veterinarian fees', '2024-05-03', 269.05);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (67, 'Petco', 'Veterinarian fees', '2024-05-03', 8.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Dr Smith', 'Veterinarian fees', '2024-05-14', 12.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Pawerica Pet Store', 'Veterinarian fees', '2024-05-23', 67.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Petco', 'Veterinarian fees', '2024-06-09', 60.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'TagWorks', 'Veterinarian fees', '2024-05-23', 17.12);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (72, 'Unleashed by Petco', 'Veterinarian fees', '2024-05-14', 11.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (75, 'Kahoots Pet', 'Veterinarian fees', '2024-05-17', 61.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (76, 'Dr Brown', 'Veterinarian fees', '2024-05-10', 160.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (77, 'Dr Smith', 'Veterinarian fees', '2024-05-14', 5.85);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (77, 'Dr Towers', 'Veterinarian fees', '2024-05-14', 103.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (77, 'TagWorks', 'Veterinarian fees', '2024-05-27', 67.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-06-02', 74.09);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Canine Learning Centers', 'Veterinarian fees', '2024-05-25', 9.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (80, 'Dr Wilson', 'Veterinarian fees', '2024-06-13', 186.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-07-17', 9.97);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Canine Learning Centers', 'Veterinarian fees', '2024-06-10', 11.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (81, 'Pawerica Pet Store', 'Veterinarian fees', '2024-06-11', 3.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Dr Smith', 'Veterinarian fees', '2024-07-01', 184.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (88, 'Pet Group Inc', 'Veterinarian fees', '2024-07-16', 19.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Dr Hudson', 'Veterinarian fees', '2024-06-30', 55.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (90, 'Dr Towers', 'Veterinarian fees', '2024-07-08', 78.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Dr Rozenman', 'Veterinarian fees', '2024-06-16', 171.94);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (91, 'Dr Wilson', 'Veterinarian fees', '2024-06-19', 299.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-06-25', 11.86);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (92, 'Pawerica Pet Store', 'Veterinarian fees', '2024-06-25', 6.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Canine Learning Centers', 'Veterinarian fees', '2024-06-30', 15.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Dr Arnold', 'Veterinarian fees', '2024-06-30', 89.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (93, 'Dr Hudson', 'Veterinarian fees', '2024-06-24', 128.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-07-20', 6.4);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Decker''s Dog and Cat', 'Veterinarian fees', '2024-07-20', 49.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Dr Smith', 'Veterinarian fees', '2024-08-10', 45.45);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Petco', 'Veterinarian fees', '2024-08-06', 33.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (95, 'Unleashed by Petco', 'Veterinarian fees', '2024-08-06', 24.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (99, 'TagWorks', 'Veterinarian fees', '2024-07-24', 9.1);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (100, 'Kahoots Pet', 'Veterinarian fees', '2024-07-18', 7.76);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (101, 'Pet Kingdom', 'Veterinarian fees', '2024-07-18', 4.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Dr Hudson', 'Veterinarian fees', '2024-08-15', 91.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (103, 'Dr Jones', 'Veterinarian fees', '2024-08-15', 109.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Arnold', 'Veterinarian fees', '2024-08-01', 104.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Brown', 'Veterinarian fees', '2024-09-07', 42.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Dr Rozenman', 'Veterinarian fees', '2024-09-07', 164.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'Kahoots Pet', 'Veterinarian fees', '2024-08-01', 3.83);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (104, 'TagWorks', 'Veterinarian fees', '2024-09-13', 67.88);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-12-27', 19.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Arrieros Pet Shop', 'Veterinarian fees', '2025-01-09', 33.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Canine Learning Centers', 'Veterinarian fees', '2025-01-09', 5.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Veterinarian fees', '2024-08-25', 182.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Arnold', 'Veterinarian fees', '2024-10-04', 246.89);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Jones', 'Veterinarian fees', '2024-12-23', 8.18);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Smith', 'Veterinarian fees', '2024-09-19', 265.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Smith', 'Veterinarian fees', '2024-12-01', 60.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Towers', 'Veterinarian fees', '2024-12-23', 77.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Dr Wilson', 'Veterinarian fees', '2024-12-05', 72.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Kahoots Pet', 'Veterinarian fees', '2024-08-31', 22.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'Pet Kingdom', 'Veterinarian fees', '2024-12-05', 29.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (106, 'TagWorks', 'Veterinarian fees', '2024-09-05', 0.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (110, 'Dr Jones', 'Veterinarian fees', '2024-08-04', 131.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Dr Towers', 'Veterinarian fees', '2024-08-21', 216.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Dr Wilson', 'Veterinarian fees', '2024-08-26', 294.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'Kahoots Pet', 'Veterinarian fees', '2024-08-26', 11.43);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (111, 'TagWorks', 'Veterinarian fees', '2024-08-21', 23.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (112, 'Dr Arnold', 'Veterinarian fees', '2024-08-14', 170.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Jones', 'Veterinarian fees', '2024-09-16', 97.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Jones', 'Veterinarian fees', '2024-09-19', 250.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Dr Smith', 'Veterinarian fees', '2024-09-23', 214.63);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Pet Group Inc', 'Veterinarian fees', '2024-08-20', 66.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Petco', 'Veterinarian fees', '2024-08-14', 23.53);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Petco', 'Veterinarian fees', '2024-08-22', 34.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'Petco', 'Veterinarian fees', '2024-09-12', 6.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (113, 'TagWorks', 'Veterinarian fees', '2024-08-22', 21.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (115, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-09-02', 16.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Dr Jones', 'Veterinarian fees', '2024-08-16', 193.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (116, 'Unleashed by Petco', 'Veterinarian fees', '2024-08-23', 1.25);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (120, 'Dr Hudson', 'Veterinarian fees', '2024-08-21', 250.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-09-11', 69.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pawerica Pet Store', 'Veterinarian fees', '2024-09-11', 8.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'Pawerica Pet Store', 'Veterinarian fees', '2024-09-18', 20.9);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (122, 'TagWorks', 'Veterinarian fees', '2024-09-05', 0.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-10-04', 17.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Canine Learning Centers', 'Veterinarian fees', '2024-10-26', 7.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Arnold', 'Veterinarian fees', '2024-10-04', 271.75);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Dr Towers', 'Veterinarian fees', '2024-11-01', 200.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Petco', 'Veterinarian fees', '2024-11-01', 23.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (124, 'Unleashed by Petco', 'Veterinarian fees', '2024-10-02', 7.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Arnold', 'Veterinarian fees', '2024-11-26', 112.59);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Brown', 'Veterinarian fees', '2024-10-02', 153.58);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Brown', 'Veterinarian fees', '2024-12-08', 61.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Hudson', 'Veterinarian fees', '2024-09-19', 28.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Hudson', 'Veterinarian fees', '2024-10-09', 215.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Jones', 'Veterinarian fees', '2024-11-25', 254.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Rozenman', 'Veterinarian fees', '2024-10-02', 243.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Rozenman', 'Veterinarian fees', '2024-11-26', 5.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Smith', 'Veterinarian fees', '2024-10-02', 44.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Towers', 'Veterinarian fees', '2024-09-27', 166.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Dr Towers', 'Veterinarian fees', '2024-10-13', 219.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Pet Kingdom', 'Veterinarian fees', '2024-09-10', 9.14);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Veterinarian fees', '2024-10-07', 0.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Veterinarian fees', '2024-11-10', 23.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (126, 'Petco', 'Veterinarian fees', '2024-12-04', 9.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (128, 'TagWorks', 'Veterinarian fees', '2024-09-23', 19.26);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (130, 'Canine Learning Centers', 'Veterinarian fees', '2024-10-02', 16.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-11-02', 45.74);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Dr Rozenman', 'Veterinarian fees', '2024-10-09', 252.44);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (131, 'Petco', 'Veterinarian fees', '2024-10-12', 19.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Dr Brown', 'Veterinarian fees', '2024-10-07', 119.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (132, 'Pet Kingdom', 'Veterinarian fees', '2024-10-28', 16.36);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-10-24', 23.2);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (134, 'Decker''s Dog and Cat', 'Veterinarian fees', '2024-10-24', 2.61);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (138, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-10-23', 4.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (138, 'Dr Brown', 'Veterinarian fees', '2024-10-23', 293.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (139, 'Dr Arnold', 'Veterinarian fees', '2024-10-27', 216.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Canine Learning Centers', 'Veterinarian fees', '2024-11-25', 1.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (140, 'Dr Arnold', 'Veterinarian fees', '2025-01-15', 131.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (141, 'Dr Brown', 'Veterinarian fees', '2024-11-05', 133.39);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (143, 'Dr Arnold', 'Veterinarian fees', '2024-11-07', 197.91);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (145, 'Dr Jones', 'Veterinarian fees', '2024-11-14', 257.01);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Rozenman', 'Veterinarian fees', '2024-12-01', 177.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Smith', 'Veterinarian fees', '2024-11-18', 269.24);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Dr Wilson', 'Veterinarian fees', '2024-11-18', 141.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'Pawerica Pet Store', 'Veterinarian fees', '2024-11-18', 6.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (147, 'TagWorks', 'Veterinarian fees', '2024-12-01', 22.98);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Arrieros Pet Shop', 'Veterinarian fees', '2024-12-06', 33.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Jones', 'Veterinarian fees', '2025-01-05', 264.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Dr Rozenman', 'Veterinarian fees', '2024-11-25', 282.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pet Kingdom', 'Veterinarian fees', '2024-12-26', 11.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'Pet Kingdom', 'Veterinarian fees', '2025-01-16', 22.27);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (148, 'TagWorks', 'Veterinarian fees', '2024-12-06', 42.28);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Hudson', 'Veterinarian fees', '2024-12-25', 223.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Dr Smith', 'Veterinarian fees', '2024-12-09', 86.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (150, 'Pet Kingdom', 'Veterinarian fees', '2024-12-14', 4.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Arnold', 'Veterinarian fees', '2024-12-19', 192.11);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Brown', 'Veterinarian fees', '2024-12-19', 63.66);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Dr Wilson', 'Veterinarian fees', '2024-12-21', 109.16);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (151, 'Pet Kingdom', 'Veterinarian fees', '2024-12-22', 11.37);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (152, 'Kahoots Pet', 'Veterinarian fees', '2024-12-13', 20.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Canine Learning Centers', 'Veterinarian fees', '2024-12-14', 64.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (153, 'Kahoots Pet', 'Veterinarian fees', '2024-12-21', 32.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (154, 'Petco', 'Veterinarian fees', '2025-01-03', 3.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Canine Learning Centers', 'Veterinarian fees', '2024-12-22', 55.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (155, 'Petco', 'Veterinarian fees', '2024-12-22', 13.6);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (156, 'Decker''s Dog and Cat', 'Veterinarian fees', '2024-12-18', 30.69);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Dr Smith', 'Veterinarian fees', '2024-12-19', 47.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (157, 'Pet Group Inc', 'Veterinarian fees', '2024-12-20', 12.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Brown', 'Veterinarian fees', '2025-01-11', 75.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Dr Jones', 'Veterinarian fees', '2025-01-27', 88.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Kahoots Pet', 'Veterinarian fees', '2025-01-02', 4.33);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pawerica Pet Store', 'Veterinarian fees', '2025-01-19', 17.54);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pet Group Inc', 'Veterinarian fees', '2025-01-23', 63.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (159, 'Pet Group Inc', 'Veterinarian fees', '2025-02-03', 68.52);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Dr Brown', 'Veterinarian fees', '2025-01-03', 238.51);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (160, 'Dr Wilson', 'Veterinarian fees', '2025-01-03', 39.22);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Dr Arnold', 'Veterinarian fees', '2025-01-05', 122.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (161, 'Kahoots Pet', 'Veterinarian fees', '2025-01-10', 0.3);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Canine Learning Centers', 'Veterinarian fees', '2025-01-22', 63.81);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Hudson', 'Veterinarian fees', '2025-01-08', 187.95);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Towers', 'Veterinarian fees', '2025-01-14', 295.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Dr Wilson', 'Veterinarian fees', '2025-01-20', 72.21);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Kahoots Pet', 'Veterinarian fees', '2025-01-07', 50.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Kahoots Pet', 'Veterinarian fees', '2025-01-24', 12.96);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Pet Kingdom', 'Veterinarian fees', '2025-02-08', 4.57);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (162, 'Petco', 'Veterinarian fees', '2025-01-16', 16.13);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Kahoots Pet', 'Veterinarian fees', '2025-01-12', 69.38);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Pawerica Pet Store', 'Veterinarian fees', '2025-01-16', 9.46);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (163, 'Unleashed by Petco', 'Veterinarian fees', '2025-01-19', 62.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Kahoots Pet', 'Veterinarian fees', '2025-01-11', 9.65);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (164, 'Pawerica Pet Store', 'Veterinarian fees', '2025-01-21', 22.15);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Arrieros Pet Shop', 'Veterinarian fees', '2025-01-22', 8.77);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Dr Towers', 'Veterinarian fees', '2025-01-22', 67.84);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (167, 'Pet Kingdom', 'Veterinarian fees', '2025-01-24', 59.55);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (169, 'Dr Hudson', 'Veterinarian fees', '2025-01-17', 1.71);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'Dr Brown', 'Veterinarian fees', '2025-01-22', 94.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (170, 'TagWorks', 'Veterinarian fees', '2025-01-22', 24.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (171, 'Arrieros Pet Shop', 'Veterinarian fees', '2025-01-20', 3.35);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (171, 'Dr Jones', 'Veterinarian fees', '2025-01-20', 266.8);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Arnold', 'Veterinarian fees', '2025-02-20', 144.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Rozenman', 'Veterinarian fees', '2025-02-03', 45.47);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Dr Towers', 'Veterinarian fees', '2025-02-19', 51.72);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'TagWorks', 'Veterinarian fees', '2025-02-19', 19.29);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (174, 'Unleashed by Petco', 'Veterinarian fees', '2025-02-20', 12.73);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (177, 'Dr Hudson', 'Veterinarian fees', '2025-02-07', 42.78);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (177, 'Dr Wilson', 'Veterinarian fees', '2025-02-04', 5.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Decker''s Dog and Cat', 'Veterinarian fees', '2025-02-12', 65.7);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (182, 'Dr Brown', 'Veterinarian fees', '2025-02-14', 30.23);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Arnold', 'Veterinarian fees', '2025-02-16', 93.04);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Brown', 'Veterinarian fees', '2025-02-16', 242.62);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Brown', 'Veterinarian fees', '2025-02-26', 36.93);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Dr Towers', 'Veterinarian fees', '2025-02-14', 174.68);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'Kahoots Pet', 'Veterinarian fees', '2025-02-21', 11.03);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (183, 'TagWorks', 'Veterinarian fees', '2025-02-23', 33.17);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (184, 'Pawerica Pet Store', 'Veterinarian fees', '2025-02-22', 21.79);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (185, 'Kahoots Pet', 'Veterinarian fees', '2025-02-19', 41.99);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (185, 'TagWorks', 'Veterinarian fees', '2025-02-19', 25.56);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (187, 'Dr Arnold', 'Veterinarian fees', '2025-02-18', 225.42);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (188, 'Pet Kingdom', 'Veterinarian fees', '2025-02-25', 51.48);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (190, 'Dr Hudson', 'Veterinarian fees', '2025-02-27', 258.07);
INSERT INTO expense (dogID, vendor_name, category, expense_date, amount) VALUES (190, 'Pet Group Inc', 'Veterinarian fees', '2025-02-26', 74.63);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('abayless@rangreen.com', 1858816896, 4, 'Allene', 'Bayless', '4702 6-street', 'Sacramento', 'CA', 59495);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('adevreese@codehow.com', 1184615983, 3, 'Annelle', 'Devreese', '1779 8-street', 'Dallas', 'TX', 69722);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('afrankel@plexzap.com', 6311142121, 4, 'Alex', 'Frankel', '1022 10-street', 'Irvine', 'NC', 98148);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ajuhas@year-job.com', 549819957, 4, 'Ahmed', 'Juhas', '147 12-street', 'Greensboro', 'NJ', 60859);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('akampa@zumgoity.com', 4656996752, 3, 'Alecia', 'Kampa', '5815 16-street', 'Stockton', 'OH', 20038);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('amai@openlane.com', 3915729799, 4, 'Albina', 'Mai', '6402 7-street', 'Irvine', 'NC', 16724);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('amirafuentes@inity.com', 7246136902, 3, 'Arthur', 'Mirafuentes', '7271 10-street', 'Baltimore', 'OK', 82373);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('apoullion@year-job.com', 6133181891, 3, 'Aliza', 'Poullion', '1018 7-street', 'Greensboro', 'NJ', 25874);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('aradde@hottechi.com', 8838940722, 4, 'Albina', 'Radde', '3937 2-street', 'Boise City', 'VA', 91253);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('asilvestrini@bioholding.com', 8941625714, 3, 'Angella', 'Silvestrini', '7135 16-street', 'Milwaukee', 'NM', 16976);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('asweigard@kinnamplus.com', 5792911269, 4, 'Abel', 'Sweigard', '5507 17-street', 'Madison', 'TX', 37894);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('avillanueva@funholding.com', 3106979904, 4, 'Art', 'Villanueva', '7144 4-street', 'Cincinnati', 'MN', 59869);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('bcorbley@isdom.com', 508659064, 4, 'Barbra', 'Corbley', '9719 5-street', 'Detroit', 'MI', 2259);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('bhamilton@kan-code.com', 9157430255, 4, 'Benton', 'Hamilton', '4044 6-street', 'Chesapeake', 'AZ', 9268);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('bkoppinger@kan-code.com', 1122477649, 4, 'Benedict', 'Koppinger', '9360 12-street', 'Albuquerque', 'AZ', 54420);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('blindall@gogozoom.com', 4433941616, 5, 'Benton', 'Lindall', '424 13-street', 'Las Vegas', 'WI', 46779);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('bpatak@ganjaflex.com', 9556821151, 4, 'Belen', 'Patak', '279 21-street', 'Toledo', 'NC', 47000);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('bsamu@labdrill.com', 6249483813, 1, 'Bernardine', 'Samu', '1773 2-street', 'Albuquerque', 'AZ', 5137);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cauffrey@lexiqvolax.com', 2121773336, 1, 'Ceola', 'Auffrey', '5021 12-street', 'Houston', 'TX', 23964);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cbenimadho@newex.com', 5214569084, 4, 'Chauncey', 'Benimadho', '9541 13-street', 'Jersey City', 'CA', 21515);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cbreland@sumace.com', 9317802029, 4, 'Cherry', 'Breland', '6821 18-street', 'Raleigh', 'FL', 14584);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ccanlas@labdrill.com', 6908583441, 3, 'Caprice', 'Canlas', '7044 16-street', 'Cleveland', 'KS', 53850);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cgehrett@codehow.com', 1056870207, 4, 'Colette', 'Gehrett', '1116 4-street', 'Oakland', 'MN', 58392);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cgellinger@silis.com', 3803135216, 3, 'Carmela', 'Gellinger', '5870 1-street', 'Henderson', 'NE', 97682);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('chudnall@zoomit.com', 614167913, 3, 'Catalina', 'Hudnall', '2178 2-street', 'Colorado Springs', 'NE', 69936);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cpaskin@mathtouch.com', 7447858316, 3, 'Caprice', 'Paskin', '9653 15-street', 'Chula Vista', 'IN', 26251);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cshinko@scotfind.com', 8174766788, 5, 'Carmen', 'Shinko', '8293 14-street', 'Boston', 'TN', 79595);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cslayton@openlane.com', 5269238933, 3, 'Cecil', 'Slayton', '4847 16-street', 'Chicago', 'IL', 93504);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ctheodorov@groovestreet.com', 300408722, 4, 'Chau', 'Theodorov', '8223 19-street', 'Fort Wayne', 'FL', 78627);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cvillanueva@isdom.com', 9687118467, 1, 'Casie', 'Villanueva', '143 6-street', 'Chula Vista', 'IN', 33655);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cvonasek@stanredtax.com', 454869267, 4, 'Caprice', 'Vonasek', '7931 7-street', 'Indianapolis', 'IN', 99225);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cwalthall@year-job.com', 757282507, 5, 'Cordelia', 'Walthall', '8410 6-street', 'Jersey City', 'CA', 15889);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('cwenner@betatech.com', 3863943669, 4, 'Cyril', 'Wenner', '5232 12-street', 'Newark', 'TX', 9638);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('darias@treequote.com', 4426037192, 2, 'Dalene', 'Arias', '9040 4-street', 'Reno', 'VA', 58651);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('dblunk@dalttechnology.com', 6801289414, 3, 'Devorah', 'Blunk', '2818 4-street', 'Lubbock', 'CA', 47314);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('dfelger@faxquote.com', 9277101645, 4, 'Donette', 'Felger', '7524 21-street', 'Lexington-Fayette', 'PA', 61340);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('dhoffis@zotware.com', 2355966037, 3, 'Dean', 'Hoffis', '1439 18-street', 'Lubbock', 'CA', 53777);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('dlueckenbach@opentech.com', 2156704547, 4, 'Dierdre', 'Lueckenbach', '6362 14-street', 'Lincoln', 'NY', 60214);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('dmoyd@labdrill.com', 4693228016, 4, 'Dorthy', 'Moyd', '5887 16-street', 'Mesa', 'VA', 78558);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('dnestle@treequote.com', 3685765681, 4, 'Diane', 'Nestle', '5599 5-street', 'Denver', 'CO', 56563);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('drestrepo@xx-zobam.com', 1429348905, 3, 'Delisa', 'Restrepo', '8036 9-street', 'North Las Vegas', 'CA', 28095);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('drulapaugh@mathtouch.com', 9488675087, 1, 'Derick', 'Rulapaugh', '1903 16-street', 'Dallas', 'TX', 22120);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('dstaback@warephase.com', 1631922359, 5, 'Dalene', 'Staback', '8489 15-street', 'Austin', 'TX', 92242);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ebaltimore@singletechno.com', 1728361485, 2, 'Elouise', 'Baltimore', '2306 12-street', 'Detroit', 'MI', 85397);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('eburnard@mathtouch.com', 9353320487, 4, 'Eden', 'Burnard', '7754 16-street', 'Charlotte', 'NC', 89983);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ecanlas@conecom.com', 2101259317, 5, 'Ezekiel', 'Canlas', '3817 11-street', 'Anaheim', 'CA', 22421);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ecoyier@hatfan.com', 285037145, 3, 'Eladia', 'Coyier', '603 17-street', 'Las Vegas', 'WI', 60568);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('erowling@j-texon.com', 6850141056, 3, 'Erick', 'Rowling', '7582 7-street', 'Fort Wayne', 'FL', 97639);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('esergi@cancity.com', 821844060, 3, 'Eladia', 'Sergi', '9640 11-street', 'Greensboro', 'NJ', 73397);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('fankeny@domzoom.com', 1323733433, 3, 'Fabiola', 'Ankeny', '1004 8-street', 'Miami', 'CA', 46659);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ffelger@plusstrip.com', 7829441645, 4, 'Francine', 'Felger', '6796 11-street', 'Buffalo', 'NJ', 32520);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ffritz@zumgoity.com', 1674988389, 2, 'Felicidad', 'Fritz', '8038 6-street', 'Wichita', 'TX', 47216);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('fshinko@inity.com', 509031678, 4, 'Fabiola', 'Shinko', '8936 18-street', 'Irvine', 'NC', 99269);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('fvarriano@mathtouch.com', 9745941406, 4, 'Fatima', 'Varriano', '244 2-street', 'Portland', 'NV', 14295);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('gangalich@rundofase.com', 8238717382, 3, 'Georgene', 'Angalich', '3206 4-street', 'Wichita', 'TX', 14493);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('gcousey@gogozoom.com', 1779487832, 3, 'Gearldine', 'Cousey', '6177 13-street', 'Orlando', 'FL', 10818);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('gcousey@groovestreet.com', 6762288681, 5, 'Gertude', 'Cousey', '3171 20-street', 'Nashville-Davidson', 'MD', 86587);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('giturbide@rangreen.com', 6421927893, 6, 'Glory', 'Iturbide', '2186 16-street', 'Minneapolis', 'OK', 8761);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('gjurney@rantouch.com', 2842761166, 5, 'Goldie', 'Jurney', '7927 13-street', 'Milwaukee', 'NM', 43443);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('gschnitzler@ron-tech.com', 7719104026, 4, 'Garry', 'Schnitzler', '2088 19-street', 'Sacramento', 'CA', 24313);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('hhellickson@isdom.com', 5930662838, 2, 'Haydee', 'Hellickson', '5164 21-street', 'Reno', 'VA', 63202);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('hkardas@dambase.com', 5638637354, 4, 'Helene', 'Kardas', '8592 4-street', 'Virginia Beach', 'GA', 7679);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('hmartabano@fasehatice.com', 4691068097, 3, 'Helaine', 'Martabano', '7051 13-street', 'Arlington', 'LA', 79787);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('hvocelka@yearin.com', 3781826175, 4, 'Hermila', 'Vocelka', '9055 18-street', 'San Diego', 'CA', 54330);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('imcnease@j-texon.com', 4708877275, 9, 'Iluminada', 'Mcnease', '3349 2-street', 'Reno', 'VA', 59919);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jcallaro@blackzim.com', 754134790, 5, 'Jesusa', 'Callaro', '4916 20-street', 'San Diego', 'CA', 90497);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jkitty@nam-zim.com', 1448589066, 2, 'Janey', 'Kitty', '5411 5-street', 'Chicago', 'IL', 15967);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jkusko@bioplex.com', 7813659453, 5, 'Jovita', 'Kusko', '9561 11-street', 'Oakland', 'MN', 36823);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jleinenbach@singletechno.com', 3150405092, 4, 'Judy', 'Leinenbach', '4103 9-street', 'Long Beach', 'MO', 89455);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jmoyd@bioholding.com', 4780905895, 4, 'Jennie', 'Moyd', '1805 15-street', 'Houston', 'TX', 76328);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jperez@groovestreet.com', 1187497771, 4, 'Junita', 'Perez', '5437 3-street', 'Irving', 'AZ', 89091);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jtoyama@hottechi.com', 1308155511, 5, 'Jacqueline', 'Toyama', '9345 14-street', 'New Orleans', 'CA', 40609);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jyglesias@betasoloin.com', 4338089669, 4, 'Jesusa', 'Yglesias', '2251 5-street', 'Boise City', 'VA', 82523);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jyglesias@finjob.com', 4143321357, 4, 'Joseph', 'Yglesias', '5866 13-street', 'Reno', 'VA', 67453);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('jyglesias@xx-zobam.com', 7577634102, 4, 'Jaclyn', 'Yglesias', '237 5-street', 'St. Louis', 'CA', 43201);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('kagramonte@plexzap.com', 561527519, 3, 'Kayleigh', 'Agramonte', '5226 6-street', 'Sacramento', 'CA', 63323);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('kblackwood@kan-code.com', 6783370062, 4, 'Karl', 'Blackwood', '5277 10-street', 'Boston', 'TN', 55735);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('kcaiafa@ganjaflex.com', 838982647, 4, 'Kate', 'Caiafa', '5674 20-street', 'Santa Ana', 'MO', 44676);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('kdemesa@scottech.com', 550384202, 4, 'Kate', 'Demesa', '8860 10-street', 'Omaha', 'NC', 35873);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('kstockham@zoomit.com', 3101242112, 3, 'Kimberlie', 'Stockham', '8137 11-street', 'Oakland', 'MN', 55300);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lbatman@newex.com', 3698396406, 1, 'Leatha', 'Batman', '1980 6-street', 'Reno', 'VA', 94963);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lbiddy@toughzap.com', 189723374, 3, 'Lucina', 'Biddy', '2824 3-street', 'Tampa', 'HI', 97032);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lbrachle@plexzap.com', 8934885606, 3, 'Lindsey', 'Brachle', '2795 3-street', 'Louisville/Jefferson County', 'OR', 40528);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lfrankel@betatech.com', 1347199209, 4, 'Lynelle', 'Frankel', '6416 15-street', 'New York', 'NY', 49667);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lgillaspie@zencorporation.com', 7169318809, 4, 'Lavonna', 'Gillaspie', '6374 8-street', 'Arlington', 'LA', 14248);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lhamilton@donware.com', 734242672, 4, 'Lauran', 'Hamilton', '7069 14-street', 'Detroit', 'MI', 51961);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lisaacs@scottech.com', 8371931174, 4, 'Laurel', 'Isaacs', '4393 7-street', 'Chula Vista', 'IN', 39859);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lmallett@sonron.com', 6353751110, 2, 'Lonna', 'Mallett', '2123 8-street', 'Atlanta', 'CO', 64922);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lmonarrez@doncon.com', 8456658067, 2, 'Lettie', 'Monarrez', '1094 6-street', 'Oakland', 'MN', 46644);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lpinilla@condax.com', 3409434682, 3, 'Loren', 'Pinilla', '6784 19-street', 'Chesapeake', 'AZ', 51116);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lshinko@plussunin.com', 9628504210, 2, 'Lavera', 'Shinko', '4748 21-street', 'Greensboro', 'NJ', 32233);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lthreets@singletechno.com', 2866969238, 4, 'Leota', 'Threets', '1603 1-street', 'Chicago', 'IL', 93298);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lworlds@hottechi.com', 5105185490, 4, 'Lemuel', 'Worlds', '2359 17-street', 'Plano', 'NV', 95319);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('lwrinkles@streethex.com', 626820397, 4, 'Larae', 'Wrinkles', '7667 13-street', 'Indianapolis', 'IN', 98342);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('maquas@cancity.com', 7453646809, 8, 'Mireya', 'Aquas', '694 21-street', 'Lincoln', 'NY', 76876);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('marias@zotware.com', 4317079269, 4, 'Minna', 'Arias', '4175 4-street', 'Fremont', 'ID', 44485);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mchesterfield@plussunin.com', 9401878033, 4, 'My', 'Chesterfield', '1325 8-street', 'Pittsburgh', 'AK', 7950);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mclaucherty@zoomit.com', 4458979593, 4, 'Markus', 'Claucherty', '3548 10-street', 'Minneapolis', 'OK', 55451);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mcloney@xx-holding.com', 6629042151, 3, 'Merissa', 'Cloney', '6454 18-street', 'Philadelphia', 'PA', 40459);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mgillaspie@cancity.com', 8248595509, 3, 'Maile', 'Gillaspie', '8859 7-street', 'Glendale', 'TX', 19124);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mmauson@zathunicon.com', 1522846875, 2, 'Minna', 'Mauson', '215 18-street', 'Gilbert', 'LA', 81474);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mpaa@zotware.com', 3784160350, 3, 'Ma', 'Paa', '2314 8-street', 'Nashville-Davidson', 'MD', 45259);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mpalaspas@iselectrics.com', 4184402236, 4, 'Markus', 'Palaspas', '9487 7-street', 'Cleveland', 'KS', 17954);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mriden@finhigh.com', 2358458859, 3, 'Mitsue', 'Riden', '9291 4-street', 'Boise City', 'VA', 26431);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mvanheusen@conecom.com', 9551340748, 4, 'Mireya', 'Vanheusen', '5318 7-street', 'Portland', 'NV', 75851);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('mwenner@scotfind.com', 237558919, 3, 'Moon', 'Wenner', '6325 3-street', 'Fort Worth', 'TX', 7132);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ndelasancha@scotfind.com', 2771198994, 4, 'Nana', 'Delasancha', '300 21-street', 'Seattle', 'WA', 93325);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('nharnos@konex.com', 3448674998, 3, 'Nan', 'Harnos', '4291 12-street', 'Oklahoma City', 'KY', 69921);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('nsuell@kinnamplus.com', 2829573406, 4, 'Nan', 'Suell', '3058 2-street', 'Plano', 'NV', 61988);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ntagala@j-texon.com', 6633725722, 4, 'Natalie', 'Tagala', '2234 7-street', 'Colorado Springs', 'NE', 81205);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('omulqueen@donware.com', 864356658, 4, 'Olive', 'Mulqueen', '284 15-street', 'Atlanta', 'CO', 58952);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('pbevelacqua@iselectrics.com', 361925374, 3, 'Pamella', 'Bevelacqua', '7720 15-street', 'Chandler', 'TX', 4693);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('qcantres@lexiqvolax.com', 1133701359, 3, 'Quentin', 'Cantres', '9835 16-street', 'Albuquerque', 'AZ', 819);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('rhoa@iselectrics.com', 1871705214, 4, 'Rickie', 'Hoa', '6966 12-street', 'Memphis', 'TN', 71514);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('rmonarrez@opentech.com', 7916407234, 2, 'Rhea', 'Monarrez', '3730 13-street', 'Scottsdale', 'NV', 89050);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('rslusarski@singletechno.com', 1636040546, 4, 'Rhea', 'Slusarski', '5501 1-street', 'Baltimore', 'OK', 14490);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('scloney@konmatfix.com', 2940465834, 5, 'Samira', 'Cloney', '131 16-street', 'Laredo', 'VA', 16829);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('sfeichtner@donware.com', 5212187117, 1, 'Serina', 'Feichtner', '9741 15-street', 'Austin', 'TX', 79965);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('sfeichtner@stanredtax.com', 842700922, 9, 'Stephane', 'Feichtner', '3532 5-street', 'Plano', 'NV', 56958);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('sgudroe@cancity.com', 1780788415, 4, 'Sylvie', 'Gudroe', '6299 12-street', 'Anchorage', 'CA', 16);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('sheintzman@blackzim.com', 1404216556, 4, 'Sheridan', 'Heintzman', '6992 4-street', 'Honolulu', 'CO', 59154);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('snachor@xx-holding.com', 9481709095, 4, 'Shawna', 'Nachor', '703 20-street', 'Fort Worth', 'TX', 58757);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('spawlowicz@warephase.com', 5550984454, 2, 'Simona', 'Pawlowicz', '5099 17-street', 'St. Louis', 'CA', 11358);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('srowling@j-texon.com', 407203185, 3, 'Sylvia', 'Rowling', '5749 15-street', 'Anchorage', 'CA', 4338);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ssaras@sumace.com', 5677681585, 4, 'Sharika', 'Saras', '6054 1-street', 'Cleveland', 'KS', 99374);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('sshealy@statholdings.com', 9186078478, 2, 'Sue', 'Shealy', '189 14-street', 'Colorado Springs', 'NE', 18776);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tasar@stanredtax.com', 5211509221, 4, 'Tiera', 'Asar', '8763 21-street', 'Oklahoma City', 'KY', 90429);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tbutt@blackzim.com', 6368127228, 5, 'Tiffiny', 'Butt', '2431 3-street', 'Mesa', 'VA', 26201);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tdelasancha@warephase.com', 4773053477, 3, 'Tiffiny', 'Delasancha', '3212 1-street', 'Portland', 'NV', 69561);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('teroman@iselectrics.com', 228277713, 3, 'Teri', 'Eroman', '4636 12-street', 'Irvine', 'NC', 34186);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tfelger@j-texon.com', 9600291206, 4, 'Tonette', 'Felger', '41 18-street', 'Milwaukee', 'NM', 37803);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tgotter@treequote.com', 1289962006, 3, 'Teddy', 'Gotter', '9943 1-street', 'Lincoln', 'NY', 9343);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tharnos@donquadtech.com', 2238915381, 3, 'Tracey', 'Harnos', '538 8-street', 'Dallas', 'TX', 57816);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('thoopengardner@conecom.com', 1654011513, 3, 'Terrilyn', 'Hoopengardner', '1946 17-street', 'Long Beach', 'MO', 83442);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tkitzman@dambase.com', 9906905083, 4, 'Tyra', 'Kitzman', '1155 6-street', 'Kansas City', 'AZ', 71797);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tmirafuentes@statholdings.com', 1638500521, 3, 'Theola', 'Mirafuentes', '4368 9-street', 'Denver', 'CO', 63593);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tpalaspas@hatfan.com', 3972596135, 1, 'Tiffiny', 'Palaspas', '2566 17-street', 'Lincoln', 'NY', 45624);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('tsawchuk@condax.com', 690497079, 4, 'Tyra', 'Sawchuk', '1174 11-street', 'Madison', 'TX', 80630);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('ttomasulo@dambase.com', 2714886282, 3, 'Tawna', 'Tomasulo', '6140 3-street', 'Atlanta', 'CO', 51649);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('vauffrey@groovestreet.com', 915824730, 3, 'Virgie', 'Auffrey', '8887 12-street', 'Madison', 'TX', 18161);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('vdiestel@green-plus.com', 2349069526, 3, 'Virgie', 'Diestel', '7346 18-street', 'San Antonio', 'TX', 66888);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('vkorando@rantouch.com', 9702334510, 4, 'Virgie', 'Korando', '9844 7-street', 'Austin', 'TX', 20340);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('wfelger@sumace.com', 1351656195, 3, 'Wilda', 'Felger', '6167 17-street', 'Omaha', 'NC', 98366);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('wnestle@bioholding.com', 4740604079, 2, 'Winfred', 'Nestle', '7001 7-street', 'Miami', 'CA', 77871);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('wsimilton@xx-holding.com', 6669896665, 6, 'Willodean', 'Similton', '3123 17-street', 'Reno', 'VA', 7335);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('xmcnease@groovestreet.com', 1795394285, 4, 'Xochitl', 'Mcnease', '3080 13-street', 'Houston', 'TX', 34847);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('xnunlee@gogozoom.com', 5807163154, 4, 'Xochitl', 'Nunlee', '8931 6-street', 'Phoenix', 'AZ', 74966);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('yvonasek@yearin.com', 7458488111, 3, 'Youlanda', 'Vonasek', '4825 19-street', 'Santa Ana', 'MO', 28988);
INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES ('zmyricks@isdom.com', 1938159382, 3, 'Zona', 'Myricks', '5025 2-street', 'Chula Vista', 'IN', 37737);
INSERT INTO adoptionapplication (email, application_date) VALUES ('abayless@rangreen.com', '2023-10-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('abayless@rangreen.com', '2024-09-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('abayless@rangreen.com', '2024-10-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('abayless@rangreen.com', '2024-12-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('abayless@rangreen.com', '2025-01-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('abayless@rangreen.com', '2025-03-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('adevreese@codehow.com', '2024-01-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('adevreese@codehow.com', '2024-11-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('afrankel@plexzap.com', '2024-04-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('afrankel@plexzap.com', '2024-05-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('afrankel@plexzap.com', '2024-10-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('afrankel@plexzap.com', '2024-11-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2023-11-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-02-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-03-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-03-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-04-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-06-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-06-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-07-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-07-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2024-11-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2025-02-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2025-03-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ajuhas@year-job.com', '2025-03-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2023-10-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2023-12-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2023-12-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2024-01-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2024-01-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2024-02-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2024-03-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2024-10-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('akampa@zumgoity.com', '2024-10-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amai@openlane.com', '2023-10-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amai@openlane.com', '2024-04-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amai@openlane.com', '2024-05-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amai@openlane.com', '2024-06-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amai@openlane.com', '2024-08-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amai@openlane.com', '2024-12-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amirafuentes@inity.com', '2024-04-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amirafuentes@inity.com', '2024-06-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('amirafuentes@inity.com', '2024-11-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('apoullion@year-job.com', '2024-04-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('apoullion@year-job.com', '2024-06-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('apoullion@year-job.com', '2024-06-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('apoullion@year-job.com', '2024-11-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-01-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-03-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-05-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-05-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-08-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-08-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-09-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-09-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2024-12-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('aradde@hottechi.com', '2025-01-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asilvestrini@bioholding.com', '2024-03-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asilvestrini@bioholding.com', '2024-04-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asilvestrini@bioholding.com', '2024-08-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asilvestrini@bioholding.com', '2024-10-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asilvestrini@bioholding.com', '2025-02-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asilvestrini@bioholding.com', '2025-02-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2023-11-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2024-03-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2024-05-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2024-05-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2024-05-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2024-06-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2024-06-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2024-09-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2025-01-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('asweigard@kinnamplus.com', '2025-03-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('avillanueva@funholding.com', '2024-06-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('avillanueva@funholding.com', '2024-08-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('avillanueva@funholding.com', '2024-09-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('avillanueva@funholding.com', '2024-09-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('avillanueva@funholding.com', '2024-12-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bcorbley@isdom.com', '2023-11-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bcorbley@isdom.com', '2024-01-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bcorbley@isdom.com', '2024-06-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bcorbley@isdom.com', '2024-08-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bcorbley@isdom.com', '2024-10-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2023-10-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2024-02-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2024-02-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2024-05-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2024-06-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2024-08-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2024-09-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2024-10-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2024-12-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2025-01-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bhamilton@kan-code.com', '2025-03-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bkoppinger@kan-code.com', '2023-10-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bkoppinger@kan-code.com', '2024-05-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bkoppinger@kan-code.com', '2024-06-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bkoppinger@kan-code.com', '2024-09-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bkoppinger@kan-code.com', '2024-10-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2023-10-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2023-10-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2023-12-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2024-01-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2024-03-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2024-05-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2024-06-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2024-08-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2025-01-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2025-01-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('blindall@gogozoom.com', '2025-01-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bpatak@ganjaflex.com', '2023-10-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bpatak@ganjaflex.com', '2024-03-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bpatak@ganjaflex.com', '2024-10-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bpatak@ganjaflex.com', '2025-02-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bpatak@ganjaflex.com', '2025-02-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bsamu@labdrill.com', '2023-11-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bsamu@labdrill.com', '2024-02-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bsamu@labdrill.com', '2024-05-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bsamu@labdrill.com', '2024-09-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('bsamu@labdrill.com', '2024-09-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cauffrey@lexiqvolax.com', '2024-03-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cauffrey@lexiqvolax.com', '2024-08-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cauffrey@lexiqvolax.com', '2024-09-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cauffrey@lexiqvolax.com', '2025-03-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbenimadho@newex.com', '2023-10-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbenimadho@newex.com', '2023-12-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbenimadho@newex.com', '2024-01-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbenimadho@newex.com', '2024-01-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbenimadho@newex.com', '2024-02-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbenimadho@newex.com', '2024-06-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbenimadho@newex.com', '2024-10-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbenimadho@newex.com', '2024-11-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbreland@sumace.com', '2023-11-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbreland@sumace.com', '2024-04-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbreland@sumace.com', '2024-10-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbreland@sumace.com', '2024-12-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbreland@sumace.com', '2025-01-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbreland@sumace.com', '2025-01-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cbreland@sumace.com', '2025-02-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ccanlas@labdrill.com', '2023-11-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ccanlas@labdrill.com', '2024-01-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ccanlas@labdrill.com', '2024-08-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ccanlas@labdrill.com', '2024-11-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ccanlas@labdrill.com', '2025-01-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ccanlas@labdrill.com', '2025-01-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ccanlas@labdrill.com', '2025-02-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cgehrett@codehow.com', '2024-03-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cgehrett@codehow.com', '2025-02-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cgehrett@codehow.com', '2025-03-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cgellinger@silis.com', '2023-10-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cgellinger@silis.com', '2023-12-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cgellinger@silis.com', '2023-12-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cgellinger@silis.com', '2024-10-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cgellinger@silis.com', '2024-12-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('chudnall@zoomit.com', '2023-11-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('chudnall@zoomit.com', '2024-01-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('chudnall@zoomit.com', '2024-04-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('chudnall@zoomit.com', '2024-07-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('chudnall@zoomit.com', '2024-10-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('chudnall@zoomit.com', '2025-01-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('chudnall@zoomit.com', '2025-01-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cpaskin@mathtouch.com', '2023-11-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cpaskin@mathtouch.com', '2024-01-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cpaskin@mathtouch.com', '2024-04-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cpaskin@mathtouch.com', '2024-08-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cpaskin@mathtouch.com', '2024-10-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cpaskin@mathtouch.com', '2024-10-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cshinko@scotfind.com', '2024-03-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cshinko@scotfind.com', '2024-04-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cshinko@scotfind.com', '2024-08-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cshinko@scotfind.com', '2025-01-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cshinko@scotfind.com', '2025-02-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cshinko@scotfind.com', '2025-02-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cslayton@openlane.com', '2023-10-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cslayton@openlane.com', '2024-03-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cslayton@openlane.com', '2024-06-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cslayton@openlane.com', '2024-11-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ctheodorov@groovestreet.com', '2024-03-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ctheodorov@groovestreet.com', '2024-06-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ctheodorov@groovestreet.com', '2024-10-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ctheodorov@groovestreet.com', '2024-11-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ctheodorov@groovestreet.com', '2025-01-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ctheodorov@groovestreet.com', '2025-03-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ctheodorov@groovestreet.com', '2025-03-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2023-12-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-02-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-02-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-06-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-07-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-07-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-08-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-09-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-12-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvillanueva@isdom.com', '2024-12-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2023-11-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2024-03-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2024-07-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2024-08-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2024-08-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2024-10-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2024-10-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2024-11-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2024-12-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cvonasek@stanredtax.com', '2025-03-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwalthall@year-job.com', '2024-01-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwalthall@year-job.com', '2024-01-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwalthall@year-job.com', '2024-01-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwalthall@year-job.com', '2024-08-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwalthall@year-job.com', '2024-12-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwalthall@year-job.com', '2025-01-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwenner@betatech.com', '2023-10-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwenner@betatech.com', '2024-01-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwenner@betatech.com', '2024-03-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwenner@betatech.com', '2024-05-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwenner@betatech.com', '2025-01-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwenner@betatech.com', '2025-03-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwenner@betatech.com', '2025-03-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('cwenner@betatech.com', '2025-03-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2023-10-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2023-12-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2024-03-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2024-06-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2024-09-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2024-09-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2024-10-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2025-02-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2025-02-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('darias@treequote.com', '2025-02-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dblunk@dalttechnology.com', '2023-11-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dblunk@dalttechnology.com', '2024-02-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dblunk@dalttechnology.com', '2024-04-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dblunk@dalttechnology.com', '2024-10-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dblunk@dalttechnology.com', '2024-10-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dblunk@dalttechnology.com', '2024-12-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dblunk@dalttechnology.com', '2025-01-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2023-12-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2023-12-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2023-12-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2023-12-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2024-02-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2024-03-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2024-09-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2024-11-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2025-02-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dfelger@faxquote.com', '2025-02-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2023-10-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-03-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-03-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-04-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-05-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-06-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-07-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-08-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-08-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2024-12-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dhoffis@zotware.com', '2025-02-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dlueckenbach@opentech.com', '2024-03-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dlueckenbach@opentech.com', '2024-08-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dlueckenbach@opentech.com', '2024-10-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dlueckenbach@opentech.com', '2024-11-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dlueckenbach@opentech.com', '2024-12-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dlueckenbach@opentech.com', '2025-02-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dmoyd@labdrill.com', '2023-12-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dmoyd@labdrill.com', '2024-07-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dmoyd@labdrill.com', '2024-08-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dmoyd@labdrill.com', '2025-01-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dmoyd@labdrill.com', '2025-02-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2023-10-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2024-02-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2024-04-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2024-06-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2024-07-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2024-09-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2024-12-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2025-01-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2025-03-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dnestle@treequote.com', '2025-03-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drestrepo@xx-zobam.com', '2023-12-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drestrepo@xx-zobam.com', '2024-04-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drestrepo@xx-zobam.com', '2024-10-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drestrepo@xx-zobam.com', '2024-11-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2023-11-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2023-11-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2024-02-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2024-03-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2024-07-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2024-10-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2024-11-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2025-01-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('drulapaugh@mathtouch.com', '2025-01-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dstaback@warephase.com', '2023-11-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dstaback@warephase.com', '2024-04-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dstaback@warephase.com', '2024-05-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dstaback@warephase.com', '2024-05-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dstaback@warephase.com', '2024-07-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('dstaback@warephase.com', '2024-08-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ebaltimore@singletechno.com', '2023-10-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ebaltimore@singletechno.com', '2023-11-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ebaltimore@singletechno.com', '2024-05-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ebaltimore@singletechno.com', '2024-06-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ebaltimore@singletechno.com', '2024-09-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ebaltimore@singletechno.com', '2024-12-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2023-10-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2023-11-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2023-11-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2024-01-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2024-03-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2024-04-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2024-05-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2024-08-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('eburnard@mathtouch.com', '2024-12-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecanlas@conecom.com', '2023-10-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecanlas@conecom.com', '2024-02-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecanlas@conecom.com', '2024-02-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecanlas@conecom.com', '2024-07-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecanlas@conecom.com', '2024-07-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecanlas@conecom.com', '2024-08-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecanlas@conecom.com', '2024-12-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecoyier@hatfan.com', '2023-11-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecoyier@hatfan.com', '2024-05-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecoyier@hatfan.com', '2024-09-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ecoyier@hatfan.com', '2024-11-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('erowling@j-texon.com', '2024-04-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('erowling@j-texon.com', '2024-07-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('erowling@j-texon.com', '2024-08-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('erowling@j-texon.com', '2024-09-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('erowling@j-texon.com', '2024-09-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('erowling@j-texon.com', '2025-01-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('erowling@j-texon.com', '2025-02-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('erowling@j-texon.com', '2025-03-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('esergi@cancity.com', '2023-11-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('esergi@cancity.com', '2024-01-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('esergi@cancity.com', '2024-04-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('esergi@cancity.com', '2024-08-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('esergi@cancity.com', '2024-10-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2023-10-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2023-11-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-02-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-03-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-03-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-04-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-05-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-06-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-07-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-08-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-09-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2024-10-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fankeny@domzoom.com', '2025-02-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffelger@plusstrip.com', '2023-11-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2023-10-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2023-11-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2024-01-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2024-02-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2024-03-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2024-03-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2024-04-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2024-07-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2024-09-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2024-12-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ffritz@zumgoity.com', '2025-01-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fshinko@inity.com', '2023-10-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fshinko@inity.com', '2023-12-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fshinko@inity.com', '2024-09-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fshinko@inity.com', '2024-09-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fshinko@inity.com', '2024-11-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fshinko@inity.com', '2024-11-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fvarriano@mathtouch.com', '2023-10-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fvarriano@mathtouch.com', '2023-12-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fvarriano@mathtouch.com', '2024-02-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fvarriano@mathtouch.com', '2024-03-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fvarriano@mathtouch.com', '2024-03-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fvarriano@mathtouch.com', '2025-01-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fvarriano@mathtouch.com', '2025-02-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('fvarriano@mathtouch.com', '2025-03-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gangalich@rundofase.com', '2024-02-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gangalich@rundofase.com', '2024-11-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gangalich@rundofase.com', '2024-12-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gangalich@rundofase.com', '2025-01-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@gogozoom.com', '2023-11-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@gogozoom.com', '2024-06-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@gogozoom.com', '2024-08-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@gogozoom.com', '2024-10-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@gogozoom.com', '2025-03-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2023-10-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2023-10-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2023-11-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2023-12-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2023-12-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2024-01-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2024-02-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2024-04-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2024-06-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gcousey@groovestreet.com', '2024-11-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('giturbide@rangreen.com', '2024-01-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('giturbide@rangreen.com', '2024-09-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('giturbide@rangreen.com', '2024-12-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('giturbide@rangreen.com', '2024-12-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gjurney@rantouch.com', '2023-12-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gjurney@rantouch.com', '2024-04-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gjurney@rantouch.com', '2024-07-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gjurney@rantouch.com', '2024-08-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gjurney@rantouch.com', '2024-09-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gjurney@rantouch.com', '2024-10-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gschnitzler@ron-tech.com', '2024-03-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gschnitzler@ron-tech.com', '2024-07-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gschnitzler@ron-tech.com', '2024-09-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('gschnitzler@ron-tech.com', '2025-03-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hhellickson@isdom.com', '2023-12-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hhellickson@isdom.com', '2024-02-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hhellickson@isdom.com', '2024-04-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hhellickson@isdom.com', '2024-05-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hhellickson@isdom.com', '2024-05-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hhellickson@isdom.com', '2024-10-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hhellickson@isdom.com', '2024-12-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hkardas@dambase.com', '2023-11-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hkardas@dambase.com', '2023-12-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hkardas@dambase.com', '2024-04-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2023-10-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2023-12-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2023-12-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2024-01-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2024-03-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2024-04-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2024-04-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2024-04-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hmartabano@fasehatice.com', '2025-03-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hvocelka@yearin.com', '2023-10-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hvocelka@yearin.com', '2024-05-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hvocelka@yearin.com', '2024-07-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('hvocelka@yearin.com', '2025-02-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('imcnease@j-texon.com', '2024-03-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('imcnease@j-texon.com', '2024-05-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('imcnease@j-texon.com', '2024-05-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('imcnease@j-texon.com', '2024-09-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('imcnease@j-texon.com', '2024-10-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('imcnease@j-texon.com', '2024-10-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('imcnease@j-texon.com', '2025-01-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('imcnease@j-texon.com', '2025-03-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jcallaro@blackzim.com', '2023-11-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jcallaro@blackzim.com', '2025-02-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkitty@nam-zim.com', '2024-03-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkitty@nam-zim.com', '2024-05-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkitty@nam-zim.com', '2024-10-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkitty@nam-zim.com', '2025-02-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkusko@bioplex.com', '2023-11-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkusko@bioplex.com', '2024-02-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkusko@bioplex.com', '2024-04-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkusko@bioplex.com', '2024-08-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jkusko@bioplex.com', '2024-11-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jleinenbach@singletechno.com', '2024-01-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jleinenbach@singletechno.com', '2024-07-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jleinenbach@singletechno.com', '2024-09-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jleinenbach@singletechno.com', '2024-12-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jmoyd@bioholding.com', '2024-07-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jmoyd@bioholding.com', '2024-08-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jmoyd@bioholding.com', '2024-08-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jmoyd@bioholding.com', '2024-12-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jmoyd@bioholding.com', '2025-01-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jmoyd@bioholding.com', '2025-02-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jperez@groovestreet.com', '2024-08-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jperez@groovestreet.com', '2024-09-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jperez@groovestreet.com', '2024-11-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jperez@groovestreet.com', '2024-12-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jtoyama@hottechi.com', '2023-11-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jtoyama@hottechi.com', '2024-02-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jtoyama@hottechi.com', '2024-05-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jtoyama@hottechi.com', '2024-12-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jtoyama@hottechi.com', '2025-03-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@betasoloin.com', '2023-11-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@betasoloin.com', '2024-02-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@betasoloin.com', '2024-05-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@betasoloin.com', '2024-07-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@betasoloin.com', '2024-08-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@finjob.com', '2024-01-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@finjob.com', '2024-01-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@finjob.com', '2025-01-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@xx-zobam.com', '2023-10-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@xx-zobam.com', '2024-04-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@xx-zobam.com', '2024-07-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@xx-zobam.com', '2024-07-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@xx-zobam.com', '2024-10-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@xx-zobam.com', '2024-12-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@xx-zobam.com', '2024-12-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('jyglesias@xx-zobam.com', '2025-03-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kagramonte@plexzap.com', '2024-04-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kagramonte@plexzap.com', '2024-12-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kagramonte@plexzap.com', '2024-12-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kagramonte@plexzap.com', '2025-03-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kblackwood@kan-code.com', '2023-10-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kblackwood@kan-code.com', '2024-09-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kblackwood@kan-code.com', '2024-11-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kblackwood@kan-code.com', '2025-01-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kcaiafa@ganjaflex.com', '2023-11-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kcaiafa@ganjaflex.com', '2023-12-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kcaiafa@ganjaflex.com', '2024-01-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kcaiafa@ganjaflex.com', '2024-04-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kcaiafa@ganjaflex.com', '2024-05-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kcaiafa@ganjaflex.com', '2025-02-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kcaiafa@ganjaflex.com', '2025-03-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kcaiafa@ganjaflex.com', '2025-03-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kdemesa@scottech.com', '2023-11-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kdemesa@scottech.com', '2023-12-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kdemesa@scottech.com', '2024-06-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kdemesa@scottech.com', '2025-01-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kdemesa@scottech.com', '2025-02-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kstockham@zoomit.com', '2023-11-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kstockham@zoomit.com', '2024-02-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kstockham@zoomit.com', '2024-07-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kstockham@zoomit.com', '2024-07-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kstockham@zoomit.com', '2024-11-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kstockham@zoomit.com', '2024-12-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('kstockham@zoomit.com', '2025-01-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbatman@newex.com', '2023-10-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbatman@newex.com', '2024-06-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbatman@newex.com', '2024-06-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbatman@newex.com', '2024-06-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbatman@newex.com', '2024-08-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbatman@newex.com', '2024-08-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbiddy@toughzap.com', '2023-12-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbiddy@toughzap.com', '2025-01-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbiddy@toughzap.com', '2025-03-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lbrachle@plexzap.com', '2023-10-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lfrankel@betatech.com', '2023-10-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lfrankel@betatech.com', '2023-12-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lfrankel@betatech.com', '2023-12-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lfrankel@betatech.com', '2024-06-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lfrankel@betatech.com', '2024-09-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lfrankel@betatech.com', '2024-10-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lfrankel@betatech.com', '2024-12-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lfrankel@betatech.com', '2025-03-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lgillaspie@zencorporation.com', '2023-11-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lgillaspie@zencorporation.com', '2023-12-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lgillaspie@zencorporation.com', '2024-01-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lgillaspie@zencorporation.com', '2024-06-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lgillaspie@zencorporation.com', '2024-10-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lgillaspie@zencorporation.com', '2025-02-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2024-03-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2024-05-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2024-05-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2024-06-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2024-11-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2024-11-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2024-11-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2025-02-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2025-02-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lhamilton@donware.com', '2025-03-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2023-10-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2023-12-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2024-01-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2024-03-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2024-05-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2024-07-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2024-07-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2024-09-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2024-10-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lisaacs@scottech.com', '2024-11-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmallett@sonron.com', '2023-10-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmallett@sonron.com', '2024-01-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmallett@sonron.com', '2024-01-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmallett@sonron.com', '2024-05-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmallett@sonron.com', '2024-05-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmallett@sonron.com', '2024-06-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmonarrez@doncon.com', '2023-12-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmonarrez@doncon.com', '2024-02-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmonarrez@doncon.com', '2024-05-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lmonarrez@doncon.com', '2024-10-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lpinilla@condax.com', '2023-11-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lpinilla@condax.com', '2024-02-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lpinilla@condax.com', '2024-04-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lpinilla@condax.com', '2024-10-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lpinilla@condax.com', '2024-10-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lshinko@plussunin.com', '2024-08-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lshinko@plussunin.com', '2024-09-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lshinko@plussunin.com', '2024-09-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lthreets@singletechno.com', '2024-01-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lthreets@singletechno.com', '2024-02-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lthreets@singletechno.com', '2024-08-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lworlds@hottechi.com', '2023-10-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lworlds@hottechi.com', '2023-11-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lworlds@hottechi.com', '2024-03-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lworlds@hottechi.com', '2024-04-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lworlds@hottechi.com', '2024-07-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lworlds@hottechi.com', '2024-07-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lworlds@hottechi.com', '2025-01-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lwrinkles@streethex.com', '2024-01-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lwrinkles@streethex.com', '2024-04-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lwrinkles@streethex.com', '2024-06-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lwrinkles@streethex.com', '2024-12-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lwrinkles@streethex.com', '2025-01-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lwrinkles@streethex.com', '2025-03-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('lwrinkles@streethex.com', '2025-03-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('maquas@cancity.com', '2024-06-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('maquas@cancity.com', '2024-09-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('maquas@cancity.com', '2024-10-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('maquas@cancity.com', '2024-11-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('maquas@cancity.com', '2024-12-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('maquas@cancity.com', '2025-02-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('marias@zotware.com', '2023-12-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('marias@zotware.com', '2024-10-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('marias@zotware.com', '2024-11-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('marias@zotware.com', '2025-03-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mchesterfield@plussunin.com', '2024-01-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mchesterfield@plussunin.com', '2024-04-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mchesterfield@plussunin.com', '2024-10-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mchesterfield@plussunin.com', '2025-02-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mclaucherty@zoomit.com', '2024-04-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mclaucherty@zoomit.com', '2024-05-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mclaucherty@zoomit.com', '2024-05-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mclaucherty@zoomit.com', '2024-08-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mclaucherty@zoomit.com', '2024-08-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mclaucherty@zoomit.com', '2024-12-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mclaucherty@zoomit.com', '2025-01-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mcloney@xx-holding.com', '2023-10-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mcloney@xx-holding.com', '2024-05-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mcloney@xx-holding.com', '2024-08-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mcloney@xx-holding.com', '2024-10-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mcloney@xx-holding.com', '2025-02-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mgillaspie@cancity.com', '2023-12-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mgillaspie@cancity.com', '2024-01-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mgillaspie@cancity.com', '2025-02-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2023-10-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2023-10-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2023-11-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2023-12-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2024-01-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2024-06-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2024-06-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2024-11-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2025-02-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mmauson@zathunicon.com', '2025-03-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpaa@zotware.com', '2023-11-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpaa@zotware.com', '2023-12-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpaa@zotware.com', '2024-02-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpaa@zotware.com', '2024-02-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpaa@zotware.com', '2024-02-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpaa@zotware.com', '2024-09-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpaa@zotware.com', '2024-11-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpaa@zotware.com', '2025-03-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpalaspas@iselectrics.com', '2023-11-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpalaspas@iselectrics.com', '2023-12-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpalaspas@iselectrics.com', '2023-12-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpalaspas@iselectrics.com', '2024-03-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpalaspas@iselectrics.com', '2024-04-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpalaspas@iselectrics.com', '2024-07-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpalaspas@iselectrics.com', '2024-10-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mpalaspas@iselectrics.com', '2025-03-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2023-10-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2023-11-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2024-03-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2024-03-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2024-05-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2024-05-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2024-06-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2024-10-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2025-01-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2025-02-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mriden@finhigh.com', '2025-03-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2023-11-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2023-12-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2023-12-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2024-01-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2024-05-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2024-07-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2024-08-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2024-08-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mvanheusen@conecom.com', '2024-12-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mwenner@scotfind.com', '2023-11-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mwenner@scotfind.com', '2024-04-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mwenner@scotfind.com', '2024-06-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mwenner@scotfind.com', '2024-07-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mwenner@scotfind.com', '2024-07-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mwenner@scotfind.com', '2024-07-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mwenner@scotfind.com', '2024-12-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('mwenner@scotfind.com', '2025-01-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ndelasancha@scotfind.com', '2024-02-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ndelasancha@scotfind.com', '2024-04-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ndelasancha@scotfind.com', '2024-06-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ndelasancha@scotfind.com', '2025-01-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nharnos@konex.com', '2024-01-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nharnos@konex.com', '2024-02-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nharnos@konex.com', '2024-06-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nharnos@konex.com', '2024-09-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nharnos@konex.com', '2025-02-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nharnos@konex.com', '2025-02-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nharnos@konex.com', '2025-02-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nsuell@kinnamplus.com', '2023-10-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nsuell@kinnamplus.com', '2024-02-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nsuell@kinnamplus.com', '2024-07-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('nsuell@kinnamplus.com', '2024-08-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2023-10-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2024-01-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2024-01-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2024-04-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2024-05-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2024-09-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2024-12-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2025-02-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ntagala@j-texon.com', '2025-03-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('omulqueen@donware.com', '2024-04-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('omulqueen@donware.com', '2024-09-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('omulqueen@donware.com', '2024-11-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('pbevelacqua@iselectrics.com', '2023-11-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('pbevelacqua@iselectrics.com', '2023-12-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('pbevelacqua@iselectrics.com', '2024-01-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('pbevelacqua@iselectrics.com', '2024-01-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('pbevelacqua@iselectrics.com', '2024-04-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('pbevelacqua@iselectrics.com', '2025-03-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('qcantres@lexiqvolax.com', '2024-03-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('qcantres@lexiqvolax.com', '2024-04-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('qcantres@lexiqvolax.com', '2024-05-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('qcantres@lexiqvolax.com', '2024-08-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('qcantres@lexiqvolax.com', '2024-10-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('qcantres@lexiqvolax.com', '2024-10-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('qcantres@lexiqvolax.com', '2024-10-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('qcantres@lexiqvolax.com', '2024-11-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rhoa@iselectrics.com', '2023-10-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rhoa@iselectrics.com', '2023-11-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rhoa@iselectrics.com', '2023-12-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rhoa@iselectrics.com', '2024-01-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rhoa@iselectrics.com', '2024-10-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rhoa@iselectrics.com', '2024-12-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rhoa@iselectrics.com', '2025-01-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rhoa@iselectrics.com', '2025-03-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rmonarrez@opentech.com', '2023-11-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rmonarrez@opentech.com', '2024-02-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rmonarrez@opentech.com', '2024-04-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rmonarrez@opentech.com', '2024-11-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rmonarrez@opentech.com', '2024-11-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rmonarrez@opentech.com', '2025-01-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rmonarrez@opentech.com', '2025-01-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rslusarski@singletechno.com', '2023-10-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rslusarski@singletechno.com', '2023-11-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rslusarski@singletechno.com', '2024-05-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rslusarski@singletechno.com', '2024-07-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rslusarski@singletechno.com', '2025-01-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('rslusarski@singletechno.com', '2025-03-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2023-10-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2023-11-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2024-02-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2024-02-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2024-04-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2024-05-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2024-08-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2024-08-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('scloney@konmatfix.com', '2024-09-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@donware.com', '2024-05-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@donware.com', '2024-06-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@donware.com', '2024-08-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@donware.com', '2024-08-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@donware.com', '2024-09-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@donware.com', '2025-01-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@stanredtax.com', '2023-10-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@stanredtax.com', '2023-11-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@stanredtax.com', '2024-05-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@stanredtax.com', '2024-09-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@stanredtax.com', '2024-10-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@stanredtax.com', '2024-11-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@stanredtax.com', '2025-01-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sfeichtner@stanredtax.com', '2025-02-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2024-01-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2024-01-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2024-03-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2024-04-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2024-07-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2024-09-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2024-09-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2024-10-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2025-01-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sgudroe@cancity.com', '2025-01-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2023-12-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2024-01-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2024-02-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2024-07-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2024-07-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2024-08-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2024-10-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2024-10-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2024-11-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2025-01-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sheintzman@blackzim.com', '2025-02-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('snachor@xx-holding.com', '2024-06-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('snachor@xx-holding.com', '2024-07-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('spawlowicz@warephase.com', '2023-10-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('spawlowicz@warephase.com', '2024-07-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('spawlowicz@warephase.com', '2024-10-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('spawlowicz@warephase.com', '2024-12-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('spawlowicz@warephase.com', '2025-03-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('srowling@j-texon.com', '2024-01-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('srowling@j-texon.com', '2024-04-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('srowling@j-texon.com', '2025-02-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2023-10-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-01-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-01-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-04-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-05-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-06-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-10-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-10-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-11-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-11-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2024-12-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2025-02-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ssaras@sumace.com', '2025-03-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2023-10-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2023-10-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2023-10-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2023-11-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2023-12-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2024-01-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2024-03-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2024-04-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2024-04-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('sshealy@statholdings.com', '2025-02-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tasar@stanredtax.com', '2023-11-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tasar@stanredtax.com', '2023-11-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tasar@stanredtax.com', '2024-02-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tasar@stanredtax.com', '2024-02-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tasar@stanredtax.com', '2024-08-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tasar@stanredtax.com', '2024-11-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tasar@stanredtax.com', '2025-03-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tbutt@blackzim.com', '2024-05-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tbutt@blackzim.com', '2024-06-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tbutt@blackzim.com', '2024-11-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tbutt@blackzim.com', '2025-02-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tbutt@blackzim.com', '2025-02-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tbutt@blackzim.com', '2025-03-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tdelasancha@warephase.com', '2024-02-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tdelasancha@warephase.com', '2024-03-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tdelasancha@warephase.com', '2024-04-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tdelasancha@warephase.com', '2024-05-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tdelasancha@warephase.com', '2024-05-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tdelasancha@warephase.com', '2024-10-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('teroman@iselectrics.com', '2024-04-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('teroman@iselectrics.com', '2024-10-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('teroman@iselectrics.com', '2024-12-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('teroman@iselectrics.com', '2025-02-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tfelger@j-texon.com', '2024-01-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tfelger@j-texon.com', '2024-03-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tfelger@j-texon.com', '2024-05-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tfelger@j-texon.com', '2024-07-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tfelger@j-texon.com', '2024-08-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tfelger@j-texon.com', '2025-03-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tgotter@treequote.com', '2024-07-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tgotter@treequote.com', '2024-11-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tharnos@donquadtech.com', '2023-10-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tharnos@donquadtech.com', '2023-11-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tharnos@donquadtech.com', '2024-04-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tharnos@donquadtech.com', '2024-04-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tharnos@donquadtech.com', '2024-05-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tharnos@donquadtech.com', '2024-11-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tharnos@donquadtech.com', '2024-11-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2023-10-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2023-10-11');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2023-10-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2023-11-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2023-12-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2024-03-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2024-06-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2024-12-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('thoopengardner@conecom.com', '2025-01-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tkitzman@dambase.com', '2023-10-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tkitzman@dambase.com', '2024-01-09');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tkitzman@dambase.com', '2024-01-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tkitzman@dambase.com', '2024-05-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tkitzman@dambase.com', '2024-11-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tkitzman@dambase.com', '2024-12-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tmirafuentes@statholdings.com', '2023-10-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tmirafuentes@statholdings.com', '2023-11-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tmirafuentes@statholdings.com', '2024-05-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tmirafuentes@statholdings.com', '2024-05-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tmirafuentes@statholdings.com', '2024-10-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tmirafuentes@statholdings.com', '2025-03-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tmirafuentes@statholdings.com', '2025-03-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-01-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-05-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-06-19');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-07-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-08-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-11-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-11-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-11-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2024-12-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tpalaspas@hatfan.com', '2025-01-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tsawchuk@condax.com', '2023-12-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tsawchuk@condax.com', '2024-01-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tsawchuk@condax.com', '2024-02-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tsawchuk@condax.com', '2024-03-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tsawchuk@condax.com', '2024-06-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tsawchuk@condax.com', '2024-06-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tsawchuk@condax.com', '2024-08-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('tsawchuk@condax.com', '2024-12-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ttomasulo@dambase.com', '2023-11-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ttomasulo@dambase.com', '2023-11-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ttomasulo@dambase.com', '2024-12-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('ttomasulo@dambase.com', '2025-03-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vauffrey@groovestreet.com', '2023-12-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vauffrey@groovestreet.com', '2024-05-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2023-11-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2023-11-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2023-12-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2024-01-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2024-02-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2024-04-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2024-08-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2024-09-20');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vdiestel@green-plus.com', '2024-12-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vkorando@rantouch.com', '2024-04-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vkorando@rantouch.com', '2024-06-17');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vkorando@rantouch.com', '2024-07-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vkorando@rantouch.com', '2024-07-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('vkorando@rantouch.com', '2025-01-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2023-11-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2024-05-22');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2024-05-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2024-06-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2024-06-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2024-06-21');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2024-09-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2024-11-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wfelger@sumace.com', '2025-01-31');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wnestle@bioholding.com', '2024-01-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wnestle@bioholding.com', '2024-02-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wnestle@bioholding.com', '2024-02-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wnestle@bioholding.com', '2024-03-08');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wnestle@bioholding.com', '2024-08-02');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wnestle@bioholding.com', '2024-08-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wnestle@bioholding.com', '2024-10-03');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2023-12-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2024-01-01');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2024-03-29');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2024-08-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2024-12-10');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2024-12-13');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2024-12-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2025-01-14');
INSERT INTO adoptionapplication (email, application_date) VALUES ('wsimilton@xx-holding.com', '2025-01-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xmcnease@groovestreet.com', '2023-12-28');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xmcnease@groovestreet.com', '2024-01-30');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xmcnease@groovestreet.com', '2024-03-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xmcnease@groovestreet.com', '2024-04-25');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xmcnease@groovestreet.com', '2025-02-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xmcnease@groovestreet.com', '2025-03-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xnunlee@gogozoom.com', '2023-10-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xnunlee@gogozoom.com', '2024-01-24');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xnunlee@gogozoom.com', '2024-02-27');
INSERT INTO adoptionapplication (email, application_date) VALUES ('xnunlee@gogozoom.com', '2025-02-05');
INSERT INTO adoptionapplication (email, application_date) VALUES ('yvonasek@yearin.com', '2023-12-07');
INSERT INTO adoptionapplication (email, application_date) VALUES ('yvonasek@yearin.com', '2023-12-15');
INSERT INTO adoptionapplication (email, application_date) VALUES ('yvonasek@yearin.com', '2024-02-16');
INSERT INTO adoptionapplication (email, application_date) VALUES ('yvonasek@yearin.com', '2024-07-26');
INSERT INTO adoptionapplication (email, application_date) VALUES ('yvonasek@yearin.com', '2024-10-23');
INSERT INTO adoptionapplication (email, application_date) VALUES ('yvonasek@yearin.com', '2024-12-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('zmyricks@isdom.com', '2023-10-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('zmyricks@isdom.com', '2023-12-12');
INSERT INTO adoptionapplication (email, application_date) VALUES ('zmyricks@isdom.com', '2024-07-18');
INSERT INTO adoptionapplication (email, application_date) VALUES ('zmyricks@isdom.com', '2024-10-04');
INSERT INTO adoptionapplication (email, application_date) VALUES ('zmyricks@isdom.com', '2025-01-06');
INSERT INTO adoptionapplication (email, application_date) VALUES ('zmyricks@isdom.com', '2025-03-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('abayless@rangreen.com', '2023-10-02', 'APPROVED', '2023-10-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('abayless@rangreen.com', '2024-09-27', 'APPROVED', '2025-03-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('abayless@rangreen.com', '2025-01-16', 'APPROVED', '2025-01-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('adevreese@codehow.com', '2024-01-26', 'APPROVED', '2024-12-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('afrankel@plexzap.com', '2024-04-22', 'APPROVED', '2024-12-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('afrankel@plexzap.com', '2024-10-02', 'APPROVED', '2024-10-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ajuhas@year-job.com', '2023-11-21', 'APPROVED', '2024-01-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ajuhas@year-job.com', '2024-02-12', 'APPROVED', '2024-07-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ajuhas@year-job.com', '2024-03-27', 'APPROVED', '2025-03-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ajuhas@year-job.com', '2024-04-03', 'APPROVED', '2024-04-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ajuhas@year-job.com', '2024-06-14', 'APPROVED', '2024-11-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ajuhas@year-job.com', '2024-07-09', 'APPROVED', '2024-10-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('akampa@zumgoity.com', '2023-10-13', 'APPROVED', '2023-12-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('akampa@zumgoity.com', '2024-01-15', 'APPROVED', '2024-09-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('akampa@zumgoity.com', '2024-01-17', 'APPROVED', '2025-01-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('akampa@zumgoity.com', '2024-03-20', 'APPROVED', '2024-12-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('akampa@zumgoity.com', '2024-10-07', 'APPROVED', '2024-12-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('amai@openlane.com', '2023-10-13', 'APPROVED', '2023-12-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('amai@openlane.com', '2024-04-11', 'APPROVED', '2024-05-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('amai@openlane.com', '2024-05-02', 'APPROVED', '2024-06-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('amai@openlane.com', '2024-06-17', 'APPROVED', '2024-09-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('amai@openlane.com', '2024-08-16', 'APPROVED', '2024-12-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('amirafuentes@inity.com', '2024-04-05', 'APPROVED', '2024-05-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('amirafuentes@inity.com', '2024-11-26', 'APPROVED', '2024-12-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('apoullion@year-job.com', '2024-04-04', 'APPROVED', '2024-05-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('apoullion@year-job.com', '2024-06-11', 'APPROVED', '2024-12-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('apoullion@year-job.com', '2024-06-25', 'APPROVED', '2025-02-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('aradde@hottechi.com', '2024-01-10', 'APPROVED', '2024-05-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('aradde@hottechi.com', '2024-03-07', 'APPROVED', '2024-06-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('aradde@hottechi.com', '2024-05-09', 'APPROVED', '2024-06-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('aradde@hottechi.com', '2024-09-17', 'APPROVED', '2025-02-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('aradde@hottechi.com', '2024-09-27', 'APPROVED', '2025-02-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('aradde@hottechi.com', '2025-01-30', 'APPROVED', '2025-02-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asilvestrini@bioholding.com', '2024-03-04', 'APPROVED', '2024-04-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asilvestrini@bioholding.com', '2024-04-04', 'APPROVED', '2024-11-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asilvestrini@bioholding.com', '2024-10-17', 'APPROVED', '2025-01-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asweigard@kinnamplus.com', '2023-11-08', 'APPROVED', '2023-12-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asweigard@kinnamplus.com', '2024-03-22', 'APPROVED', '2024-05-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asweigard@kinnamplus.com', '2024-05-06', 'APPROVED', '2024-11-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asweigard@kinnamplus.com', '2024-05-07', 'APPROVED', '2024-09-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asweigard@kinnamplus.com', '2024-05-15', 'APPROVED', '2024-10-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('asweigard@kinnamplus.com', '2024-06-05', 'APPROVED', '2024-09-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('avillanueva@funholding.com', '2024-08-14', 'APPROVED', '2024-10-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('avillanueva@funholding.com', '2024-09-16', 'APPROVED', '2024-11-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('avillanueva@funholding.com', '2024-09-18', 'APPROVED', '2024-11-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bcorbley@isdom.com', '2023-11-21', 'APPROVED', '2024-01-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bcorbley@isdom.com', '2024-01-31', 'APPROVED', '2024-08-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bcorbley@isdom.com', '2024-06-03', 'APPROVED', '2024-08-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bhamilton@kan-code.com', '2023-10-05', 'APPROVED', '2023-10-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bhamilton@kan-code.com', '2024-02-08', 'APPROVED', '2024-05-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bhamilton@kan-code.com', '2024-02-12', 'APPROVED', '2024-10-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bhamilton@kan-code.com', '2024-06-26', 'APPROVED', '2024-11-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bhamilton@kan-code.com', '2024-10-07', 'APPROVED', '2025-03-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bkoppinger@kan-code.com', '2024-09-09', 'APPROVED', '2025-02-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('blindall@gogozoom.com', '2023-10-31', 'APPROVED', '2023-12-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('blindall@gogozoom.com', '2023-12-14', 'APPROVED', '2024-01-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('blindall@gogozoom.com', '2024-01-22', 'APPROVED', '2024-02-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('blindall@gogozoom.com', '2024-03-21', 'APPROVED', '2024-10-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('blindall@gogozoom.com', '2024-08-06', 'APPROVED', '2024-11-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('blindall@gogozoom.com', '2025-01-23', 'APPROVED', '2025-02-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bpatak@ganjaflex.com', '2023-10-06', 'APPROVED', '2023-10-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bpatak@ganjaflex.com', '2024-10-30', 'APPROVED', '2024-11-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bpatak@ganjaflex.com', '2025-02-03', 'APPROVED', '2025-03-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bpatak@ganjaflex.com', '2025-02-04', 'APPROVED', '2025-02-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bsamu@labdrill.com', '2023-11-29', 'APPROVED', '2023-12-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('bsamu@labdrill.com', '2024-09-13', 'APPROVED', '2024-09-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cauffrey@lexiqvolax.com', '2024-08-19', 'APPROVED', '2024-09-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cauffrey@lexiqvolax.com', '2024-09-02', 'APPROVED', '2024-10-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbenimadho@newex.com', '2023-10-24', 'APPROVED', '2023-10-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbenimadho@newex.com', '2023-12-19', 'APPROVED', '2025-02-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbenimadho@newex.com', '2024-01-24', 'APPROVED', '2025-01-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbenimadho@newex.com', '2024-01-31', 'APPROVED', '2024-03-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbenimadho@newex.com', '2024-02-19', 'APPROVED', '2025-03-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbenimadho@newex.com', '2024-06-10', 'APPROVED', '2024-10-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbenimadho@newex.com', '2024-11-05', 'APPROVED', '2025-03-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbreland@sumace.com', '2023-11-30', 'APPROVED', '2023-12-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbreland@sumace.com', '2024-04-09', 'APPROVED', '2025-03-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbreland@sumace.com', '2024-10-29', 'APPROVED', '2024-12-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cbreland@sumace.com', '2025-01-21', 'APPROVED', '2025-03-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ccanlas@labdrill.com', '2023-11-20', 'APPROVED', '2024-12-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ccanlas@labdrill.com', '2024-01-03', 'APPROVED', '2024-11-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ccanlas@labdrill.com', '2024-08-29', 'APPROVED', '2024-10-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cgellinger@silis.com', '2023-12-07', 'APPROVED', '2024-04-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cgellinger@silis.com', '2023-12-15', 'APPROVED', '2024-03-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cgellinger@silis.com', '2024-10-04', 'APPROVED', '2025-01-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cgellinger@silis.com', '2024-12-09', 'APPROVED', '2024-12-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('chudnall@zoomit.com', '2024-01-03', 'APPROVED', '2024-03-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('chudnall@zoomit.com', '2024-04-09', 'APPROVED', '2024-06-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('chudnall@zoomit.com', '2024-07-09', 'APPROVED', '2024-12-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('chudnall@zoomit.com', '2025-01-31', 'APPROVED', '2025-03-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cpaskin@mathtouch.com', '2023-11-14', 'APPROVED', '2023-11-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cpaskin@mathtouch.com', '2024-08-28', 'APPROVED', '2024-11-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cpaskin@mathtouch.com', '2024-10-21', 'APPROVED', '2024-11-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cshinko@scotfind.com', '2024-03-08', 'APPROVED', '2024-04-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cshinko@scotfind.com', '2024-04-15', 'APPROVED', '2024-05-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cshinko@scotfind.com', '2024-08-12', 'APPROVED', '2024-11-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cshinko@scotfind.com', '2025-01-14', 'APPROVED', '2025-03-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cslayton@openlane.com', '2023-10-25', 'APPROVED', '2024-06-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cslayton@openlane.com', '2024-03-21', 'APPROVED', '2025-02-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cslayton@openlane.com', '2024-06-25', 'APPROVED', '2024-11-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cslayton@openlane.com', '2024-11-22', 'APPROVED', '2025-02-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ctheodorov@groovestreet.com', '2024-03-12', 'APPROVED', '2024-04-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ctheodorov@groovestreet.com', '2024-06-24', 'APPROVED', '2025-01-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvillanueva@isdom.com', '2023-12-26', 'APPROVED', '2024-01-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvillanueva@isdom.com', '2024-06-05', 'APPROVED', '2025-02-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvillanueva@isdom.com', '2024-07-12', 'APPROVED', '2024-11-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvillanueva@isdom.com', '2024-08-20', 'APPROVED', '2024-12-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvillanueva@isdom.com', '2024-09-25', 'APPROVED', '2025-01-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvonasek@stanredtax.com', '2023-11-24', 'APPROVED', '2024-04-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvonasek@stanredtax.com', '2024-03-13', 'APPROVED', '2024-09-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvonasek@stanredtax.com', '2024-07-22', 'APPROVED', '2024-08-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvonasek@stanredtax.com', '2024-08-13', 'APPROVED', '2025-02-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvonasek@stanredtax.com', '2024-08-26', 'APPROVED', '2025-01-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvonasek@stanredtax.com', '2024-10-30', 'APPROVED', '2025-02-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cvonasek@stanredtax.com', '2024-12-25', 'APPROVED', '2025-03-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cwalthall@year-job.com', '2024-01-01', 'APPROVED', '2024-05-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cwalthall@year-job.com', '2024-01-24', 'APPROVED', '2024-04-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cwenner@betatech.com', '2024-01-30', 'APPROVED', '2024-10-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cwenner@betatech.com', '2024-03-05', 'APPROVED', '2024-03-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('cwenner@betatech.com', '2025-01-24', 'APPROVED', '2025-01-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('darias@treequote.com', '2023-10-12', 'APPROVED', '2024-06-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('darias@treequote.com', '2023-12-29', 'APPROVED', '2024-05-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('darias@treequote.com', '2024-03-19', 'APPROVED', '2024-05-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('darias@treequote.com', '2024-09-05', 'APPROVED', '2024-09-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('darias@treequote.com', '2025-02-21', 'APPROVED', '2025-03-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dblunk@dalttechnology.com', '2023-11-09', 'APPROVED', '2023-11-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dblunk@dalttechnology.com', '2024-04-08', 'APPROVED', '2024-08-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dblunk@dalttechnology.com', '2024-10-15', 'APPROVED', '2024-12-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dfelger@faxquote.com', '2023-12-01', 'APPROVED', '2024-12-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dfelger@faxquote.com', '2023-12-14', 'APPROVED', '2025-01-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dfelger@faxquote.com', '2023-12-15', 'APPROVED', '2024-02-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dfelger@faxquote.com', '2023-12-27', 'APPROVED', '2024-03-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dfelger@faxquote.com', '2024-02-06', 'APPROVED', '2025-02-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dfelger@faxquote.com', '2024-11-27', 'APPROVED', '2025-01-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2023-10-03', 'APPROVED', '2023-10-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2024-03-18', 'APPROVED', '2024-12-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2024-03-25', 'APPROVED', '2024-03-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2024-05-02', 'APPROVED', '2025-03-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2024-06-17', 'APPROVED', '2024-09-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2024-07-02', 'APPROVED', '2024-11-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2024-08-01', 'APPROVED', '2025-03-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2024-08-23', 'APPROVED', '2024-11-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dhoffis@zotware.com', '2024-12-20', 'APPROVED', '2025-02-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dlueckenbach@opentech.com', '2024-08-01', 'APPROVED', '2024-11-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dmoyd@labdrill.com', '2024-08-21', 'APPROVED', '2024-10-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dnestle@treequote.com', '2023-10-20', 'APPROVED', '2023-11-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dnestle@treequote.com', '2024-02-20', 'APPROVED', '2024-02-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dnestle@treequote.com', '2024-06-06', 'APPROVED', '2024-09-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dnestle@treequote.com', '2024-07-19', 'APPROVED', '2025-03-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dnestle@treequote.com', '2024-12-03', 'APPROVED', '2025-01-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dnestle@treequote.com', '2025-01-22', 'APPROVED', '2025-02-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dnestle@treequote.com', '2025-03-12', 'APPROVED', '2025-03-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('drestrepo@xx-zobam.com', '2023-12-05', 'APPROVED', '2024-11-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('drestrepo@xx-zobam.com', '2024-04-30', 'APPROVED', '2024-07-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('drestrepo@xx-zobam.com', '2024-10-14', 'APPROVED', '2025-03-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('drulapaugh@mathtouch.com', '2023-11-30', 'APPROVED', '2024-07-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('drulapaugh@mathtouch.com', '2024-02-01', 'APPROVED', '2024-11-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('drulapaugh@mathtouch.com', '2024-03-26', 'APPROVED', '2024-08-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('drulapaugh@mathtouch.com', '2024-07-10', 'APPROVED', '2024-11-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('drulapaugh@mathtouch.com', '2024-10-31', 'APPROVED', '2024-12-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dstaback@warephase.com', '2024-05-17', 'APPROVED', '2024-09-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dstaback@warephase.com', '2024-05-21', 'APPROVED', '2024-12-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dstaback@warephase.com', '2024-07-15', 'APPROVED', '2024-10-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('dstaback@warephase.com', '2024-08-23', 'APPROVED', '2024-12-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ebaltimore@singletechno.com', '2023-10-11', 'APPROVED', '2023-10-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ebaltimore@singletechno.com', '2023-11-23', 'APPROVED', '2024-01-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ebaltimore@singletechno.com', '2024-05-30', 'APPROVED', '2024-10-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ebaltimore@singletechno.com', '2024-06-07', 'APPROVED', '2024-08-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ebaltimore@singletechno.com', '2024-12-05', 'APPROVED', '2024-12-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('eburnard@mathtouch.com', '2023-11-06', 'APPROVED', '2024-04-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('eburnard@mathtouch.com', '2023-11-17', 'APPROVED', '2024-05-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('eburnard@mathtouch.com', '2024-03-27', 'APPROVED', '2024-04-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('eburnard@mathtouch.com', '2024-04-26', 'APPROVED', '2025-03-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('eburnard@mathtouch.com', '2024-05-14', 'APPROVED', '2024-08-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('eburnard@mathtouch.com', '2024-08-08', 'APPROVED', '2024-09-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('eburnard@mathtouch.com', '2024-12-16', 'APPROVED', '2025-01-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ecanlas@conecom.com', '2023-10-03', 'APPROVED', '2023-11-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ecanlas@conecom.com', '2024-02-02', 'APPROVED', '2024-05-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ecanlas@conecom.com', '2024-07-26', 'APPROVED', '2024-09-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ecanlas@conecom.com', '2024-08-16', 'APPROVED', '2024-08-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ecoyier@hatfan.com', '2023-11-17', 'APPROVED', '2024-04-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ecoyier@hatfan.com', '2024-05-20', 'APPROVED', '2024-07-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ecoyier@hatfan.com', '2024-09-30', 'APPROVED', '2025-01-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('erowling@j-texon.com', '2024-04-25', 'APPROVED', '2025-01-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('erowling@j-texon.com', '2024-07-30', 'APPROVED', '2024-12-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('erowling@j-texon.com', '2024-08-19', 'APPROVED', '2025-03-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('erowling@j-texon.com', '2024-09-11', 'APPROVED', '2024-09-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('erowling@j-texon.com', '2024-09-19', 'APPROVED', '2024-09-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('esergi@cancity.com', '2023-11-27', 'APPROVED', '2024-04-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('esergi@cancity.com', '2024-04-16', 'APPROVED', '2024-05-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('esergi@cancity.com', '2024-08-05', 'APPROVED', '2024-11-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('esergi@cancity.com', '2024-10-24', 'APPROVED', '2025-03-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fankeny@domzoom.com', '2023-10-06', 'APPROVED', '2023-10-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fankeny@domzoom.com', '2023-11-20', 'APPROVED', '2023-12-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fankeny@domzoom.com', '2024-03-06', 'APPROVED', '2024-06-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fankeny@domzoom.com', '2024-05-28', 'APPROVED', '2024-06-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fankeny@domzoom.com', '2024-06-28', 'APPROVED', '2024-07-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fankeny@domzoom.com', '2024-07-16', 'APPROVED', '2024-08-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fankeny@domzoom.com', '2024-08-23', 'APPROVED', '2025-02-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fankeny@domzoom.com', '2024-09-20', 'APPROVED', '2025-01-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ffelger@plusstrip.com', '2023-11-28', 'APPROVED', '2024-08-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ffritz@zumgoity.com', '2023-11-16', 'APPROVED', '2024-02-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ffritz@zumgoity.com', '2024-01-29', 'APPROVED', '2024-02-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ffritz@zumgoity.com', '2024-02-29', 'APPROVED', '2024-10-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ffritz@zumgoity.com', '2024-03-18', 'APPROVED', '2024-06-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ffritz@zumgoity.com', '2024-03-25', 'APPROVED', '2025-02-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ffritz@zumgoity.com', '2024-04-02', 'APPROVED', '2024-05-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ffritz@zumgoity.com', '2024-07-04', 'APPROVED', '2025-01-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fshinko@inity.com', '2023-10-12', 'APPROVED', '2024-05-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fvarriano@mathtouch.com', '2023-10-27', 'APPROVED', '2023-11-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fvarriano@mathtouch.com', '2023-12-25', 'APPROVED', '2024-10-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('fvarriano@mathtouch.com', '2024-02-22', 'APPROVED', '2024-06-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gangalich@rundofase.com', '2024-02-28', 'APPROVED', '2024-06-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gangalich@rundofase.com', '2025-01-07', 'APPROVED', '2025-02-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@gogozoom.com', '2024-08-21', 'APPROVED', '2024-10-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@groovestreet.com', '2023-10-09', 'APPROVED', '2025-02-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@groovestreet.com', '2023-11-08', 'APPROVED', '2024-09-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@groovestreet.com', '2023-12-12', 'APPROVED', '2025-02-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@groovestreet.com', '2023-12-21', 'APPROVED', '2024-06-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@groovestreet.com', '2024-01-23', 'APPROVED', '2024-09-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@groovestreet.com', '2024-02-02', 'APPROVED', '2024-04-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@groovestreet.com', '2024-04-05', 'APPROVED', '2024-11-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gcousey@groovestreet.com', '2024-11-06', 'APPROVED', '2024-11-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('giturbide@rangreen.com', '2024-12-18', 'APPROVED', '2025-02-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gjurney@rantouch.com', '2023-12-05', 'APPROVED', '2024-03-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gjurney@rantouch.com', '2024-04-17', 'APPROVED', '2024-06-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gjurney@rantouch.com', '2024-07-17', 'APPROVED', '2024-10-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gjurney@rantouch.com', '2024-09-06', 'APPROVED', '2024-10-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gjurney@rantouch.com', '2024-10-10', 'APPROVED', '2024-11-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gschnitzler@ron-tech.com', '2024-03-15', 'APPROVED', '2024-10-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gschnitzler@ron-tech.com', '2024-07-12', 'APPROVED', '2024-07-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('gschnitzler@ron-tech.com', '2024-09-03', 'APPROVED', '2024-09-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hhellickson@isdom.com', '2023-12-19', 'APPROVED', '2024-07-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hhellickson@isdom.com', '2024-04-12', 'APPROVED', '2024-12-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hhellickson@isdom.com', '2024-05-28', 'APPROVED', '2024-12-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hkardas@dambase.com', '2023-11-24', 'APPROVED', '2024-09-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hkardas@dambase.com', '2024-04-04', 'APPROVED', '2024-06-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hmartabano@fasehatice.com', '2023-10-18', 'APPROVED', '2024-06-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hmartabano@fasehatice.com', '2023-12-06', 'APPROVED', '2024-05-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hmartabano@fasehatice.com', '2023-12-11', 'APPROVED', '2024-07-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hmartabano@fasehatice.com', '2024-01-10', 'APPROVED', '2024-12-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hmartabano@fasehatice.com', '2024-03-27', 'APPROVED', '2024-10-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hmartabano@fasehatice.com', '2024-04-01', 'APPROVED', '2024-10-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hmartabano@fasehatice.com', '2024-04-08', 'APPROVED', '2025-03-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hvocelka@yearin.com', '2024-05-27', 'APPROVED', '2024-07-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('hvocelka@yearin.com', '2025-02-17', 'APPROVED', '2025-02-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('imcnease@j-texon.com', '2024-03-12', 'APPROVED', '2024-07-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('imcnease@j-texon.com', '2024-05-13', 'APPROVED', '2025-02-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('imcnease@j-texon.com', '2024-09-26', 'APPROVED', '2025-02-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('imcnease@j-texon.com', '2024-10-23', 'APPROVED', '2025-03-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jcallaro@blackzim.com', '2023-11-28', 'APPROVED', '2024-10-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jkitty@nam-zim.com', '2024-03-28', 'APPROVED', '2024-06-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jkitty@nam-zim.com', '2024-10-25', 'APPROVED', '2024-11-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jkusko@bioplex.com', '2024-02-14', 'APPROVED', '2024-03-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jkusko@bioplex.com', '2024-08-13', 'APPROVED', '2024-10-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jleinenbach@singletechno.com', '2024-07-18', 'APPROVED', '2024-10-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jleinenbach@singletechno.com', '2024-09-12', 'APPROVED', '2025-03-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jmoyd@bioholding.com', '2024-07-01', 'APPROVED', '2024-08-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jperez@groovestreet.com', '2024-11-19', 'APPROVED', '2025-02-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jperez@groovestreet.com', '2024-12-02', 'APPROVED', '2025-01-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jtoyama@hottechi.com', '2023-11-08', 'APPROVED', '2024-07-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jtoyama@hottechi.com', '2024-02-26', 'APPROVED', '2024-06-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jtoyama@hottechi.com', '2024-12-31', 'APPROVED', '2025-01-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jyglesias@betasoloin.com', '2023-11-24', 'APPROVED', '2024-01-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jyglesias@betasoloin.com', '2024-02-27', 'APPROVED', '2024-03-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jyglesias@betasoloin.com', '2024-05-20', 'APPROVED', '2024-06-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jyglesias@finjob.com', '2024-01-16', 'APPROVED', '2024-01-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jyglesias@xx-zobam.com', '2024-04-22', 'APPROVED', '2024-06-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jyglesias@xx-zobam.com', '2024-07-02', 'APPROVED', '2024-08-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jyglesias@xx-zobam.com', '2024-07-08', 'APPROVED', '2024-10-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('jyglesias@xx-zobam.com', '2024-10-14', 'APPROVED', '2025-03-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kagramonte@plexzap.com', '2024-04-12', 'APPROVED', '2024-10-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kblackwood@kan-code.com', '2023-10-20', 'APPROVED', '2024-02-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kblackwood@kan-code.com', '2024-09-18', 'APPROVED', '2025-01-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kcaiafa@ganjaflex.com', '2023-12-18', 'APPROVED', '2023-12-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kcaiafa@ganjaflex.com', '2024-01-23', 'APPROVED', '2025-03-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kcaiafa@ganjaflex.com', '2024-04-10', 'APPROVED', '2024-09-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kdemesa@scottech.com', '2023-11-22', 'APPROVED', '2023-12-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kdemesa@scottech.com', '2023-12-07', 'APPROVED', '2023-12-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kstockham@zoomit.com', '2023-11-23', 'APPROVED', '2023-12-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kstockham@zoomit.com', '2024-02-14', 'APPROVED', '2024-06-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kstockham@zoomit.com', '2024-07-16', 'APPROVED', '2024-08-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('kstockham@zoomit.com', '2024-12-18', 'APPROVED', '2025-02-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lbatman@newex.com', '2024-06-10', 'APPROVED', '2025-01-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lbatman@newex.com', '2024-08-12', 'APPROVED', '2025-01-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lbatman@newex.com', '2024-08-20', 'APPROVED', '2025-01-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lbiddy@toughzap.com', '2023-12-04', 'APPROVED', '2024-02-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lbrachle@plexzap.com', '2023-10-20', 'APPROVED', '2023-11-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lfrankel@betatech.com', '2023-10-31', 'APPROVED', '2024-04-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lfrankel@betatech.com', '2023-12-22', 'APPROVED', '2024-12-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lfrankel@betatech.com', '2023-12-27', 'APPROVED', '2024-04-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lfrankel@betatech.com', '2024-09-23', 'APPROVED', '2024-10-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lgillaspie@zencorporation.com', '2023-11-09', 'APPROVED', '2023-11-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lgillaspie@zencorporation.com', '2023-12-05', 'APPROVED', '2024-10-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lgillaspie@zencorporation.com', '2024-01-12', 'APPROVED', '2024-08-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lgillaspie@zencorporation.com', '2024-06-13', 'APPROVED', '2024-10-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lhamilton@donware.com', '2024-03-20', 'APPROVED', '2024-10-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lhamilton@donware.com', '2024-05-22', 'APPROVED', '2024-07-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lhamilton@donware.com', '2024-06-18', 'APPROVED', '2024-07-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lhamilton@donware.com', '2024-11-01', 'APPROVED', '2025-02-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2023-10-10', 'APPROVED', '2023-10-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2023-12-04', 'APPROVED', '2024-02-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2024-01-08', 'APPROVED', '2024-06-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2024-03-22', 'APPROVED', '2025-02-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2024-05-03', 'APPROVED', '2025-02-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2024-07-01', 'APPROVED', '2025-01-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2024-07-18', 'APPROVED', '2024-07-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2024-09-30', 'APPROVED', '2024-12-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lisaacs@scottech.com', '2024-10-29', 'APPROVED', '2025-02-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lmallett@sonron.com', '2024-01-15', 'APPROVED', '2024-06-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lmallett@sonron.com', '2024-05-14', 'APPROVED', '2025-02-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lmonarrez@doncon.com', '2023-12-01', 'APPROVED', '2024-03-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lmonarrez@doncon.com', '2024-02-07', 'APPROVED', '2024-05-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lmonarrez@doncon.com', '2024-05-07', 'APPROVED', '2024-08-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lpinilla@condax.com', '2023-11-03', 'APPROVED', '2024-01-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lpinilla@condax.com', '2024-04-11', 'APPROVED', '2025-03-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lthreets@singletechno.com', '2024-01-09', 'APPROVED', '2024-01-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lthreets@singletechno.com', '2024-02-08', 'APPROVED', '2024-02-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lworlds@hottechi.com', '2023-10-10', 'APPROVED', '2023-10-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lworlds@hottechi.com', '2023-11-02', 'APPROVED', '2023-11-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lworlds@hottechi.com', '2024-04-24', 'APPROVED', '2024-11-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lworlds@hottechi.com', '2024-07-11', 'APPROVED', '2024-09-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lworlds@hottechi.com', '2024-07-31', 'APPROVED', '2024-10-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lwrinkles@streethex.com', '2024-01-18', 'APPROVED', '2024-01-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lwrinkles@streethex.com', '2024-04-29', 'APPROVED', '2024-08-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('lwrinkles@streethex.com', '2024-12-09', 'APPROVED', '2025-03-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('maquas@cancity.com', '2024-06-28', 'APPROVED', '2024-08-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('marias@zotware.com', '2023-12-13', 'APPROVED', '2024-01-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('marias@zotware.com', '2024-10-01', 'APPROVED', '2025-01-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('marias@zotware.com', '2024-11-22', 'APPROVED', '2025-01-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mchesterfield@plussunin.com', '2024-01-15', 'APPROVED', '2024-01-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mchesterfield@plussunin.com', '2024-10-04', 'APPROVED', '2025-01-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mclaucherty@zoomit.com', '2024-05-20', 'APPROVED', '2024-10-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mclaucherty@zoomit.com', '2024-12-19', 'APPROVED', '2025-01-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mcloney@xx-holding.com', '2023-10-04', 'APPROVED', '2024-01-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mcloney@xx-holding.com', '2025-02-07', 'APPROVED', '2025-02-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mgillaspie@cancity.com', '2023-12-27', 'APPROVED', '2024-07-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mgillaspie@cancity.com', '2024-01-22', 'APPROVED', '2024-05-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mmauson@zathunicon.com', '2023-10-02', 'APPROVED', '2023-10-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mmauson@zathunicon.com', '2023-11-23', 'APPROVED', '2024-06-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mmauson@zathunicon.com', '2023-12-13', 'APPROVED', '2024-04-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpaa@zotware.com', '2023-11-10', 'APPROVED', '2024-06-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpaa@zotware.com', '2023-12-04', 'APPROVED', '2024-10-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpaa@zotware.com', '2024-02-09', 'APPROVED', '2024-05-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpaa@zotware.com', '2024-02-16', 'APPROVED', '2024-04-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpaa@zotware.com', '2024-02-20', 'APPROVED', '2024-03-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpaa@zotware.com', '2024-09-03', 'APPROVED', '2025-01-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpalaspas@iselectrics.com', '2023-11-27', 'APPROVED', '2023-12-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpalaspas@iselectrics.com', '2023-12-20', 'APPROVED', '2024-01-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpalaspas@iselectrics.com', '2023-12-25', 'APPROVED', '2024-01-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpalaspas@iselectrics.com', '2024-07-23', 'APPROVED', '2024-09-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpalaspas@iselectrics.com', '2024-10-18', 'APPROVED', '2025-01-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mpalaspas@iselectrics.com', '2025-03-03', 'APPROVED', '2025-03-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mriden@finhigh.com', '2023-11-07', 'APPROVED', '2024-05-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mriden@finhigh.com', '2024-03-06', 'APPROVED', '2025-02-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mriden@finhigh.com', '2024-03-07', 'APPROVED', '2024-07-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mriden@finhigh.com', '2024-05-10', 'APPROVED', '2024-11-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mriden@finhigh.com', '2024-05-15', 'APPROVED', '2025-02-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mriden@finhigh.com', '2024-06-12', 'APPROVED', '2025-03-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mriden@finhigh.com', '2024-10-08', 'APPROVED', '2024-11-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mvanheusen@conecom.com', '2023-11-16', 'APPROVED', '2024-03-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mvanheusen@conecom.com', '2023-12-21', 'APPROVED', '2024-02-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mvanheusen@conecom.com', '2023-12-28', 'APPROVED', '2024-07-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mvanheusen@conecom.com', '2024-01-25', 'APPROVED', '2024-04-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mvanheusen@conecom.com', '2024-05-24', 'APPROVED', '2024-10-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mvanheusen@conecom.com', '2024-08-15', 'APPROVED', '2024-11-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mvanheusen@conecom.com', '2024-08-22', 'APPROVED', '2024-09-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mwenner@scotfind.com', '2023-11-09', 'APPROVED', '2023-11-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mwenner@scotfind.com', '2024-04-01', 'APPROVED', '2024-10-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mwenner@scotfind.com', '2024-07-01', 'APPROVED', '2024-10-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mwenner@scotfind.com', '2024-07-11', 'APPROVED', '2025-01-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('mwenner@scotfind.com', '2024-12-25', 'APPROVED', '2025-01-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ndelasancha@scotfind.com', '2024-02-15', 'APPROVED', '2024-12-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ndelasancha@scotfind.com', '2024-06-04', 'APPROVED', '2024-07-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('nharnos@konex.com', '2024-01-31', 'APPROVED', '2024-06-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('nharnos@konex.com', '2024-02-09', 'APPROVED', '2024-12-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('nharnos@konex.com', '2024-09-17', 'APPROVED', '2024-11-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('nsuell@kinnamplus.com', '2024-02-28', 'APPROVED', '2024-05-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('nsuell@kinnamplus.com', '2024-07-26', 'APPROVED', '2024-11-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ntagala@j-texon.com', '2024-01-02', 'APPROVED', '2024-10-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ntagala@j-texon.com', '2024-01-04', 'APPROVED', '2024-04-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ntagala@j-texon.com', '2024-04-19', 'APPROVED', '2025-03-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ntagala@j-texon.com', '2024-09-24', 'APPROVED', '2025-02-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('omulqueen@donware.com', '2024-04-18', 'APPROVED', '2024-05-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('omulqueen@donware.com', '2024-11-28', 'APPROVED', '2025-01-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('pbevelacqua@iselectrics.com', '2023-11-02', 'APPROVED', '2023-11-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('pbevelacqua@iselectrics.com', '2023-12-11', 'APPROVED', '2024-02-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('pbevelacqua@iselectrics.com', '2024-01-11', 'APPROVED', '2024-01-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('pbevelacqua@iselectrics.com', '2024-01-15', 'APPROVED', '2024-08-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('pbevelacqua@iselectrics.com', '2024-04-11', 'APPROVED', '2025-02-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('qcantres@lexiqvolax.com', '2024-03-01', 'APPROVED', '2024-04-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('qcantres@lexiqvolax.com', '2024-04-19', 'APPROVED', '2024-06-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('qcantres@lexiqvolax.com', '2024-05-21', 'APPROVED', '2025-02-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('qcantres@lexiqvolax.com', '2024-10-01', 'APPROVED', '2025-03-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('qcantres@lexiqvolax.com', '2024-10-22', 'APPROVED', '2024-11-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('rhoa@iselectrics.com', '2023-11-16', 'APPROVED', '2023-12-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('rhoa@iselectrics.com', '2023-12-12', 'APPROVED', '2024-02-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('rhoa@iselectrics.com', '2024-10-28', 'APPROVED', '2025-03-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('rmonarrez@opentech.com', '2023-11-01', 'APPROVED', '2023-11-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('rmonarrez@opentech.com', '2024-02-28', 'APPROVED', '2024-10-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('rmonarrez@opentech.com', '2024-11-12', 'APPROVED', '2025-03-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('rslusarski@singletechno.com', '2023-11-01', 'APPROVED', '2024-08-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('rslusarski@singletechno.com', '2024-07-25', 'APPROVED', '2025-01-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('scloney@konmatfix.com', '2023-11-02', 'APPROVED', '2023-12-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('scloney@konmatfix.com', '2024-02-01', 'APPROVED', '2024-02-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('scloney@konmatfix.com', '2024-02-22', 'APPROVED', '2024-02-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('scloney@konmatfix.com', '2024-04-17', 'APPROVED', '2024-12-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('scloney@konmatfix.com', '2024-05-22', 'APPROVED', '2024-05-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('scloney@konmatfix.com', '2024-08-09', 'APPROVED', '2024-09-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sfeichtner@stanredtax.com', '2023-10-30', 'APPROVED', '2024-04-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sfeichtner@stanredtax.com', '2023-11-06', 'APPROVED', '2024-08-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sfeichtner@stanredtax.com', '2024-09-13', 'APPROVED', '2024-11-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sfeichtner@stanredtax.com', '2024-11-22', 'APPROVED', '2025-01-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sfeichtner@stanredtax.com', '2025-01-13', 'APPROVED', '2025-01-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sgudroe@cancity.com', '2024-01-17', 'APPROVED', '2024-03-31');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sgudroe@cancity.com', '2024-03-21', 'APPROVED', '2025-01-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sgudroe@cancity.com', '2024-04-30', 'APPROVED', '2024-06-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sgudroe@cancity.com', '2024-09-24', 'APPROVED', '2024-11-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sgudroe@cancity.com', '2024-09-26', 'APPROVED', '2024-10-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sgudroe@cancity.com', '2024-10-01', 'APPROVED', '2024-11-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sgudroe@cancity.com', '2025-01-14', 'APPROVED', '2025-02-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sgudroe@cancity.com', '2025-01-17', 'APPROVED', '2025-01-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sheintzman@blackzim.com', '2023-12-08', 'APPROVED', '2024-03-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sheintzman@blackzim.com', '2024-01-03', 'APPROVED', '2025-01-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sheintzman@blackzim.com', '2024-02-15', 'APPROVED', '2024-05-11');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sheintzman@blackzim.com', '2024-07-19', 'APPROVED', '2024-08-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sheintzman@blackzim.com', '2024-08-27', 'APPROVED', '2024-09-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sheintzman@blackzim.com', '2024-10-02', 'APPROVED', '2025-01-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sheintzman@blackzim.com', '2024-11-26', 'APPROVED', '2024-11-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('snachor@xx-holding.com', '2024-06-03', 'APPROVED', '2024-06-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('snachor@xx-holding.com', '2024-07-17', 'APPROVED', '2025-01-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('spawlowicz@warephase.com', '2023-10-25', 'APPROVED', '2024-10-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('spawlowicz@warephase.com', '2024-07-29', 'APPROVED', '2024-08-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('spawlowicz@warephase.com', '2024-10-22', 'APPROVED', '2025-01-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('srowling@j-texon.com', '2024-01-11', 'APPROVED', '2024-09-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('srowling@j-texon.com', '2024-04-26', 'APPROVED', '2024-10-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ssaras@sumace.com', '2023-10-25', 'APPROVED', '2023-12-24');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ssaras@sumace.com', '2024-01-12', 'APPROVED', '2024-05-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ssaras@sumace.com', '2024-04-25', 'APPROVED', '2024-09-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ssaras@sumace.com', '2024-05-13', 'APPROVED', '2024-10-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ssaras@sumace.com', '2024-06-21', 'APPROVED', '2024-10-01');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ssaras@sumace.com', '2024-10-11', 'APPROVED', '2025-02-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ssaras@sumace.com', '2024-11-18', 'APPROVED', '2024-11-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ssaras@sumace.com', '2024-12-05', 'APPROVED', '2024-12-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sshealy@statholdings.com', '2023-10-16', 'APPROVED', '2023-11-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sshealy@statholdings.com', '2023-10-19', 'APPROVED', '2024-03-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sshealy@statholdings.com', '2023-12-26', 'APPROVED', '2024-01-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sshealy@statholdings.com', '2024-01-05', 'APPROVED', '2025-01-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sshealy@statholdings.com', '2024-03-26', 'APPROVED', '2025-01-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('sshealy@statholdings.com', '2024-04-15', 'APPROVED', '2025-03-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tasar@stanredtax.com', '2023-11-02', 'APPROVED', '2025-03-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tasar@stanredtax.com', '2024-02-02', 'APPROVED', '2024-06-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tasar@stanredtax.com', '2024-02-09', 'APPROVED', '2024-12-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tasar@stanredtax.com', '2024-08-20', 'APPROVED', '2025-02-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tbutt@blackzim.com', '2024-11-21', 'APPROVED', '2024-12-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tdelasancha@warephase.com', '2024-02-19', 'APPROVED', '2024-03-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tdelasancha@warephase.com', '2024-03-27', 'APPROVED', '2024-09-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tdelasancha@warephase.com', '2024-04-16', 'APPROVED', '2024-05-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('teroman@iselectrics.com', '2024-04-18', 'APPROVED', '2024-06-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('teroman@iselectrics.com', '2024-10-24', 'APPROVED', '2024-12-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tfelger@j-texon.com', '2024-03-07', 'APPROVED', '2024-04-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tfelger@j-texon.com', '2024-05-24', 'APPROVED', '2025-02-14');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tfelger@j-texon.com', '2024-07-04', 'APPROVED', '2024-12-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tgotter@treequote.com', '2024-07-29', 'APPROVED', '2025-01-02');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tgotter@treequote.com', '2024-11-27', 'APPROVED', '2025-02-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tharnos@donquadtech.com', '2023-10-02', 'APPROVED', '2023-10-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tharnos@donquadtech.com', '2023-11-13', 'APPROVED', '2023-11-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tharnos@donquadtech.com', '2024-04-03', 'APPROVED', '2025-01-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('thoopengardner@conecom.com', '2023-10-10', 'APPROVED', '2023-10-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('thoopengardner@conecom.com', '2023-10-19', 'APPROVED', '2023-12-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('thoopengardner@conecom.com', '2023-11-06', 'APPROVED', '2024-03-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('thoopengardner@conecom.com', '2023-12-08', 'APPROVED', '2024-05-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tkitzman@dambase.com', '2023-10-16', 'APPROVED', '2024-07-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tkitzman@dambase.com', '2024-01-09', 'APPROVED', '2025-03-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tkitzman@dambase.com', '2024-01-23', 'APPROVED', '2024-02-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tmirafuentes@statholdings.com', '2023-10-30', 'APPROVED', '2023-11-12');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tmirafuentes@statholdings.com', '2023-11-14', 'APPROVED', '2023-12-25');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tmirafuentes@statholdings.com', '2024-05-16', 'APPROVED', '2025-01-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tpalaspas@hatfan.com', '2024-05-03', 'APPROVED', '2024-05-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tpalaspas@hatfan.com', '2024-06-19', 'APPROVED', '2024-11-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tpalaspas@hatfan.com', '2024-07-24', 'APPROVED', '2024-08-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tpalaspas@hatfan.com', '2024-08-14', 'APPROVED', '2025-02-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tpalaspas@hatfan.com', '2024-11-08', 'APPROVED', '2025-03-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tsawchuk@condax.com', '2023-12-18', 'APPROVED', '2024-11-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tsawchuk@condax.com', '2024-01-22', 'APPROVED', '2024-09-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tsawchuk@condax.com', '2024-02-26', 'APPROVED', '2025-02-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tsawchuk@condax.com', '2024-03-29', 'APPROVED', '2024-06-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tsawchuk@condax.com', '2024-06-05', 'APPROVED', '2024-07-06');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tsawchuk@condax.com', '2024-06-20', 'APPROVED', '2024-11-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('tsawchuk@condax.com', '2024-08-07', 'APPROVED', '2025-03-19');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ttomasulo@dambase.com', '2023-11-06', 'APPROVED', '2024-03-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ttomasulo@dambase.com', '2023-11-15', 'APPROVED', '2024-11-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('ttomasulo@dambase.com', '2024-12-23', 'APPROVED', '2025-02-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vauffrey@groovestreet.com', '2023-12-14', 'APPROVED', '2024-02-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vauffrey@groovestreet.com', '2024-05-29', 'APPROVED', '2025-01-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vdiestel@green-plus.com', '2023-11-07', 'APPROVED', '2023-11-29');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vdiestel@green-plus.com', '2023-11-14', 'APPROVED', '2024-07-09');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vdiestel@green-plus.com', '2023-12-27', 'APPROVED', '2024-04-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vdiestel@green-plus.com', '2024-02-21', 'APPROVED', '2024-09-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vdiestel@green-plus.com', '2024-09-20', 'APPROVED', '2025-02-10');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vkorando@rantouch.com', '2024-04-30', 'APPROVED', '2024-07-08');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vkorando@rantouch.com', '2024-06-17', 'APPROVED', '2024-11-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('vkorando@rantouch.com', '2024-07-24', 'APPROVED', '2024-09-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wfelger@sumace.com', '2023-11-22', 'APPROVED', '2024-02-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wfelger@sumace.com', '2024-05-22', 'APPROVED', '2024-06-23');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wfelger@sumace.com', '2024-05-23', 'APPROVED', '2024-08-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wfelger@sumace.com', '2024-06-06', 'APPROVED', '2024-10-18');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wfelger@sumace.com', '2024-06-13', 'APPROVED', '2024-06-15');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wfelger@sumace.com', '2024-06-21', 'APPROVED', '2024-12-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wfelger@sumace.com', '2024-09-25', 'APPROVED', '2024-12-13');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wnestle@bioholding.com', '2024-01-01', 'APPROVED', '2024-09-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wnestle@bioholding.com', '2024-02-16', 'APPROVED', '2024-12-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wnestle@bioholding.com', '2024-03-08', 'APPROVED', '2025-02-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wnestle@bioholding.com', '2024-08-30', 'APPROVED', '2024-10-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wnestle@bioholding.com', '2024-10-03', 'APPROVED', '2024-12-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wsimilton@xx-holding.com', '2023-12-13', 'APPROVED', '2025-01-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wsimilton@xx-holding.com', '2024-01-01', 'APPROVED', '2024-01-03');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('wsimilton@xx-holding.com', '2024-12-13', 'APPROVED', '2024-12-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('xmcnease@groovestreet.com', '2024-01-30', 'APPROVED', '2024-12-05');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('xmcnease@groovestreet.com', '2024-03-05', 'APPROVED', '2024-04-27');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('xmcnease@groovestreet.com', '2024-04-25', 'APPROVED', '2024-11-17');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('xnunlee@gogozoom.com', '2023-10-24', 'APPROVED', '2023-12-16');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('xnunlee@gogozoom.com', '2024-01-24', 'APPROVED', '2025-01-21');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('xnunlee@gogozoom.com', '2024-02-27', 'APPROVED', '2025-01-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('yvonasek@yearin.com', '2023-12-07', 'APPROVED', '2024-10-20');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('yvonasek@yearin.com', '2023-12-15', 'APPROVED', '2023-12-30');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('yvonasek@yearin.com', '2024-02-16', 'APPROVED', '2024-08-04');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('yvonasek@yearin.com', '2024-07-26', 'APPROVED', '2024-10-26');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('yvonasek@yearin.com', '2024-12-04', 'APPROVED', '2025-03-22');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('zmyricks@isdom.com', '2023-12-12', 'APPROVED', '2024-03-28');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('zmyricks@isdom.com', '2024-07-18', 'APPROVED', '2024-09-07');
INSERT INTO approvedapplication (email, application_date, application_state, date_approved) VALUES ('zmyricks@isdom.com', '2025-01-06', 'APPROVED', '2025-03-03');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('abayless@rangreen.com', '2024-12-06', '2025-02-22');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('afrankel@plexzap.com', '2024-05-10', '2024-12-20');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('akampa@zumgoity.com', '2023-12-18', '2024-05-01');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('akampa@zumgoity.com', '2023-12-29', '2024-11-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('akampa@zumgoity.com', '2024-02-14', '2024-04-14');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('amirafuentes@inity.com', '2024-06-25', '2025-02-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('apoullion@year-job.com', '2024-11-15', '2025-01-14');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('aradde@hottechi.com', '2024-05-01', '2024-06-04');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('aradde@hottechi.com', '2024-08-06', '2024-12-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('asilvestrini@bioholding.com', '2024-08-13', '2024-10-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('asweigard@kinnamplus.com', '2024-06-27', '2025-01-26');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('bhamilton@kan-code.com', '2024-08-07', '2024-08-20');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('bkoppinger@kan-code.com', '2023-10-05', '2023-11-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('bkoppinger@kan-code.com', '2024-05-23', '2024-06-30');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('bkoppinger@kan-code.com', '2024-06-24', '2024-08-05');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('blindall@gogozoom.com', '2023-10-18', '2024-12-21');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('blindall@gogozoom.com', '2024-05-08', '2024-06-02');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('blindall@gogozoom.com', '2024-06-11', '2024-08-15');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('blindall@gogozoom.com', '2025-01-02', '2025-01-25');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('bpatak@ganjaflex.com', '2024-03-22', '2025-01-24');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('bsamu@labdrill.com', '2024-02-23', '2024-04-06');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('bsamu@labdrill.com', '2024-05-02', '2024-06-10');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('bsamu@labdrill.com', '2024-09-10', '2024-10-28');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cgellinger@silis.com', '2023-10-17', '2024-02-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('chudnall@zoomit.com', '2023-11-17', '2023-11-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cpaskin@mathtouch.com', '2024-01-16', '2024-04-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cpaskin@mathtouch.com', '2024-04-29', '2025-03-19');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cvillanueva@isdom.com', '2024-02-05', '2025-01-15');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cvillanueva@isdom.com', '2024-02-19', '2024-10-22');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cvillanueva@isdom.com', '2024-07-15', '2024-08-21');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cvonasek@stanredtax.com', '2024-11-29', '2024-12-10');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cwalthall@year-job.com', '2024-01-04', '2024-06-28');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cwenner@betatech.com', '2023-10-05', '2024-11-08');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('cwenner@betatech.com', '2024-05-16', '2024-07-08');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('darias@treequote.com', '2024-06-04', '2024-11-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dblunk@dalttechnology.com', '2024-02-21', '2024-11-09');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dblunk@dalttechnology.com', '2024-10-23', '2024-11-12');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dblunk@dalttechnology.com', '2024-12-17', '2025-03-20');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dblunk@dalttechnology.com', '2025-01-30', '2025-02-24');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dfelger@faxquote.com', '2024-03-15', '2024-04-22');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dfelger@faxquote.com', '2024-09-06', '2025-03-11');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dhoffis@zotware.com', '2024-04-10', '2024-06-04');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dlueckenbach@opentech.com', '2024-03-13', '2024-06-21');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dmoyd@labdrill.com', '2023-12-20', '2024-01-30');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('drulapaugh@mathtouch.com', '2023-11-14', '2024-04-06');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('drulapaugh@mathtouch.com', '2024-11-05', '2025-03-25');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dstaback@warephase.com', '2023-11-21', '2024-09-13');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('dstaback@warephase.com', '2024-04-12', '2024-08-13');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('eburnard@mathtouch.com', '2023-10-09', '2023-10-23');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('ecanlas@conecom.com', '2024-02-08', '2025-02-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('ecanlas@conecom.com', '2024-07-05', '2024-12-04');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('esergi@cancity.com', '2024-01-19', '2024-02-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('fankeny@domzoom.com', '2024-02-13', '2024-03-20');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('fankeny@domzoom.com', '2024-03-11', '2024-09-07');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('fankeny@domzoom.com', '2024-04-03', '2024-04-03');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('ffritz@zumgoity.com', '2023-10-23', '2024-05-11');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('fshinko@inity.com', '2023-12-22', '2024-02-24');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('fshinko@inity.com', '2024-09-05', '2024-12-16');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('fshinko@inity.com', '2024-09-27', '2025-03-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('fvarriano@mathtouch.com', '2024-03-04', '2024-04-26');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('fvarriano@mathtouch.com', '2024-03-13', '2024-12-23');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('gcousey@gogozoom.com', '2023-11-13', '2024-03-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('gcousey@gogozoom.com', '2024-06-06', '2025-01-06');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('gcousey@groovestreet.com', '2023-10-17', '2025-01-20');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('giturbide@rangreen.com', '2024-01-01', '2024-12-23');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('giturbide@rangreen.com', '2024-12-16', '2024-12-23');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('hhellickson@isdom.com', '2024-02-28', '2024-10-19');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('hhellickson@isdom.com', '2024-05-17', '2024-11-16');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('hkardas@dambase.com', '2023-12-20', '2025-02-12');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('hmartabano@fasehatice.com', '2024-04-02', '2024-11-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('hvocelka@yearin.com', '2023-10-03', '2023-12-07');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('hvocelka@yearin.com', '2024-07-03', '2025-01-09');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('imcnease@j-texon.com', '2024-05-31', '2024-12-26');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('jkitty@nam-zim.com', '2024-05-07', '2025-02-19');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('jkusko@bioplex.com', '2023-11-07', '2024-12-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('jkusko@bioplex.com', '2024-04-26', '2024-11-02');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('jleinenbach@singletechno.com', '2024-01-05', '2024-03-27');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('jmoyd@bioholding.com', '2024-08-05', '2024-11-16');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('jperez@groovestreet.com', '2024-09-19', '2024-11-22');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('jyglesias@finjob.com', '2024-01-29', '2024-11-24');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('jyglesias@xx-zobam.com', '2023-10-04', '2024-09-27');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('kagramonte@plexzap.com', '2024-12-23', '2025-03-28');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('kblackwood@kan-code.com', '2024-11-26', '2024-12-30');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('kcaiafa@ganjaflex.com', '2023-11-20', '2024-02-06');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('kdemesa@scottech.com', '2024-06-04', '2025-03-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('kstockham@zoomit.com', '2024-07-04', '2024-08-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lbatman@newex.com', '2023-10-17', '2023-11-07');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lbatman@newex.com', '2024-06-28', '2025-03-09');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lfrankel@betatech.com', '2024-10-24', '2024-12-09');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lhamilton@donware.com', '2024-05-21', '2025-03-30');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lisaacs@scottech.com', '2024-11-26', '2024-12-26');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lmallett@sonron.com', '2023-10-19', '2025-01-14');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lmallett@sonron.com', '2024-01-17', '2024-10-06');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lmallett@sonron.com', '2024-05-10', '2024-12-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lmallett@sonron.com', '2024-06-19', '2024-07-10');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lpinilla@condax.com', '2024-02-16', '2025-01-11');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lpinilla@condax.com', '2024-10-14', '2025-03-03');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lshinko@plussunin.com', '2024-08-02', '2024-08-13');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lshinko@plussunin.com', '2024-09-10', '2024-11-21');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lshinko@plussunin.com', '2024-09-17', '2025-03-25');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lthreets@singletechno.com', '2024-08-20', '2024-11-13');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lworlds@hottechi.com', '2024-03-19', '2025-02-16');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('lwrinkles@streethex.com', '2024-06-27', '2024-09-03');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('maquas@cancity.com', '2024-11-15', '2025-01-08');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mchesterfield@plussunin.com', '2024-04-29', '2024-07-31');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mclaucherty@zoomit.com', '2024-04-08', '2024-07-27');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mclaucherty@zoomit.com', '2024-08-09', '2024-12-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mmauson@zathunicon.com', '2023-10-17', '2024-04-01');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mmauson@zathunicon.com', '2024-01-30', '2024-07-16');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mmauson@zathunicon.com', '2024-06-14', '2024-11-14');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mmauson@zathunicon.com', '2024-06-18', '2024-11-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mpaa@zotware.com', '2024-11-25', '2025-03-19');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mpalaspas@iselectrics.com', '2024-03-14', '2024-11-06');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mpalaspas@iselectrics.com', '2024-04-19', '2024-08-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mriden@finhigh.com', '2023-10-11', '2024-12-13');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mvanheusen@conecom.com', '2024-12-16', '2025-02-15');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mwenner@scotfind.com', '2024-06-20', '2024-10-19');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mwenner@scotfind.com', '2024-07-10', '2024-09-03');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('mwenner@scotfind.com', '2025-01-09', '2025-02-07');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('ndelasancha@scotfind.com', '2024-04-02', '2024-11-10');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('nsuell@kinnamplus.com', '2023-10-30', '2024-01-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('ntagala@j-texon.com', '2023-10-26', '2024-12-27');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('ntagala@j-texon.com', '2024-05-29', '2025-02-28');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('qcantres@lexiqvolax.com', '2024-10-30', '2025-03-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('qcantres@lexiqvolax.com', '2024-11-13', '2024-12-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('rhoa@iselectrics.com', '2023-10-04', '2024-09-01');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('rhoa@iselectrics.com', '2024-01-17', '2025-03-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('rmonarrez@opentech.com', '2024-04-10', '2025-01-12');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('rslusarski@singletechno.com', '2023-10-06', '2024-01-25');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('rslusarski@singletechno.com', '2024-05-29', '2024-08-02');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('rslusarski@singletechno.com', '2025-01-15', '2025-02-27');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('scloney@konmatfix.com', '2023-10-03', '2024-08-07');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('scloney@konmatfix.com', '2024-08-26', '2024-09-06');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('sheintzman@blackzim.com', '2024-07-22', '2024-10-21');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('sheintzman@blackzim.com', '2025-01-21', '2025-01-22');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('ssaras@sumace.com', '2024-01-18', '2025-01-08');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('sshealy@statholdings.com', '2023-10-24', '2024-06-13');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('sshealy@statholdings.com', '2023-11-03', '2024-03-13');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('sshealy@statholdings.com', '2024-04-24', '2024-06-30');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tasar@stanredtax.com', '2023-11-17', '2024-12-16');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tbutt@blackzim.com', '2024-05-16', '2025-02-15');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tbutt@blackzim.com', '2024-06-17', '2025-01-28');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tbutt@blackzim.com', '2025-02-18', '2025-03-10');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tdelasancha@warephase.com', '2024-05-17', '2025-02-09');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tdelasancha@warephase.com', '2024-10-31', '2024-12-23');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tfelger@j-texon.com', '2024-01-26', '2024-12-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tfelger@j-texon.com', '2024-08-30', '2024-09-07');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tharnos@donquadtech.com', '2024-05-31', '2025-03-17');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tharnos@donquadtech.com', '2024-11-01', '2025-01-15');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('thoopengardner@conecom.com', '2023-10-11', '2025-03-09');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('thoopengardner@conecom.com', '2024-03-13', '2024-05-18');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('thoopengardner@conecom.com', '2024-06-07', '2025-03-12');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('thoopengardner@conecom.com', '2025-01-24', '2025-02-20');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('tkitzman@dambase.com', '2024-05-14', '2024-11-30');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('vdiestel@green-plus.com', '2024-01-02', '2024-11-12');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('vdiestel@green-plus.com', '2024-04-16', '2024-04-26');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('vdiestel@green-plus.com', '2024-12-31', '2025-02-25');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('wfelger@sumace.com', '2024-11-18', '2024-12-29');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('wfelger@sumace.com', '2025-01-31', '2025-03-22');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('wnestle@bioholding.com', '2024-02-13', '2025-03-14');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('wsimilton@xx-holding.com', '2024-03-29', '2024-07-31');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('xmcnease@groovestreet.com', '2023-12-28', '2024-12-05');
INSERT INTO rejectedapplication (email, application_date, date_rejected) VALUES ('zmyricks@isdom.com', '2023-10-18', '2025-02-27');

-- Add adopptions 
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (1, 'dhoffis@zotware.com', '2023-10-03', '2023-10-10', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (2, 'tharnos@donquadtech.com', '2023-10-02', '2023-10-09', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (3, 'lworlds@hottechi.com', '2023-10-10', '2023-10-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (4, 'bpatak@ganjaflex.com', '2023-10-06', '2023-10-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (5, 'bhamilton@kan-code.com', '2023-10-05', '2023-10-25', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (6, 'akampa@zumgoity.com', '2023-10-13', '2024-01-17', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (7, 'ebaltimore@singletechno.com', '2023-10-11', '2023-10-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (8, 'rmonarrez@opentech.com', '2023-11-01', '2023-11-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (9, 'blindall@gogozoom.com', '2023-12-14', '2024-01-31', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (10, 'fankeny@domzoom.com', '2023-10-06', '2023-11-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (11, 'abayless@rangreen.com', '2023-10-02', '2023-11-14', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (12, 'lbrachle@plexzap.com', '2023-10-20', '2023-11-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (13, 'tmirafuentes@statholdings.com', '2023-10-30', '2023-11-17', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (14, 'lisaacs@scottech.com', '2023-10-10', '2023-11-23', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (15, 'cbenimadho@newex.com', '2023-10-24', '2023-11-29', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (16, 'vdiestel@green-plus.com', '2023-11-07', '2023-12-01', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (17, 'cpaskin@mathtouch.com', '2023-11-14', '2023-12-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (18, 'dnestle@treequote.com', '2023-10-20', '2023-12-12', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (19, 'lworlds@hottechi.com', '2023-11-02', '2023-12-11', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (20, 'ecanlas@conecom.com', '2023-10-03', '2023-12-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (21, 'lbiddy@toughzap.com', '2023-12-04', '2024-02-21', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (22, 'lgillaspie@zencorporation.com', '2023-11-09', '2023-12-19', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (23, 'mpalaspas@iselectrics.com', '2023-12-25', '2024-02-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (24, 'mwenner@scotfind.com', '2023-11-09', '2023-12-20', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (25, 'pbevelacqua@iselectrics.com', '2023-11-02', '2024-02-16', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (26, 'fankeny@domzoom.com', '2023-11-20', '2023-12-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (27, 'thoopengardner@conecom.com', '2023-10-19', '2024-01-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (28, 'sshealy@statholdings.com', '2023-10-16', '2024-01-18', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (29, 'jyglesias@betasoloin.com', '2023-11-24', '2024-01-10', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (30, 'amai@openlane.com', '2023-10-13', '2024-01-03', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (31, 'rhoa@iselectrics.com', '2023-11-16', '2024-01-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (32, 'fvarriano@mathtouch.com', '2023-10-27', '2024-01-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (33, 'lpinilla@condax.com', '2023-11-03', '2024-01-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (34, 'marias@zotware.com', '2023-12-13', '2024-01-11', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (35, 'mcloney@xx-holding.com', '2023-10-04', '2024-02-06', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (36, 'sshealy@statholdings.com', '2023-12-26', '2024-01-16', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (37, 'cbreland@sumace.com', '2023-11-30', '2024-01-18', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (38, 'ssaras@sumace.com', '2023-10-25', '2024-02-02', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (39, 'jyglesias@finjob.com', '2024-01-16', '2024-01-22', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (40, 'kcaiafa@ganjaflex.com', '2023-12-18', '2024-02-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (41, 'scloney@konmatfix.com', '2024-02-22', '2024-02-29', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (42, 'kdemesa@scottech.com', '2023-11-22', '2024-02-01', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (43, 'thoopengardner@conecom.com', '2023-10-10', '2024-03-11', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (44, 'pbevelacqua@iselectrics.com', '2023-12-11', '2024-02-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (45, 'mriden@finhigh.com', '2023-11-07', '2024-05-10', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (46, 'wsimilton@xx-holding.com', '2024-01-01', '2024-02-23', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (47, 'mpalaspas@iselectrics.com', '2023-11-27', '2024-02-28', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (48, 'lwrinkles@streethex.com', '2024-01-18', '2024-03-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (49, 'ebaltimore@singletechno.com', '2023-11-23', '2024-03-25', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (50, 'ajuhas@year-job.com', '2023-11-21', '2024-02-22', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (51, 'cgellinger@silis.com', '2023-12-07', '2024-04-22', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (52, 'tmirafuentes@statholdings.com', '2023-11-14', '2024-02-28', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (53, 'cvillanueva@isdom.com', '2023-12-26', '2024-02-27', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (54, 'lthreets@singletechno.com', '2024-01-09', '2024-03-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (55, 'pbevelacqua@iselectrics.com', '2024-01-11', '2024-03-27', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (56, 'kdemesa@scottech.com', '2023-12-07', '2024-03-14', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (57, 'mvanheusen@conecom.com', '2023-11-16', '2024-04-03', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (58, 'sshealy@statholdings.com', '2023-10-19', '2024-04-25', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (59, 'sgudroe@cancity.com', '2024-01-17', '2024-05-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (60, 'jyglesias@betasoloin.com', '2024-02-27', '2024-03-20', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (61, 'sheintzman@blackzim.com', '2023-12-08', '2024-04-01', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (62, 'vauffrey@groovestreet.com', '2023-12-14', '2024-03-22', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (63, 'asweigard@kinnamplus.com', '2023-11-08', '2024-04-09', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (64, 'yvonasek@yearin.com', '2023-12-15', '2024-04-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (65, 'scloney@konmatfix.com', '2023-11-02', '2024-04-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (66, 'bhamilton@kan-code.com', '2024-02-08', '2024-05-17', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (67, 'vdiestel@green-plus.com', '2023-12-27', '2024-05-07', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (68, 'rhoa@iselectrics.com', '2023-12-12', '2024-04-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (69, 'cvonasek@stanredtax.com', '2023-11-24', '2024-04-16', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (70, 'mmauson@zathunicon.com', '2023-12-13', '2024-04-29', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (71, 'cwenner@betatech.com', '2024-03-05', '2024-04-29', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (72, 'ssaras@sumace.com', '2024-01-12', '2024-06-11', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (73, 'zmyricks@isdom.com', '2023-12-12', '2024-04-30', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (74, 'blindall@gogozoom.com', '2024-01-22', '2024-05-03', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (75, 'gjurney@rantouch.com', '2023-12-05', '2024-06-06', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (76, 'eburnard@mathtouch.com', '2023-11-06', '2024-05-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (77, 'dhoffis@zotware.com', '2024-03-25', '2024-05-28', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (78, 'blindall@gogozoom.com', '2023-10-31', '2024-05-20', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (79, 'lthreets@singletechno.com', '2024-02-08', '2024-06-04', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (80, 'jkitty@nam-zim.com', '2024-03-28', '2024-07-25', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (81, 'sfeichtner@stanredtax.com', '2023-10-30', '2024-07-30', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (82, 'cshinko@scotfind.com', '2024-04-15', '2024-05-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (83, 'gcousey@groovestreet.com', '2024-02-02', '2024-05-27', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (84, 'thoopengardner@conecom.com', '2023-11-06', '2024-06-06', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (85, 'ffritz@zumgoity.com', '2024-04-02', '2024-06-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (86, 'chudnall@zoomit.com', '2024-01-03', '2024-06-07', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (87, 'tdelasancha@warephase.com', '2024-02-19', '2024-06-10', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (88, 'ecoyier@hatfan.com', '2023-11-17', '2024-07-16', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (89, 'scloney@konmatfix.com', '2024-02-01', '2024-06-12', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (90, 'tdelasancha@warephase.com', '2024-04-16', '2024-07-10', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (91, 'aradde@hottechi.com', '2024-03-07', '2024-07-12', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (92, 'lisaacs@scottech.com', '2023-12-04', '2024-07-23', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (93, 'mpalaspas@iselectrics.com', '2023-12-20', '2024-07-08', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (94, 'mchesterfield@plussunin.com', '2024-01-15', '2024-06-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (95, 'jyglesias@betasoloin.com', '2024-05-20', '2024-08-23', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (96, 'amai@openlane.com', '2024-05-02', '2024-07-02', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (97, 'bsamu@labdrill.com', '2023-11-29', '2024-07-08', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (98, 'lisaacs@scottech.com', '2024-07-18', '2024-07-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (99, 'fankeny@domzoom.com', '2024-05-28', '2024-07-31', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (100, 'nharnos@konex.com', '2024-01-31', '2024-07-29', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (101, 'wfelger@sumace.com', '2024-05-22', '2024-07-23', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (102, 'lisaacs@scottech.com', '2024-01-08', '2024-07-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (103, 'ecoyier@hatfan.com', '2024-05-20', '2024-08-22', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (104, 'nsuell@kinnamplus.com', '2024-02-28', '2024-09-16', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (105, 'ffritz@zumgoity.com', '2023-11-16', '2024-07-31', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (106, 'jcallaro@blackzim.com', '2023-11-28', '2025-01-10', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (107, 'apoullion@year-job.com', '2024-04-04', '2024-08-02', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (108, 'aradde@hottechi.com', '2024-01-10', '2024-08-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (109, 'cbenimadho@newex.com', '2024-01-31', '2024-08-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (110, 'scloney@konmatfix.com', '2024-05-22', '2024-08-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (111, 'tkitzman@dambase.com', '2024-01-23', '2024-08-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (112, 'gjurney@rantouch.com', '2024-04-17', '2024-08-14', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (113, 'hkardas@dambase.com', '2023-11-24', '2024-09-27', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (114, 'mgillaspie@cancity.com', '2023-12-27', '2024-08-12', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (115, 'darias@treequote.com', '2023-10-12', '2024-09-02', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (116, 'srowling@j-texon.com', '2024-01-11', '2024-09-09', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (117, 'lhamilton@donware.com', '2024-06-18', '2024-08-16', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (118, 'hkardas@dambase.com', '2024-04-04', '2024-08-30', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (119, 'aradde@hottechi.com', '2024-05-09', '2024-08-19', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (120, 'ttomasulo@dambase.com', '2023-11-06', '2024-08-21', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (121, 'amai@openlane.com', '2024-04-11', '2024-09-03', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (122, 'vkorando@rantouch.com', '2024-07-24', '2024-10-04', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (123, 'drulapaugh@mathtouch.com', '2023-11-30', '2024-08-30', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (124, 'ctheodorov@groovestreet.com', '2024-03-12', '2024-11-11', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (125, 'lmonarrez@doncon.com', '2023-12-01', '2024-09-11', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (126, 'ttomasulo@dambase.com', '2023-11-15', '2024-12-09', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (127, 'omulqueen@donware.com', '2024-04-18', '2024-09-23', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (128, 'asweigard@kinnamplus.com', '2024-03-22', '2024-09-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (129, 'cslayton@openlane.com', '2023-10-25', '2024-09-27', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (130, 'tdelasancha@warephase.com', '2024-03-27', '2024-10-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (131, 'gcousey@groovestreet.com', '2023-12-21', '2024-11-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (132, 'ssaras@sumace.com', '2024-04-25', '2024-11-19', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (133, 'fshinko@inity.com', '2023-10-12', '2024-10-08', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (134, 'cshinko@scotfind.com', '2024-03-08', '2024-11-07', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (135, 'sheintzman@blackzim.com', '2024-02-15', '2024-10-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (136, 'cauffrey@lexiqvolax.com', '2024-08-19', '2024-10-23', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (137, 'lgillaspie@zencorporation.com', '2023-12-05', '2024-10-25', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (138, 'tfelger@j-texon.com', '2024-03-07', '2024-10-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (139, 'hmartabano@fasehatice.com', '2024-04-01', '2024-10-30', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (140, 'yvonasek@yearin.com', '2024-02-16', '2025-01-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (141, 'cvonasek@stanredtax.com', '2024-03-13', '2024-11-21', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (142, 'sheintzman@blackzim.com', '2024-08-27', '2024-11-07', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (143, 'ffelger@plusstrip.com', '2023-11-28', '2024-11-15', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (144, 'qcantres@lexiqvolax.com', '2024-04-19', '2024-11-18', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (145, 'lgillaspie@zencorporation.com', '2024-06-13', '2024-11-14', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (146, 'mriden@finhigh.com', '2024-05-10', '2024-11-22', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (147, 'tharnos@donquadtech.com', '2023-11-13', '2024-12-25', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (148, 'cvillanueva@isdom.com', '2024-07-12', '2025-01-16', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (149, 'hmartabano@fasehatice.com', '2024-03-27', '2024-12-02', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (150, 'rslusarski@singletechno.com', '2023-11-01', '2025-01-07', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (151, 'hhellickson@isdom.com', '2024-04-12', '2024-12-23', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (152, 'gcousey@groovestreet.com', '2023-11-08', '2024-12-18', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (153, 'dstaback@warephase.com', '2024-05-21', '2024-12-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (154, 'wfelger@sumace.com', '2024-06-21', '2025-01-10', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (155, 'avillanueva@funholding.com', '2024-09-16', '2025-01-02', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (156, 'gschnitzler@ron-tech.com', '2024-09-03', '2024-12-18', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (157, 'snachor@xx-holding.com', '2024-06-03', '2024-12-20', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (158, 'esergi@cancity.com', '2023-11-27', '2024-12-31', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (159, 'lhamilton@donware.com', '2024-03-20', '2025-02-03', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (160, 'wfelger@sumace.com', '2024-09-25', '2025-01-06', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (161, 'jkusko@bioplex.com', '2024-08-13', '2025-01-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (162, 'qcantres@lexiqvolax.com', '2024-03-01', '2025-02-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (163, 'gcousey@groovestreet.com', '2024-11-06', '2025-01-20', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (164, 'eburnard@mathtouch.com', '2024-05-14', '2025-01-27', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (165, 'lworlds@hottechi.com', '2024-07-11', '2025-01-13', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (166, 'ffritz@zumgoity.com', '2024-03-18', '2025-01-14', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (167, 'tmirafuentes@statholdings.com', '2024-05-16', '2025-01-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (168, 'vdiestel@green-plus.com', '2024-02-21', '2025-01-17', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (169, 'teroman@iselectrics.com', '2024-10-24', '2025-01-17', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (170, 'kcaiafa@ganjaflex.com', '2024-04-10', '2025-01-31', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (171, 'thoopengardner@conecom.com', '2023-12-08', '2025-01-21', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (172, 'imcnease@j-texon.com', '2024-03-12', '2025-01-21', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (173, 'mvanheusen@conecom.com', '2024-08-15', '2025-01-30', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (174, 'hvocelka@yearin.com', '2024-05-27', '2025-02-20', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (175, 'ssaras@sumace.com', '2024-12-05', '2025-02-06', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (176, 'akampa@zumgoity.com', '2024-01-17', '2025-02-04', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (177, 'aradde@hottechi.com', '2024-09-17', '2025-02-10', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (178, 'ebaltimore@singletechno.com', '2024-06-07', '2025-02-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (179, 'mwenner@scotfind.com', '2024-04-01', '2025-02-05', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (180, 'drulapaugh@mathtouch.com', '2024-02-01', '2025-02-07', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (181, 'mpaa@zotware.com', '2024-09-03', '2025-02-12', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (182, 'tsawchuk@condax.com', '2024-06-05', '2025-02-19', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (183, 'scloney@konmatfix.com', '2024-08-09', '2025-03-06', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (184, 'ecanlas@conecom.com', '2024-07-26', '2025-03-17', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (185, 'mpaa@zotware.com', '2024-02-16', '2025-02-19', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (186, 'ajuhas@year-job.com', '2024-02-12', '2025-02-19', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (188, 'bsamu@labdrill.com', '2024-09-13', '2025-02-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (189, 'tpalaspas@hatfan.com', '2024-07-24', '2025-02-26', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (192, 'asweigard@kinnamplus.com', '2024-05-07', '2025-03-24', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (195, 'rmonarrez@opentech.com', '2024-11-12', '2025-03-14', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (196, 'cslayton@openlane.com', '2024-06-25', '2025-03-20', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (198, 'sheintzman@blackzim.com', '2024-11-26', '2025-03-20', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (199, 'tasar@stanredtax.com', '2024-08-20', '2025-03-27', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (202, 'jyglesias@xx-zobam.com', '2024-04-22', '2025-03-28', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (203, 'mclaucherty@zoomit.com', '2024-05-20', '2025-03-28', 0.0);
INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (204, 'jleinenbach@singletechno.com', '2024-09-12', '2025-03-31', 0.0);
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'dhoffis@zotware.com' AND application_date = '2023-10-03';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tharnos@donquadtech.com' AND application_date = '2023-10-02';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lworlds@hottechi.com' AND application_date = '2023-10-10';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'bpatak@ganjaflex.com' AND application_date = '2023-10-06';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'bhamilton@kan-code.com' AND application_date = '2023-10-05';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'akampa@zumgoity.com' AND application_date = '2023-10-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ebaltimore@singletechno.com' AND application_date = '2023-10-11';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'rmonarrez@opentech.com' AND application_date = '2023-11-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'blindall@gogozoom.com' AND application_date = '2023-12-14';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'fankeny@domzoom.com' AND application_date = '2023-10-06';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'abayless@rangreen.com' AND application_date = '2023-10-02';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lbrachle@plexzap.com' AND application_date = '2023-10-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tmirafuentes@statholdings.com' AND application_date = '2023-10-30';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lisaacs@scottech.com' AND application_date = '2023-10-10';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cbenimadho@newex.com' AND application_date = '2023-10-24';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'vdiestel@green-plus.com' AND application_date = '2023-11-07';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cpaskin@mathtouch.com' AND application_date = '2023-11-14';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'dnestle@treequote.com' AND application_date = '2023-10-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lworlds@hottechi.com' AND application_date = '2023-11-02';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ecanlas@conecom.com' AND application_date = '2023-10-03';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lbiddy@toughzap.com' AND application_date = '2023-12-04';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lgillaspie@zencorporation.com' AND application_date = '2023-11-09';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mpalaspas@iselectrics.com' AND application_date = '2023-12-25';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mwenner@scotfind.com' AND application_date = '2023-11-09';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'pbevelacqua@iselectrics.com' AND application_date = '2023-11-02';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'fankeny@domzoom.com' AND application_date = '2023-11-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'thoopengardner@conecom.com' AND application_date = '2023-10-19';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sshealy@statholdings.com' AND application_date = '2023-10-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jyglesias@betasoloin.com' AND application_date = '2023-11-24';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'amai@openlane.com' AND application_date = '2023-10-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'rhoa@iselectrics.com' AND application_date = '2023-11-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'fvarriano@mathtouch.com' AND application_date = '2023-10-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lpinilla@condax.com' AND application_date = '2023-11-03';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'marias@zotware.com' AND application_date = '2023-12-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mcloney@xx-holding.com' AND application_date = '2023-10-04';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sshealy@statholdings.com' AND application_date = '2023-12-26';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cbreland@sumace.com' AND application_date = '2023-11-30';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ssaras@sumace.com' AND application_date = '2023-10-25';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jyglesias@finjob.com' AND application_date = '2024-01-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'kcaiafa@ganjaflex.com' AND application_date = '2023-12-18';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'scloney@konmatfix.com' AND application_date = '2024-02-22';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'kdemesa@scottech.com' AND application_date = '2023-11-22';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'thoopengardner@conecom.com' AND application_date = '2023-10-10';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'pbevelacqua@iselectrics.com' AND application_date = '2023-12-11';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mriden@finhigh.com' AND application_date = '2023-11-07';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'wsimilton@xx-holding.com' AND application_date = '2024-01-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mpalaspas@iselectrics.com' AND application_date = '2023-11-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lwrinkles@streethex.com' AND application_date = '2024-01-18';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ebaltimore@singletechno.com' AND application_date = '2023-11-23';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ajuhas@year-job.com' AND application_date = '2023-11-21';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cgellinger@silis.com' AND application_date = '2023-12-07';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tmirafuentes@statholdings.com' AND application_date = '2023-11-14';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cvillanueva@isdom.com' AND application_date = '2023-12-26';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lthreets@singletechno.com' AND application_date = '2024-01-09';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'pbevelacqua@iselectrics.com' AND application_date = '2024-01-11';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'kdemesa@scottech.com' AND application_date = '2023-12-07';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mvanheusen@conecom.com' AND application_date = '2023-11-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sshealy@statholdings.com' AND application_date = '2023-10-19';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sgudroe@cancity.com' AND application_date = '2024-01-17';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jyglesias@betasoloin.com' AND application_date = '2024-02-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sheintzman@blackzim.com' AND application_date = '2023-12-08';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'vauffrey@groovestreet.com' AND application_date = '2023-12-14';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'asweigard@kinnamplus.com' AND application_date = '2023-11-08';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'yvonasek@yearin.com' AND application_date = '2023-12-15';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'scloney@konmatfix.com' AND application_date = '2023-11-02';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'bhamilton@kan-code.com' AND application_date = '2024-02-08';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'vdiestel@green-plus.com' AND application_date = '2023-12-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'rhoa@iselectrics.com' AND application_date = '2023-12-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cvonasek@stanredtax.com' AND application_date = '2023-11-24';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mmauson@zathunicon.com' AND application_date = '2023-12-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cwenner@betatech.com' AND application_date = '2024-03-05';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ssaras@sumace.com' AND application_date = '2024-01-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'zmyricks@isdom.com' AND application_date = '2023-12-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'blindall@gogozoom.com' AND application_date = '2024-01-22';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'gjurney@rantouch.com' AND application_date = '2023-12-05';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'eburnard@mathtouch.com' AND application_date = '2023-11-06';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'dhoffis@zotware.com' AND application_date = '2024-03-25';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'blindall@gogozoom.com' AND application_date = '2023-10-31';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lthreets@singletechno.com' AND application_date = '2024-02-08';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jkitty@nam-zim.com' AND application_date = '2024-03-28';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sfeichtner@stanredtax.com' AND application_date = '2023-10-30';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cshinko@scotfind.com' AND application_date = '2024-04-15';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'gcousey@groovestreet.com' AND application_date = '2024-02-02';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'thoopengardner@conecom.com' AND application_date = '2023-11-06';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ffritz@zumgoity.com' AND application_date = '2024-04-02';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'chudnall@zoomit.com' AND application_date = '2024-01-03';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tdelasancha@warephase.com' AND application_date = '2024-02-19';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ecoyier@hatfan.com' AND application_date = '2023-11-17';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'scloney@konmatfix.com' AND application_date = '2024-02-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tdelasancha@warephase.com' AND application_date = '2024-04-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'aradde@hottechi.com' AND application_date = '2024-03-07';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lisaacs@scottech.com' AND application_date = '2023-12-04';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mpalaspas@iselectrics.com' AND application_date = '2023-12-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mchesterfield@plussunin.com' AND application_date = '2024-01-15';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jyglesias@betasoloin.com' AND application_date = '2024-05-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'amai@openlane.com' AND application_date = '2024-05-02';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'bsamu@labdrill.com' AND application_date = '2023-11-29';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lisaacs@scottech.com' AND application_date = '2024-07-18';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'fankeny@domzoom.com' AND application_date = '2024-05-28';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'nharnos@konex.com' AND application_date = '2024-01-31';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'wfelger@sumace.com' AND application_date = '2024-05-22';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lisaacs@scottech.com' AND application_date = '2024-01-08';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ecoyier@hatfan.com' AND application_date = '2024-05-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'nsuell@kinnamplus.com' AND application_date = '2024-02-28';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ffritz@zumgoity.com' AND application_date = '2023-11-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jcallaro@blackzim.com' AND application_date = '2023-11-28';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'apoullion@year-job.com' AND application_date = '2024-04-04';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'aradde@hottechi.com' AND application_date = '2024-01-10';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cbenimadho@newex.com' AND application_date = '2024-01-31';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'scloney@konmatfix.com' AND application_date = '2024-05-22';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tkitzman@dambase.com' AND application_date = '2024-01-23';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'gjurney@rantouch.com' AND application_date = '2024-04-17';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'hkardas@dambase.com' AND application_date = '2023-11-24';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mgillaspie@cancity.com' AND application_date = '2023-12-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'darias@treequote.com' AND application_date = '2023-10-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'srowling@j-texon.com' AND application_date = '2024-01-11';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lhamilton@donware.com' AND application_date = '2024-06-18';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'hkardas@dambase.com' AND application_date = '2024-04-04';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'aradde@hottechi.com' AND application_date = '2024-05-09';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ttomasulo@dambase.com' AND application_date = '2023-11-06';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'amai@openlane.com' AND application_date = '2024-04-11';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'vkorando@rantouch.com' AND application_date = '2024-07-24';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'drulapaugh@mathtouch.com' AND application_date = '2023-11-30';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ctheodorov@groovestreet.com' AND application_date = '2024-03-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lmonarrez@doncon.com' AND application_date = '2023-12-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ttomasulo@dambase.com' AND application_date = '2023-11-15';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'omulqueen@donware.com' AND application_date = '2024-04-18';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'asweigard@kinnamplus.com' AND application_date = '2024-03-22';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cslayton@openlane.com' AND application_date = '2023-10-25';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tdelasancha@warephase.com' AND application_date = '2024-03-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'gcousey@groovestreet.com' AND application_date = '2023-12-21';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ssaras@sumace.com' AND application_date = '2024-04-25';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'fshinko@inity.com' AND application_date = '2023-10-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cshinko@scotfind.com' AND application_date = '2024-03-08';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sheintzman@blackzim.com' AND application_date = '2024-02-15';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cauffrey@lexiqvolax.com' AND application_date = '2024-08-19';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lgillaspie@zencorporation.com' AND application_date = '2023-12-05';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tfelger@j-texon.com' AND application_date = '2024-03-07';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'hmartabano@fasehatice.com' AND application_date = '2024-04-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'yvonasek@yearin.com' AND application_date = '2024-02-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cvonasek@stanredtax.com' AND application_date = '2024-03-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sheintzman@blackzim.com' AND application_date = '2024-08-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ffelger@plusstrip.com' AND application_date = '2023-11-28';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'qcantres@lexiqvolax.com' AND application_date = '2024-04-19';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lgillaspie@zencorporation.com' AND application_date = '2024-06-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mriden@finhigh.com' AND application_date = '2024-05-10';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tharnos@donquadtech.com' AND application_date = '2023-11-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cvillanueva@isdom.com' AND application_date = '2024-07-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'hmartabano@fasehatice.com' AND application_date = '2024-03-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'rslusarski@singletechno.com' AND application_date = '2023-11-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'hhellickson@isdom.com' AND application_date = '2024-04-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'gcousey@groovestreet.com' AND application_date = '2023-11-08';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'dstaback@warephase.com' AND application_date = '2024-05-21';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'wfelger@sumace.com' AND application_date = '2024-06-21';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'avillanueva@funholding.com' AND application_date = '2024-09-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'gschnitzler@ron-tech.com' AND application_date = '2024-09-03';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'snachor@xx-holding.com' AND application_date = '2024-06-03';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'esergi@cancity.com' AND application_date = '2023-11-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lhamilton@donware.com' AND application_date = '2024-03-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'wfelger@sumace.com' AND application_date = '2024-09-25';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jkusko@bioplex.com' AND application_date = '2024-08-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'qcantres@lexiqvolax.com' AND application_date = '2024-03-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'gcousey@groovestreet.com' AND application_date = '2024-11-06';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'eburnard@mathtouch.com' AND application_date = '2024-05-14';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'lworlds@hottechi.com' AND application_date = '2024-07-11';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ffritz@zumgoity.com' AND application_date = '2024-03-18';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tmirafuentes@statholdings.com' AND application_date = '2024-05-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'vdiestel@green-plus.com' AND application_date = '2024-02-21';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'teroman@iselectrics.com' AND application_date = '2024-10-24';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'kcaiafa@ganjaflex.com' AND application_date = '2024-04-10';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'thoopengardner@conecom.com' AND application_date = '2023-12-08';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'imcnease@j-texon.com' AND application_date = '2024-03-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mvanheusen@conecom.com' AND application_date = '2024-08-15';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'hvocelka@yearin.com' AND application_date = '2024-05-27';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ssaras@sumace.com' AND application_date = '2024-12-05';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'akampa@zumgoity.com' AND application_date = '2024-01-17';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'aradde@hottechi.com' AND application_date = '2024-09-17';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ebaltimore@singletechno.com' AND application_date = '2024-06-07';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mwenner@scotfind.com' AND application_date = '2024-04-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'drulapaugh@mathtouch.com' AND application_date = '2024-02-01';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mpaa@zotware.com' AND application_date = '2024-09-03';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tsawchuk@condax.com' AND application_date = '2024-06-05';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'scloney@konmatfix.com' AND application_date = '2024-08-09';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ecanlas@conecom.com' AND application_date = '2024-07-26';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mpaa@zotware.com' AND application_date = '2024-02-16';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'ajuhas@year-job.com' AND application_date = '2024-02-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'bsamu@labdrill.com' AND application_date = '2024-09-13';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tpalaspas@hatfan.com' AND application_date = '2024-07-24';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'asweigard@kinnamplus.com' AND application_date = '2024-05-07';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'rmonarrez@opentech.com' AND application_date = '2024-11-12';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'cslayton@openlane.com' AND application_date = '2024-06-25';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'sheintzman@blackzim.com' AND application_date = '2024-11-26';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'tasar@stanredtax.com' AND application_date = '2024-08-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jyglesias@xx-zobam.com' AND application_date = '2024-04-22';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'mclaucherty@zoomit.com' AND application_date = '2024-05-20';
UPDATE approvedapplication SET application_state = 'ADOPTED' WHERE email = 'jleinenbach@singletechno.com' AND application_date = '2024-09-12';

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 1;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 2;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 3;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 4;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 5;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 6;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 7;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 8;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 9;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 10;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 11;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 12;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 13;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 14;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 15;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 16;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 17;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 18;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 19;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 20;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 21;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 22;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 23;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 24;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 25;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 26;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 27;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 28;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 29;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 30;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 31;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 32;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 33;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 34;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 35;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 36;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 37;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 38;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 39;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 40;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 41;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 42;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 43;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 44;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 45;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 46;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 47;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 48;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 49;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 50;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 51;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 52;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 53;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 54;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 55;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 56;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 57;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 58;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 59;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 60;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 61;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 62;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 63;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 64;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 65;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 66;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 67;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 68;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 69;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 70;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 71;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 72;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 73;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 74;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 75;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 76;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 77;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 78;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 79;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 80;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 81;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 82;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 83;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 84;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 85;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 86;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 87;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 88;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 89;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 90;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 91;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 92;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 93;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 94;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 95;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 96;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 97;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 98;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 99;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 100;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 101;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 102;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 103;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 104;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 105;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 106;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 107;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 108;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 109;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 110;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 111;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 112;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 113;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 114;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 115;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 116;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 117;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 118;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 119;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 120;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 121;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 122;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 123;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 124;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 125;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 126;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 127;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 128;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 129;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 130;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 131;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 132;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 133;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 134;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 135;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 136;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 137;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 138;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 139;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 140;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 141;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 142;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 143;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 144;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 145;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 146;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 147;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 148;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 149;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 150;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 151;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 152;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 153;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 154;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 155;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 156;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 157;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 158;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 159;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 160;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 161;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 162;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 163;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 164;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 165;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 166;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 167;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 168;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 169;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 170;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 171;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 172;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 173;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 174;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 175;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 176;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 177;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 178;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 179;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 180;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 181;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 182;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 183;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 184;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 185;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 186;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 188;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 189;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 192;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 195;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 196;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 198;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 199;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 202;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 203;
    

    UPDATE adoptiondetails ad
    JOIN expense e ON ad.dogID = e.dogID
    JOIN dog d ON e.dogID = d.dogID
    SET ad.adoption_fee = CASE
    WHEN EXISTS (SELECT 1 FROM individual i WHERE i.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 1.25
    WHEN EXISTS (SELECT 1 FROM localanimalcontroldepartment l WHERE l.surrenderID = d.surrenderID) THEN 
        (SELECT SUM(amount) FROM expense WHERE dogID = ad.dogID) * 0.10
    ELSE 0 
    END
    WHERE ad.dogID = 204;

-- Update adoption_satte in dog entity
UPDATE dog
SET adoption_state = 1
WHERE dogID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 188, 189, 192, 195, 196, 198, 199, 202, 203, 204);

INSERT INTO `cs6400_sp25_team075`.`systemconfig` (`configName`, `config_value`) VALUES ('loggedUser', NULL);
INSERT INTO `cs6400_sp25_team075`.`systemconfig` (`configName`, `config_value`) VALUES ('ShelterSize', '15');
INSERT INTO `cs6400_sp25_team075`.`user` (`email`, `password`, `birthday`, `phone_number`, `firstname`, `lastname`, `user_type`) VALUES ('user1@example.com', '123', '2001-01-11', '12312312332', 'TEST1', 'TEST1', 'VOLUNTEER');
INSERT INTO `cs6400_sp25_team075`.`user` (`email`, `password`, `birthday`, `phone_number`, `firstname`, `lastname`, `user_type`) VALUES ('user2@example.com', '123', '2005-02-21', '12312343232', 'TEST2', 'TEST2', 'EXECUTIVEDIRECTOR');