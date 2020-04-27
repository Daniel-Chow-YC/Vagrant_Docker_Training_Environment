# Postgres database with IMDB data

This is a simple project that will create a postgres database which contains a single table with approximately 5000+ records.

Example data below:

|movie_title|duration|color|director_name|actor_1_name|actor_2_name|actor_3_name|gross|genres|plot_keywords|language|country|content_rating|budget|title_year|imdb_score|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|Avatar|178|Color|James Cameron|CCH Pounder|Joel David Moore|Wes Studi|760505847|Action-Adventure-Fantasy-Sci-Fi|avatar-future-marine-native-paraplegic|English|USA|PG-13|237000000|2009|7.9|

# How to use

1) You will need docker installed locally.
2) Clone this repository
3) Access the root folder of this repository through the command line or powershell
4) Create the image by typing `docker build -t imdb_pgdb .` this will create the image with the data needed to seed the DB
5) Create your container using the following command `docker run -td --name imdb -p 5432:5432 imdb_pgdb`

## Accessing the database

The database uses the default details of:

username: `postgres`
password: `postgres`

The postgres port is 5432

The database is called `imdb` and the table `moviedata`. So, `SELECT * FROM moviedata;` should return all records.

## Full stack app

If you wish to use the DB alongside a servicing API checkout this project [https://github.com/spartaglobal/imdb_docker_stack](https://github.com/spartaglobal/imdb_docker_stack)