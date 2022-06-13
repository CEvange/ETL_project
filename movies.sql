DROP TABLE if exists top_movies;
DROP TABLE if exists top_actors;

CREATE TABLE top_movies(
	"Title" TEXT,
	"Year" TEXT,
	"IMDB_rating" TEXT,
	"Director" TEXT,
	"Actors" TEXT	
);

CREATE TABLE top_actors(
	"Name" TEXT,
	"oscars" INT,
	"oscar_nominations" INT,
	"golden_globes" INT,
	"golden_globe_nominations" INT,
	"greatest_performances" TEXT,
	"DOB" TEXT,
	"Age" INT
);

SELECT * from top_movies limit 5;

SELECT * from top_actors limit 5;