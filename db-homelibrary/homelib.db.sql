BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "book" (
	"title"	TEXT,
	"author_first_name"	TEXT,
	"author_last_name"	TEXT,
	"published_day"	NUMERIC,
	"published_month"	NUMERIC,
	"published_year"	NUMERIC,
	"book_id"	INTEGER NOT NULL,
	PRIMARY KEY("book_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "reader" (
	"first_name"	TEXT,
	"last_name"	TEXT,
	"day_date_of_birth"	INTEGER,
	"month_date_of_birth"	INTEGER,
	"year_date_of_birth"	INTEGER,
	"gender"	TEXT,
	"reader_id"	INTEGER NOT NULL,
	PRIMARY KEY("reader_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "comments" (
	"rating"	INTEGER,
	"day_started"	INTEGER,
	"month_started"	INTEGER,
	"year_started"	INTEGER,
	"day_finished"	INTEGER,
	"month_finished"	INTEGER,
	"year_finished"	INTEGER,
	"book_id"	INTEGER NOT NULL,
	"reader_id"	INTEGER NOT NULL,
	"comment_id"	INTEGER NOT NULL,
	PRIMARY KEY("comment_id"),
	FOREIGN KEY("book_id") REFERENCES "book"("book_id"),
	FOREIGN KEY("reader_id") REFERENCES "reader"("reader_id")
);
INSERT INTO "book" VALUES ('Frankenstein','Mary','Shelley ','','',1818,1);
INSERT INTO "book" VALUES ('The Blazing World','Margaret ','Cavendish ','','',1666,2);
INSERT INTO "book" VALUES ('Foundation','Isaac','Asimov','','',1951,3);
INSERT INTO "book" VALUES ('Solaris','Stanislav','Lem','','',1961,5);
INSERT INTO "book" VALUES ('The Stars My Destination','Alfred','Bester','','',1957,6);
INSERT INTO "book" VALUES ('Dune','Frank','Herbert','','',1965,7);
INSERT INTO "book" VALUES ('The Moon is a Harsh Mistress','Robert','Heinlein','','',1966,8);
INSERT INTO "book" VALUES ('Ice','Anna','Kaven','','',1967,9);
INSERT INTO "book" VALUES ('The Left Hand of Darkness','Ursula','Le Guin','','',1969,10);
INSERT INTO "reader" VALUES ('Danny','Röhl',1,1,2001,'m',1);
INSERT INTO "reader" VALUES ('Toni','Tapalović',2,2,2002,'m',2);
INSERT INTO "reader" VALUES ('Hermann','Gerland',3,3,2003,'m',3);
INSERT INTO "reader" VALUES ('Tanguy','Nianzou',4,4,2004,'m',4);
INSERT INTO "reader" VALUES ('Jérôme','Boateng',5,5,2005,'m',5);
INSERT INTO "comments" VALUES (5,1,10,2020,6,10,2020,1,2,1);
INSERT INTO "comments" VALUES (4,4,10,2020,12,10,2020,2,1,2);
INSERT INTO "comments" VALUES (3,15,10,2020,19,10,2020,3,2,3);
COMMIT;
