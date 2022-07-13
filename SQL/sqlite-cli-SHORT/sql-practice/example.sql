DROP TABLE IF EXISTS puppies;
DROP TABLE IF EXISTS friends;
DROP TABLE IF EXISTS pupies;

-- CREATE TABLE puppies (
--     id INTEGER PRIMARY KEY , 
--     name VARCHAR(50), 
--     age_years NUMERIC(3,1), 
--     breed VARCHAR(100), 
--     weight_lbs INTEGER, 
--     microhipped BOOLEAN
-- );

-- INSERT INTO puppies (name) VALUES ('You found me!'), ('Yippee!!'), ('Yay!!!');
-- INSERT INTO puppies (name) VALUES ('Hi An!');

----------------------------- CREATE TABLE ----------------------------------
-- CREATE TABLE friends (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL
-- );

-- --------------------------- INSERT A ROW ----------------------------------
-- INSERT INTO friends (first_name, last_name)
-- VALUES 
--    ('Rose', 'Tyler'),
--    ('Martha', 'Jones'),
--    ('Donna', 'Noble'),
--    ('River', 'Song');

DROP TABLE IF EXISTS puppies;

-- CREATE TABLE puppies (
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   name VARCHAR(100),
--   age_yrs DECIMAL(2,1),
--   breed VARCHAR(100),
--   weight_lbs INT,
--   microchipped BOOLEAN
-- );

-- INSERT INTO puppies
-- VALUES
--   (1, 'Cooper', 1, 'Miniature Schnauzer', 18, 1),
--   (2, 'Indie', 0.5, 'Yorkshire Terrier', 13, 1),
--   (3, 'Kota', 0.7, 'Australian Shepherd', 26, 0),
--   (4, 'Zoe', 0.8, 'Korean Jindo', 32, 1),
--   (5, 'Charley', 1.5, 'Basset Hound', 25, 0),
--   (6, 'Ladybird', 0.6, 'Labradoodle', 20, 1),
--   (7, 'Callie', 0.9, 'Corgi', 16, 0),
--   (8, 'Jaxson', 0.4, 'Beagle', 19, 1),
--   (9, 'Leinni', 1, 'Miniature Schnauzer', 25, 1),
--   (10, 'Max', 1.6, 'German Shepherd', 65, 0);

DROP TABLE IF EXISTS friends;

-- CREATE TABLE friends (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL
-- );

-- INSERT INTO friends (first_name, last_name)
-- VALUES
--   ('Amy', 'Pond'),
--   ('Rose', 'Tyler'),
--   ('Martha', 'Jones'),
--   ('Donna', 'Noble'),
--   ('River', 'Song');

-- SELECT * FROM friends;


CREATE TABLE pies (
  flavor VARCHAR(255) PRIMARY KEY,
  price FLOAT
);

INSERT INTO pies VALUES('Apple', 19.95);
INSERT INTO pies VALUES('Caramel Apple Crumble', 20.53);
INSERT INTO pies VALUES('Blueberry', 19.31);
INSERT INTO pies VALUES('Blackberry', 22.86);
INSERT INTO pies VALUES('Cherry', 22.32);
INSERT INTO pies VALUES('Peach', 20.45);
INSERT INTO pies VALUES('Raspberry', 20.99);
INSERT INTO pies VALUES('Mixed Berry', 21.45);
INSERT INTO pies VALUES('Strawberry Rhubarb', 24.81);
INSERT INTO pies VALUES('Banana Cream', 18.66);
INSERT INTO pies VALUES('Boston Toffee', 25.00);
INSERT INTO pies VALUES('Banana Nutella', 22.12);
INSERT INTO pies VALUES('Bananas Foster', 24.99);
INSERT INTO pies VALUES('Boston Cream', 23.75);
INSERT INTO pies VALUES('Cookies and Cream', 18.27);
INSERT INTO pies VALUES('Coconut Cream', 22.89);
INSERT INTO pies VALUES('Chess', 25.00);
INSERT INTO pies VALUES('Lemon Chess', 25.00);
INSERT INTO pies VALUES('Key Lime', 19.34);
INSERT INTO pies VALUES('Lemon Meringue', 19.58);
INSERT INTO pies VALUES('Guava', 18.92);
INSERT INTO pies VALUES('Mango', 19.55);
INSERT INTO pies VALUES('Plum', 20.21);
INSERT INTO pies VALUES('Apricot', 20.55);
INSERT INTO pies VALUES('Gooseberry', 23.54);
INSERT INTO pies VALUES('Lingonberry', 24.35);
INSERT INTO pies VALUES('Pear Vanilla Butterscotch', 25.13);
INSERT INTO pies VALUES('Baked Alaska', 25.71);
INSERT INTO pies VALUES('Chocolate', 19.00);
INSERT INTO pies VALUES('Chocolate Mousse', 21.46);
INSERT INTO pies VALUES('Mexican Chocolate', 28.33);
INSERT INTO pies VALUES('Chocolate Caramel', 26.67);
INSERT INTO pies VALUES('Chocolate Chip Cookie Dough', 18.65);
INSERT INTO pies VALUES('Pecan', 26.33);
INSERT INTO pies VALUES('Bourbon Caramel Pecan', 27.88);
INSERT INTO pies VALUES('Chocolate Pecan', 27.63);
INSERT INTO pies VALUES('Pumpkin', 20.91);
INSERT INTO pies VALUES('Sweet Potato', 20.75);
INSERT INTO pies VALUES('Purple Sweet Potato', 26.34);
INSERT INTO pies VALUES('Cheesecake', 28.99);
INSERT INTO pies VALUES('Butterscotch Praline', 29.78);
INSERT INTO pies VALUES('Salted Caramel', 30.32);
INSERT INTO pies VALUES('Salted Honey', 59.00);
INSERT INTO pies VALUES('Sugar Cream', 33.89);
INSERT INTO pies VALUES('Mississippi Mud', 28.67);
INSERT INTO pies VALUES('Turtle Fudge', 30.58);
INSERT INTO pies VALUES('Fruit Loops', 20.45);
INSERT INTO pies VALUES('Black Forest', 34.99);
INSERT INTO pies VALUES('Maple Cream', 35.88);
INSERT INTO pies VALUES('Smores', 26.43);
INSERT INTO pies VALUES('Milk Bar', 46.00);
