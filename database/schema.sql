DROP TABLE IF EXISTS contents;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS contents_users;
DROP TABLE IF EXISTS contents_categories;

CREATE TABLE articles (
	id INTEGER PRIMARY KEY,
	post TEXT,
	img_url TEXT,
	post_date DATETIME,
	# edited_at DATETIME
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

CREATE TABLE articles_users #or edits (
	id INTEGER PRIMARY KEY,
	edited_at DATETIME,
	user_id INTEGER REFERENCES user(id),
	content_id INTEGER REFERENCES content(id)
);

CREATE TABLE articles_categories (
	category_id INTEGER REFERENCES category(id),
	content_id INTEGER REFERENCES content(id)
);