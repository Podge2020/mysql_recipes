/*creates table of recipes. id is a number and cannot be null, primary keys automatically increment, name allows 25 characters, description allows 50 characters, instructions allow 500 characters*/
create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), instructions VARCHAR(500)) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*creates table of ingredients. id is a number and cannot be null, primary keys automatically increment, name allows 50 characters */
create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

/*creates table of measures. id is a number and cannot be null, primary keys automatically increment, name allows 30 characters */ 
create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

/* create table of recipe ingredients. recipe id is a number and cannot be null, ingriendent id is a number and cannot be null, measure id is a number and call be null as well as the amount */
create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL, measure_id INT, amount INT, 
	/* CONSTRAINT specifies rules in the table and here it is connecting the recipe, ingredient and measures tables together */
	CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
	CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id)) 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 

/* INSERT INTO adds inputs to tables respectively */
INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON'), ('WHOLE');

INSERT INTO Ingredient (name) VALUES('egg'), ('salt'), ('sugar'), ('chocolate'), ('vanilla extract'), ('flour');

INSERT INTO Recipe (name, description, instructions) VALUES('Boiled Egg', 'A single boiled egg', 'Add egg to cold water. Bring water to boil. Cook.');

INSERT INTO Recipe (name, description, instructions) VALUES('Chocolate Cake', 'Yummy cake', 'Add eggs, flour, chocolate to pan. Bake at 350 for 1 hour');

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (1, 1, NULL, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 1, NULL, 3);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 2, 2, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 3, 1, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 4, 1, 1);

/*MY ADDITIONS TO THE DATABASE*/ 

/* INSERT INTO Ingredient table all the ingredient values listed in my recipes */
INSERT INTO Ingredient (name) VALUES('oats'), ('cashews'), ('honey'), ('broth'), ('carrots'), ('noodles'), ('fruit'), ('kale'), ('ice'), ('flax'), ('banana'), ('blueberries'), ('bread'), ('peanuts'). ('jelly');

/* adds Granola recipe to Recipe table */
INSERT INTO Recipe (name, description, instructions) VALUES('Granola', 'crunchy snack', 'Add oats, cashews, and honesy to sheet pan. Bake at 350 for 1 hour');

/* adds Soup recipe to Recipe table */
INSERT INTO Recipe (name, description, instructions) VALUES('Soup', 'Fall Fav', 'Add broth, carrots, noodles to pot. Boil on medium heat for 8 hour');

/* adds Smoothie recipe to Recipe table */
INSERT INTO Recipe (name, description, instructions) VALUES('Smoothie', 'Purple Drank', 'Add fruit, kale, ice to blender. Blend on high for 3 minutes');

/* adds Muffin recipe to Recipe table */
INSERT INTO Recipe (name, description, instructions) VALUES('Muffin', 'Flax Friendly', 'Add flax, banana, blueberries to muffin pan. Bake at 350 for 1 hour');

/* adds PBJ recipe to Recipe table */
INSERT INTO Recipe (name, description, instructions) VALUES('PBJ', 'OG sammy', 'Add bread, peanuts, jelly to pan. Bake at 350 for 1 hour');

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (3, 3, , 1);
