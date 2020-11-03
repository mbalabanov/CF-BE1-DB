# DB Concept

Commands used to creat database and tables.

```
CREATE TABLE "reader" (
	"first_name"	TEXT,
	"last_name"	TEXT,
	"day_date_of_birth"	INTEGER,
	"month_date_of_birth"	INTEGER,
	"year_date_of_birth"	INTEGER,
	"gender"	TEXT,
	"reader_id"	INTEGER NOT NULL,
	PRIMARY KEY("reader_id" AUTOINCREMENT)
);

CREATE TABLE "book" (
	"title"	TEXT,
	"author_first_name"	TEXT,
	"author_last_name"	TEXT,
	"published_day"	NUMERIC,
	"published_month"	NUMERIC,
	"published_year"	NUMERIC,
	"book_id"	INTEGER NOT NULL,
	PRIMARY KEY("book_id" AUTOINCREMENT)
);

CREATE TABLE "comments" (
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
	FOREIGN KEY("book_id") REFERENCES "book"("book_id"),
	FOREIGN KEY("reader_id") REFERENCES "reader"("reader_id"),
	PRIMARY KEY("comment_id")
);
```