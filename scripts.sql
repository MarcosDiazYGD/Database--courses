CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "id_category" serial,
  "id_user" serial,
  "id_video" serial
);

CREATE TABLE "course_videos" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_video") REFERENCES "course_videos" ("id");


--  INSERT INTO 

-- user 1 
insert into users (
  name,
  email,
  password,
  age
) values ('Marco Diaz', 'progmarcosdiaz2022@gmail.com','gamercitoProgramador', 19);

-- user 2
insert into users (
  name,
  email,
  password,
  age
) values ('Martha Diaz', 'yamile@gmail.com','soyfea123', 19);
