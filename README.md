# ETL_project

Customer: Movie producer who is looking to produce a film. He requested his research team to look into films that had good reviews and also look into actors that can be considered to cast in the movie.

Requirement: 
1. Table of data that would show movie title, ratings, etc.
2. Table of data with a list of actors, date of birth, movies they have been on and awards

## EXTRACT
Data Sources:
IMDB API
 Two sections used:
    - list of the top 250 movies
    - list of the most popular movies

IMDB Website 
Link: (https://www.imdb.com/list/ls058011111/?sort=list_order,asc&mode=detail&page=1)
    - web scraped the date of birth for each actor/actress 
    - only scraped for the first 100 actors/actresses

Kaggle
CSV file containing a list of 100 greatest Hollywood actors

## TRANSFORM
### Movie List
1. Performed GET requests to extract data from the API in JSON format. 
2. Create empty lists to store the data.
3. Map the data to be able to extract the information required from the JSON text.Loop through the data to extract the information required. I made 2 API GET requests which gave me the top 250 movies and most popular movies.
4. Transform the lists into dataframes. 
5. Merge the movie dataframes from the API to create a single dataframe. This would provide the client a table where they can perform an analysis on which movies have performed well in the past years.
6. One of the columns had both the director and actor information. I split the director from the actors and dropped the original column. 

### Actor List
1. Web scraped the IMDB website to get the date of birth for each of the top actors/actresses. Using BeautifulSoup to extract the information and splinter to go through the different pages.
2. Stripped off any HTML tags and replaced new lines.
3. I added an age column into the dataframe using the DOB column in my calculation. The client would be able to utilise this information if they needed actors on a certain age.
4. Utilised data from a csv file that had awards and greatest performances for each actor.
5. Merged the web scraped data and csv file to create an actor dataframe. This would now be able to help the client complete an analysis on actors that they can consider to include in their upcoming movie.

## LOAD
1. Created movies_db as the database in SQL
2. Created two tables, one for the movie data and another for the actors. 
3. Loaded both dataframes from Pandas into two separate tables in SQL.
4. Check that the data have been loaded into the tables in SQL.

The reason I chose to load it into SQL is because relationships can be formed between my tables. As an example, if the client wanted to see which movies the actors have performed on, there is actor data on both tables.

### Limitations

With the given information I do think that the client would be able to complete their research and data analysis. 
If I had more time, I can source more data and create a more relational database.
=======
