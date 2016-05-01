CREATE TABLE users (
	id serial PRIMARY KEY,
	fname varchar(50),
	lname varchar(50),
	email varchar(50),
	age integer,
	premium boolean,
	dateCreated timestamp DEFAULT current_timestamp
);

CREATE TABLE posts (
	id serial PRIMARY KEY,
	user_id integer,
	category_id integer,
	title varchar(50),
	body varchar(255),
	dateCreated timestamp DEFAULT current_timestamp
);

CREATE TABLE categories (
	id serial PRIMARY KEY,
	name varchar(50),
	description varchar(255),
	dateCreated timestamp DEFAULT current_timestamp
);

CREATE TABLE comments (
	id serial PRIMARY KEY,
	user_id integer, 
	post_id integer,
	body varchar(150),
	dateCreated timestamp DEFAULT current_timestamp
);

CREATE TABLE likes (
	id serial PRIMARY KEY,
	user_id integer, 
	post_id integer,
	dateCreated timestamp DEFAULT current_timestamp
);

INSERT INTO users (fname, lname, email, age, premium) VALUES ('Quinn', 'Gideon', 'quinn.gideon@aol.com', 32, TRUE);
INSERT INTO users (fname, lname, email, age, premium) VALUES ('Bill', 'Gough', 'bootstra.bill@gmail.com', 27, FALSE);
INSERT INTO users (fname, lname, email, age, premium) VALUES ('Keyan', 'Bagheri', 'thenumber42@aol.com', 31, FALSE);
INSERT INTO users (fname, lname, email, age, premium) VALUES ('Jay', 'Hu', 'jh2005@aol.com', 26, TRUE);

INSERT INTO categories (name, description) VALUES ('Sports', 'The latest posts about your favorite athletic passtimes.');
INSERT INTO categories (name, description) VALUES ('Food', 'The latest posts for the foodie in you.');
INSERT INTO categories (name, description) VALUES ('Humor', 'The latest comedic posts to tickle your funny bone.');

INSERT INTO posts (user_id, category_id, title, body) VALUES (1, 1, 'Kobe is finished', 'Its the end of the era. assumenda slow-carb, vinyl artisan est salvia four dollar toast nesciunt fingerstache deep v paleo next level.  ');

INSERT INTO posts (user_id, category_id, title, body) VALUES (2, 1, 'A-Rod who?', 'My name is Bill and I hate the Yankees. assumenda slow-carb, vinyl artisan est salvia four dollar toast nesciunt fingerstache deep v paleo next level. Paleo yuccie small ');

INSERT INTO posts (user_id, category_id, title, body) VALUES (3, 2, 'Top 10 Burger Joints', 'These are the top ten burger joints. assumenda slow-carb, vinyl artisan est salvia four dollar toast nesciunt fingerstache deep v ');

INSERT INTO posts (user_id, category_id, title, body) VALUES (4, 2, 'Poke has made it to NYC', 'Hawaiin Poke is now available in NYC. 
Thundercats scenester raw denim, bespoke blog normcore squid cliche aesthetic crucifix. Thundercats helvetica duis, chambray organic gastropub raw denim meditation echo park bespoke leggings ramps. ');

INSERT INTO posts (user_id, category_id, title, body) VALUES (4, 3, 'Funny Funny', 'Read the rest of this hipster ipsum... 
Thundercats scenester raw denim, bespoke blog normcore squid cliche aesthetic crucifix. Thundercats helvetica duis, chambray organic gastropub raw denim ramps.  ');

INSERT INTO comments (user_id, post_id, body) VALUES (2, 2, 'This is really cool');
INSERT INTO comments (user_id, post_id, body) VALUES (1, 5, 'This rocks');
INSERT INTO comments (user_id, post_id, body) VALUES (2, 1, 'Such a cool post');
INSERT INTO comments (user_id, post_id, body) VALUES (3, 4, 'You are a tool');
INSERT INTO comments (user_id, post_id, body) VALUES (4, 3, 'Hey Internet, go home, your drunk');
INSERT INTO comments (user_id, post_id, body) VALUES (2, 2, ':-) :-)');
INSERT INTO comments (user_id, post_id, body) VALUES (4, 5, '#lmfao #cray');
INSERT INTO comments (user_id, post_id, body) VALUES (3, 1, 'This is too crazy for me to comment on. -comment');

INSERT INTO likes (user_id, post_id) VALUES (3, 2);
INSERT INTO likes (user_id, post_id) VALUES (1, 5);
INSERT INTO likes (user_id, post_id) VALUES (2, 1);
INSERT INTO likes (user_id, post_id) VALUES (3, 4);
INSERT INTO likes (user_id, post_id) VALUES (4, 3);
INSERT INTO likes (user_id, post_id) VALUES (2, 2);
INSERT INTO likes (user_id, post_id) VALUES (4, 1);
INSERT INTO likes (user_id, post_id) VALUES (2, 4);
INSERT INTO likes (user_id, post_id) VALUES (1, 4);
INSERT INTO likes (user_id, post_id) VALUES (3, 1);
INSERT INTO likes (user_id, post_id) VALUES (1, 3);
INSERT INTO likes (user_id, post_id) VALUES (3, 5);
INSERT INTO likes (user_id, post_id) VALUES (2, 5);