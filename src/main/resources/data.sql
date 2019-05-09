INSERT INTO category (description) VALUES ('American');
INSERT INTO category (description) VALUES ('Italian');
INSERT INTO category (description) VALUES ('Mexican');
INSERT INTO category (description) VALUES ('Fast Food');

INSERT INTO unit_of_measure (description) VALUES ('Teaspoon');
INSERT INTO unit_of_measure (description) VALUES ('Tablespoon');
INSERT INTO unit_of_measure (description) VALUES ('Cup');
INSERT INTO unit_of_measure (description) VALUES ('Pinch');
INSERT INTO unit_of_measure (description) VALUES ('Ounce');
INSERT INTO unit_of_measure (description) VALUES ('Piece');

INSERT INTO recipe (description,difficulty,prep_time,cook_time,servings,source,url,directions) VALUES ('Perfect Guacamole', 'EASY', 10, 5, 2, '', '', '1 Cut avocado, remove flesh: Cut the avocados in half. Remove seed. Score the inside of the avocado with a blunt knife and scoop out the flesh with a spoon.
<br/><br/>
2 Mash with a fork: Using a fork, roughly mash the avocado. (Don''t overdo it! The guacamole should be a little chunky.)
<br/><br/>
3 Add salt, lime juice, and the rest: Sprinkle with salt and lime (or lemon) juice. The acid in the lime juice will provide some balance to the richness of the avocado and will help delay the avocados from turning brown.
Add the chopped onion, cilantro, black pepper, and chiles. Chili peppers vary individually in their hotness. So, start with a half of one chili pepper and add to the guacamole to your desired degree of hotness.
Remember that much of this is done to taste because of the variability in the fresh ingredients. Start with this recipe and adjust to your taste.
<br/><br/>
4 Cover with plastic and chill to store: Place plastic wrap on the surface of the guacamole cover it and to prevent air reaching it. (The oxygen in the air causes oxidation which will turn the guacamole brown.) Refrigerate until ready to serve.');

INSERT INTO ingredient (description,amount,uom_id,recipe_id) VALUES ('Avocado', 2, 6, 1);
INSERT INTO ingredient (description,amount,uom_id,recipe_id) VALUES ('Serrano chile', 2, 6, 1);
INSERT INTO ingredient (description,amount,uom_id,recipe_id) VALUES ('Ripe tomato (chopped)', 0.5, 6, 1);
INSERT INTO ingredient (description,amount,uom_id,recipe_id) VALUES ('Kosher salt', 1, 1, 1);
INSERT INTO ingredient (description,amount,uom_id,recipe_id) VALUES ('Freshly grated black pepper', 1, 1, 1);
INSERT INTO ingredient (description,amount,uom_id,recipe_id) VALUES ('Lime juice', 1, 2, 1);
INSERT INTO ingredient (description,amount,uom_id,recipe_id) VALUES ('Minced red onion', 0.25, 3, 1);
INSERT INTO ingredient (description,amount,uom_id,recipe_id) VALUES ('Chopped cilantro', 2, 2, 1);

INSERT INTO notes (recipe_notes,recipe_id) VALUES ('These are the notes', 1);

INSERT INTO recipe_category (recipe_id,category_id) VALUES (1,3);

/* TODO: see if this can be done in a different way! */
UPDATE recipe SET notes_id = 1 WHERE id = 1;