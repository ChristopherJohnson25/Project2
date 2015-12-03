DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS articles_users;
DROP TABLE IF EXISTS articles_categories;

CREATE TABLE articles (
	id INTEGER PRIMARY KEY,
	post TEXT,
	img_url TEXT,
	post_date DATETIME,
	subject VARCHAR,
	user_id INTEGER REFERENCES users(id)
); 
CREATE TABLE users (
	id INTEGER PRIMARY KEY,
	password_digest VARCHAR,
	user_name VARCHAR,
	avatar_url TEXT,
	location VARCHAR,
	join_date DATETIME
);

CREATE TABLE categories (
	id INTEGER PRIMARY KEY,
	name VARCHAR
);

CREATE TABLE articles_users (
	id INTEGER PRIMARY KEY,
	edited_at DATETIME,
	user_id INTEGER REFERENCES user(id),
	content_id INTEGER REFERENCES content(id)
);

CREATE TABLE articles_categories (
	category_id INTEGER REFERENCES categories(id),
	article_id INTEGER REFERENCES articles(id)
);