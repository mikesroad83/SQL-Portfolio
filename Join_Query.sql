/* Create table about the people and what they do here */
create table famous_people (PersonID integer PRIMARY KEY autoincrement, first_name text, age integer, home_state text, marrige_status text, starting_movie text, kids integer, hair_color text, birth_place text);
INSERT INTO famous_people (first_name) VALUES ("Sonny");
INSERT INTO famous_people (first_name) VALUES ("Cher");
INSERT INTO famous_people (first_name) VALUES ("John");
INSERT INTO famous_people (first_name) VALUES ("Jane");

create table cars (ID integer PRIMARY KEY autoincrement, person_id integer, car_name text);
INSERT INTO cars (person_id, car_name) VALUES (1, "Mercedes");
INSERT INTO cars (person_id, car_name) VALUES (1, "Honda");
INSERT INTO cars (person_id, car_name) VALUES (2, "Toyota");
INSERT INTO cars (person_id, car_name) VALUES (2, "BMW");


create table Friends (ID integer PRIMARY KEY autoincrement, person1_id integer, person2_id integer);
INSERT INTO Friends (person1_id, person2_id) VALUES (1, 3);
INSERT INTO Friends (person1_id, person2_id) VALUES (2, 4);

/*Showing the name of the famous person and the car they drive*/
select famous_people.first_name, cars.car_name from famous_people
join cars
on famous_people.PersonID = cars.person_id;

/*Pairing the famous people who drive the same car*/
select a.first_name, b.first_name from Friends
join famous_people a
on Friends.person1_id = a.PersonID
join famous_people b
on Friends.person2_id = b.PersonID;