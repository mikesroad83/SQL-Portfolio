/*Creating table for names and ages*/

CREATE TABLE persons (
    id integer PRIMARY KEY AUTOINCREMENT,
    name text,
    age integer);
    
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Joe Bob", 17);

/*Creating table showing hobbies for those in the "persons" table*/
CREATE TABLE hobbies (
    id integer PRIMARY KEY AUTOINCREMENT,
    person_id integer,
    name text);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
INSERT INTO hobbies (person_id, name) VALUES (5, "jumping");

/*Join on both tables that shows the name from persons table to the hobby names from the hobbies table*/
SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON hobbies.person_id = persons.id;
    
/*Same join on both tables, except with an added filter on an individual from the persons table*/
SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    ON hobbies.person_id = persons.id
WHERE persons.name = "Bobby McBobbyFace";    