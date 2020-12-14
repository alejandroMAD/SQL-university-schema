CREATE SCHEMA `university_schema` ;

CREATE TABLE `university_schema`.`courses` (
  `courses_id` INT NOT NULL AUTO_INCREMENT,
  `courses_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE INDEX `courses_id_UNIQUE` (`courses_id` ASC) VISIBLE,
  UNIQUE INDEX `courses_name_UNIQUE` (`courses_name` ASC) VISIBLE);
  
CREATE TABLE `university_schema`.`students` (
  `students_id` INT NOT NULL AUTO_INCREMENT,
  `students_name` VARCHAR(100) NOT NULL,
  `students_email` VARCHAR(100) NOT NULL,
  `students_phone` VARCHAR(20) NULL,
  `students_courses_id` INT NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE INDEX `students_id_UNIQUE` (`students_id` ASC) VISIBLE,
  INDEX `students_courses_id_idx` (`students_courses_id` ASC) VISIBLE,
  CONSTRAINT `students_courses_id`
    FOREIGN KEY (`students_courses_id`)
    REFERENCES `university_schema`.`courses` (`courses_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `university_schema`.`professors` (
  `professors_id` INT NOT NULL AUTO_INCREMENT,
  `professors_name` VARCHAR(100) NOT NULL,
  `professors_email` VARCHAR(100) NOT NULL,
  `professors_phone` VARCHAR(20) NULL,
  `professors_courses_id` INT NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE,
  INDEX `professors_courses_id_idx` (`professors_courses_id` ASC) VISIBLE,
  CONSTRAINT `professors_courses_id`
    FOREIGN KEY (`professors_courses_id`)
    REFERENCES `university_schema`.`courses` (`courses_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `university_schema`.`grades` (
  `grades_id` INT NOT NULL AUTO_INCREMENT,
  `grades_value` SMALLINT UNSIGNED NOT NULL,
  `grades_students_id` INT NOT NULL,
  `grades_courses_id` INT NOT NULL,
  `grades_professors_id` INT NOT NULL,
  CHECK (`grades_value` BETWEEN 0 AND 100),
  PRIMARY KEY (`grades_id`),
  UNIQUE INDEX `grades_id_UNIQUE` (`grades_id` ASC) VISIBLE,
  INDEX `grades_students_id_idx` (`grades_students_id` ASC) VISIBLE,
  INDEX `grades_courses_id_idx` (`grades_courses_id` ASC) VISIBLE,
  INDEX `grades_professors_id_idx` (`grades_professors_id` ASC) VISIBLE,
  CONSTRAINT `grades_students_id`
    FOREIGN KEY (`grades_students_id`)
    REFERENCES `university_schema`.`students` (`students_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `grades_courses_id`
    FOREIGN KEY (`grades_courses_id`)
    REFERENCES `university_schema`.`courses` (`courses_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `grades_professors_id`
    FOREIGN KEY (`grades_professors_id`)
    REFERENCES `university_schema`.`professors` (`professors_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


USE `university_schema` ;

SET SQL_SAFE_UPDATES = 0;

-- Used Mockaroo to generate random sample data: https://www.mockaroo.com/

INSERT INTO courses (courses_name)
VALUES 
  ('Art History'),
  ('Biotechnology'),
  ('Business Administration'),
  ('Computer Science'),
  ('Economics'),
  ('Fine Arts'),
  ('Journalism'),
  ('Law'),
  ('Marketing'),
  ('Medicine'),
  ('Music'),
  ('Political Science'),
  ('Psychology'),
  ('Spanish'),
  ('Statistics');


INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Dian Courcey', 'dcourcey1@nyu.edu', '977-510-1627', 1);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Karly Tubb', 'ktubb2@intel.com', '927-956-4169', 2);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Skye Vasilik', 'svasilik3@dyndns.org', '418-462-6823', 3);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Alejandro M. González', 'alejandromg@nonrandom.com', '749-907-6493', 4);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Kittie Sartain', 'ksartain4@hao123.com', '467-666-5547', 5);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Lazar Bresnahan', 'lbresnahan5@unblog.fr', '824-123-8977', 6);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Burke Naton', 'bnaton6@google.com.au', '246-310-2335', 7);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Matilda Geary', 'mgeary7@cloudflare.com', '225-307-4280', 8);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Nikki Kamenar', 'nkamenar8@php.net', '963-541-9461', 9);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Elihu Sugg', 'esugg9@spotify.com', '229-309-6343', 10);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Alvera Franca', 'afrancaa@topsy.com', '829-940-2171', 11);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Farlee Willson', 'fwillsonb@engadget.com', '838-982-5077', 12);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Jerry Ovitz', 'jovitzc@amazon.de', '879-232-1442', 13);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Marney Scranny', 'mscrannyd@tmall.com', '675-558-8522', 14);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Nathan Hearson', 'nhearsone@blogspot.com', '145-236-7514', 15);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Regan Fallows', 'rfallowsf@zdnet.com', '903-820-7658', 1);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Idaline Gypson', 'igypsong@pen.io', '720-856-9370', 2);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Noella Shingler', 'nshinglerh@oracle.com', '561-696-5185', 3);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Jabez Soppit', 'jsoppiti@xing.com', '314-476-9854', 4);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Pren Spracklin', 'pspracklinj@infoseek.co.jp', '305-799-7920', 5);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Miguelita Marwick', 'mmarwickk@linkedin.com', '316-390-0586', 6);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Jameson Dealtry', 'jdealtryl@pen.io', '213-586-8008', 7);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Philippe Beech', 'pbeechm@vistaprint.com', '323-473-9864', 8);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Raff Hagland', 'rhaglandn@forbes.com', '159-315-9953', 9);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Jodee Youles', 'jyouleso@histats.com', '855-864-3623', 10);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Dickie Brawson', 'dbrawsonp@timesonline.co.uk', '204-104-5388', 11);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Darelle Duffell', 'dduffellq@hexun.com', '500-250-1171', 12);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Felix Dumbarton', 'fdumbartonr@cdc.gov', '994-758-9603', 13);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Welbie McAlinion', 'wmcalinions@mashable.com', '810-634-6418', 14);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Marrilee Dominico', 'mdominicot@linkedin.com', '217-978-7105', 15);
-- Second, triple and further enrollments:
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Skye Vasilik', 'svasilik3@dyndns.org', '418-462-6823', 11);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Alejandro M. González', 'alejandromg@nonrandom.com', '749-907-6493', 13);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Alejandro M. González', 'alejandromg@nonrandom.com', '749-907-6493', 14);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Kittie Sartain', 'ksartain4@hao123.com', '467-666-5547', 9);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Burke Naton', 'bnaton6@google.com.au', '246-310-2335', 2);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Matilda Geary', 'mgeary7@cloudflare.com', '225-307-4280', 10);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Jerry Ovitz', 'jovitzc@amazon.de', '879-232-1442', 15);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Regan Fallows', 'rfallowsf@zdnet.com', '903-820-7658', 4);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Noella Shingler', 'nshinglerh@oracle.com', '561-696-5185', 7);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Pren Spracklin', 'pspracklinj@infoseek.co.jp', '305-799-7920', 7);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Miguelita Marwick', 'mmarwickk@linkedin.com', '316-390-0586', 8);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Philippe Beech', 'pbeechm@vistaprint.com', '323-473-9864', 9);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Raff Hagland', 'rhaglandn@forbes.com', '159-315-9953', 5);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Jodee Youles', 'jyouleso@histats.com', '855-864-3623', 11);
INSERT INTO students (students_name, students_email, students_phone, students_courses_id) VALUES ('Jodee Youles', 'jyouleso@histats.com', '855-864-3623', 11);
  
  
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Manolo Piolli', 'mpiolli0@vkontakte.ru', '452-521-3588', 1);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Dniren Duffrie', 'dduffrie1@bloglines.com', '552-640-3667', 2);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Ozzy Guilliatt', 'oguilliatt2@army.mil', '328-401-3348', 3);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Salem MacSherry', 'smacsherry3@howstuffworks.com', '544-610-4466', 4);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Benedicta Gillebride', 'bgillebride4@mac.com', '543-255-4715', 5);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Heddi Martusov', 'hmartusov5@adobe.com', '463-902-0215', 6);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Odo Larking', 'olarking6@tripod.com', '564-193-4434', 7);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Gaby Cooper', 'gcooper7@uol.com.br', '666-198-1482', 8);
-- Multicourse professors:
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Manolo Piolli', 'mpiolli0@vkontakte.ru', '452-521-3588', 11);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Manolo Piolli', 'mpiolli0@vkontakte.ru', '452-521-3588', 12);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Dniren Duffrie', 'dduffrie1@bloglines.com', '552-640-3667', 10);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Ozzy Guilliatt', 'oguilliatt2@army.mil', '328-401-3348', 9);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Salem MacSherry', 'smacsherry3@howstuffworks.com', '544-610-4466', 13);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Salem MacSherry', 'smacsherry3@howstuffworks.com', '544-610-4466', 14);
INSERT INTO professors (professors_name, professors_email, professors_phone, professors_courses_id) VALUES ('Gaby Cooper', 'gcooper7@uol.com.br', '666-198-1482', 15);


INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (62, 1, 1, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (76, 2, 2, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (48, 3, 3, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (70, 4, 4, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (87, 5, 5, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (48, 6, 6, 6);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (97, 7, 7, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (93, 8, 8, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (86, 9, 9, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (53, 10, 10, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (29, 11, 11, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (96, 12, 12, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (97, 13, 13, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (85, 14, 14, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (61, 15, 15, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (47, 16, 1, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (85, 17, 2, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (92, 18, 3, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (27, 19, 4, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (75, 20, 5, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (80, 21, 6, 6);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (19, 22, 7, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (46, 23, 8, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (38, 24, 9, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (53, 25, 10, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (83, 26, 11, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (49, 27, 12, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (78, 28, 13, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (39, 29, 14, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (96, 30, 15, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (34, 1, 1, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (83, 2, 2, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (96, 3, 3, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (59, 4, 4, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (27, 5, 5, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (86, 6, 6, 6);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (77, 7, 7, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (65, 8, 8, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (40, 9, 9, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (40, 10, 10, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (77, 11, 11, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (75, 12, 12, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (55, 13, 13, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (94, 14, 14, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (96, 15, 15, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (91, 16, 1, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (42, 17, 2, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (80, 18, 3, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (55, 19, 4, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (32, 20, 5, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (83, 21, 6, 6);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (37, 22, 7, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (0, 23, 8, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (12, 24, 9, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (29, 25, 10, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (99, 26, 11, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (78, 27, 12, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (49, 28, 13, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (57, 29, 14, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (59, 30, 15, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (68, 1, 1, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (26, 2, 2, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (12, 3, 3, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (52, 4, 4, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (19, 5, 5, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (49, 6, 6, 6);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (91, 7, 7, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (80, 8, 8, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (99, 9, 9, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (28, 10, 10, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (31, 11, 11, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (42, 12, 12, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (78, 13, 13, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (50, 14, 14, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (40, 15, 15, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (83, 31, 11, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (45, 32, 13, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (43, 33, 14, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (56, 34, 9, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (29, 35, 2, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (38, 36, 10, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (73, 37, 15, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (22, 38, 4, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (53, 39, 7, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (50, 40, 7, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (99, 41, 8, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (48, 42, 9, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (83, 43, 5, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (58, 44, 11, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (92, 45, 11, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (75, 1, 1, 1);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (82, 2, 2, 2);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (100, 3, 3, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (96, 4, 4, 4);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (74, 5, 5, 5);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (20, 6, 6, 6);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (35, 7, 7, 7);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (23, 8, 8, 8);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (33, 9, 9, 3);
INSERT INTO grades (grades_value, grades_students_id, grades_courses_id, grades_professors_id) VALUES (29, 10, 10, 2);


SET SQL_SAFE_UPDATES = 1;
  

-- 1. QUERY for the average grade that is given by each professor

SELECT p.professors_id AS "ID", p.professors_name AS "Professor", AVG(g.grades_value) AS "Average Grade"
FROM professors p
JOIN grades g
ON p.professors_id = g.grades_professors_id
GROUP BY p.professors_name;

-- 2. QUERY for the top grades of each student

SELECT s.students_id AS "ID", students_name AS "STUDENT", MAX(g.grades_value) AS "HIGHEST GRADE"
FROM students s
JOIN grades g
ON s.students_id = g.grades_students_id
GROUP BY s.students_name;

-- 3. QUERY to group students by the courses they're enrolled in.

SELECT
  CASE WHEN courses_id = 1 THEN students_name END AS 'Art History',
  CASE WHEN courses_id = 2 THEN students_name END AS 'Biotechnology',
  CASE WHEN courses_id = 3 THEN students_name END AS 'Business Administration',
  CASE WHEN courses_id = 4 THEN students_name END AS 'Computer Science',
  CASE WHEN courses_id = 5 THEN students_name END AS 'Economics',
  CASE WHEN courses_id = 6 THEN students_name END AS 'Fine Arts',
  CASE WHEN courses_id = 7 THEN students_name END AS 'Journalism',
  CASE WHEN courses_id = 8 THEN students_name END AS 'Law',
  CASE WHEN courses_id = 9 THEN students_name END AS 'Marketing',
  CASE WHEN courses_id = 10 THEN students_name END AS 'Medicine',
  CASE WHEN courses_id = 11 THEN students_name END AS 'Music',
  CASE WHEN courses_id = 12 THEN students_name END AS 'Political Science',
  CASE WHEN courses_id = 13 THEN students_name END AS 'Psychology',
  CASE WHEN courses_id = 14 THEN students_name END AS 'Spanish',
  CASE WHEN courses_id = 15 THEN students_name END AS 'Statistics'
FROM students s
JOIN courses c
ON s.students_courses_id = c.courses_id;

-- 4. QUERY for creating a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course.

SELECT c.courses_name AS "COURSE", AVG(g.grades_value) AS "GRADE"
FROM courses c
JOIN grades g
ON c.courses_id = g.grades_courses_id
GROUP BY c.courses_name
ORDER BY AVG(g.grades_value) ASC;

-- 5. Finding which student and professor have the most courses in common.

SELECT
"Student and professor with most courses in common:",
s.students_name AS "STUDENT",
s.students_email AS "EMAIL",
p.professors_name AS "PROFESSOR",
p.professors_email AS "EMAIL"
FROM students s
JOIN courses c
ON s.students_courses_id = c.courses_id
JOIN professors p
ON c.courses_id = p.professors_courses_id
GROUP BY s.students_name
ORDER BY COUNT(*) DESC
LIMIT 1;
