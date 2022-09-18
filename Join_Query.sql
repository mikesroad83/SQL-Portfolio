/*Create table about the people and what they do here */
CREATE TABLE famous_people (PersonID integer PRIMARY KEY autoincrement, first_name text, age integer, home_state text, marrige_status text, starting_movie text, kids integer, hair_color text, birth_place text);
INSERT INTO famous_people (first_name) VALUES ("Sonny");
INSERT INTO famous_people (first_name) VALUES ("Cher");
INSERT INTO famous_people (first_name) VALUES ("John");
INSERT INTO famous_people (first_name) VALUES ("Jane");

/*Create table showing the cars the famous_people drive*/
CREATE TABLE cars (ID integer PRIMARY KEY autoincrement, person_id integer, car_name text);
INSERT INTO cars (person_id, car_name) VALUES (1, "Mercedes");
INSERT INTO cars (person_id, car_name) VALUES (1, "Honda");
INSERT INTO cars (person_id, car_name) VALUES (2, "Toyota");
INSERT INTO cars (person_id, car_name) VALUES (2, "BMW");

/*Create table that pairs people who are friends*/
CREATE TABLE Friends (ID integer PRIMARY KEY autoincrement, person1_id integer, person2_id integer);
INSERT INTO Friends (person1_id, person2_id) VALUES (1, 3);
INSERT INTO Friends (person1_id, person2_id) VALUES (2, 4);

/*Showing the name of the famous person and the car they drive*/
SELECT famous_people.first_name, cars.car_name from famous_people
JOIN cars
ON famous_people.PersonID = cars.person_id;

/*Pairing the famous people who drive the same car*/
SELECT a.first_name, b.first_name from Friends
JOIN famous_people a
ON Friends.person1_id = a.PersonID
JOIN famous_people b
ON Friends.person2_id = b.PersonID;
