DROP TABLE IF EXISTS contents;

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

CREATE TABLE contents_users (
	user_id INTEGER REFERENCES user(id),
	content_id INTEGER REFERENCES content(id)
);