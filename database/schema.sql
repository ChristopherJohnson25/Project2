DROP TABLE IF EXISTS contents;

CREATE TABLE contents (
	id INTEGER PRIMARY KEY,
	post TEXT,
	img_url TEXT,
	post_date DATE,
	edit_date DATE
);

CREATE TABLE users (
	id INTEGER PRIMARY KEY,
	user_name VARCHAR,
	avatar_url TEXT,
	join_date DATE
);

CREATE TABLE contents_users (
	user_id INTEGER REFERENCES user(id),
	content_id INTEGER REFERENCES content(id)
);