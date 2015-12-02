DROP TABLE IF EXISTS contents;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS contents_users;
DROP TABLE IF EXISTS contents_categories;

CREATE TABLE contents (
	id INTEGER PRIMARY KEY,
	post TEXT,
	img_url TEXT,
	post_date DATETIME,
	edit_date DATETIME
);

CREATE TABLE users (
	id INTEGER PRIMARY KEY,
	user_name VARCHAR,
	avatar_url TEXT,
	join_date DATETIME
);

CREATE TABLE categories (
	id INTEGER PRIMARY KEY,
	name VARCHAR
);

CREATE TABLE contents_users (
	user_id INTEGER REFERENCES user(id),
	content_id INTEGER REFERENCES content(id)
);

CREATE TABLE contents_categories (
	category_id INTEGER REFERENCES category(id),
	content_id INTEGER REFERENCES content(id)
);