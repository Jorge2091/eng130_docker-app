/*
by Benedek Kovacs
*/

CREATE TABLE Users(
	user_id INT GENERATED ALWAYS AS IDENTITY,
	email VARCHAR(40) NOT NULL,
	password VARCHAR(60) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	phone_number VARCHAR(11) NOT NULL,
	is_admin BOOLEAN NOT NULL DEFAULT FALSE,
	password_reset VARCHAR(20) NOT NULL DEFAULT FALSE,
	PRIMARY KEY (user_id)
);

CREATE TABLE Sessions(
	session_id INT GENERATED ALWAYS AS IDENTITY,
	user_id INT NOT NULL,
	posting_date DATE NOT NULL DEFAULT CURRENT_DATE,
	posting_time TIME NOT NULL DEFAULT CURRENT_TIME,
	location VARCHAR(60),
	PRIMARY KEY (session_id),
	CONSTRAINT fk_user
	FOREIGN KEY (user_id)
	REFERENCES Users(user_id)
);

CREATE TABLE Videos(
	video_id INT GENERATED ALWAYS AS IDENTITY,
	video_title VARCHAR(60),
	location VARCHAR(60),
	user_id INT NOT NULL,
	video_link VARCHAR(200) NOT NULL,
	PRIMARY KEY (video_id),
	CONSTRAINT fk_user
	FOREIGN KEY (user_id)
	REFERENCES Users(user_id)
);
