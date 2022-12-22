-- QA Database
DROP DATABASE IF EXISTS QA;

CREATE DATABASE QA;

-- Questions Table
DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
  id  SERIAL PRIMARY KEY,
  product_id integer,
  body TEXT,
  date_written TEXT,
  asker_name VARCHAR(20),
  asker_email VARCHAR(20),
  reported BOOLEAN,
  helpful integer,
);
-- Answers Table
-- id,question_id,body,date_written,answerer_name,answerer_email,reported,helpful
DROP TABLE IF EXISTS answers;

CREATE TABLE answers (
  id SERIAL PRIMARY KEY,
  question_id integer REFERENCES questions (id),
  body TEXT,
  date_written TEXT,
  answerer_name VARCHAR(20),
  answerer_email VARCHAR(20),
  reported BOOLEAN,
  helpful integer,
);

--Photos Table
-- id,answer_id,url
DROP TABLE IF EXISTS photos;

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  answer_id integer REFERENCES answers (id),
  url VARCHAR(20),
);
