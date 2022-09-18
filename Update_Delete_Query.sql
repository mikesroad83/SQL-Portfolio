/* What does the app's SQL look like? */

CREATE table wellness (id integer primary key autoincrement, name text, calories integer, carbs integer, main_ingredient text, mood text);

INSERT into wellness (name, calories, carbs, main_ingredient, mood) VALUES ("Ice Cream", 100, 20, "Sugar", "Happy");
INSERT into wellness (name, calories, carbs, main_ingredient, mood) VALUES ("Tuna Salad", 50, 5, "Tuna", "Sad");
INSERT into wellness (name, calories, carbs, main_ingredient, mood) VALUES ("Chocolate", 200, 50, "Cocoa", "Ecstatic");

/*Showing the full contents of the table prior to any updates/deletes*/
SELECT * FROM wellness;

/*Updating the calories to 101 for id = 1*/
UPDATE wellness SET calories = 101 WHERE id = 1;
SELECT * FROM wellness;

/*Deleting table entry for id = 2*/
DELETE FROM wellness WHERE id = 2;
SELECT * FROM wellness;
