# Movie Recommendation System - dotMovies

### This is an application for movies recommendation built on nodeJs and MongoDB 

###### This is a project named 'dotMovies' that is based on a dataset from Kaggle website

##### The main aim is to create a movie recommendation system that takes into account various factors such as:<br>
 ##### > Genre<br>
 ##### > Production Companies
 ##### > Production Countries
 ##### > Spoken Languages
 ##### > Cast
 ##### > Crew
 ##### > Belongs to a certain series of films(e.g : Avengers Series, Batman Series)
 ##### > Budget
 ##### > Original Language
 ##### > Popularity
 ##### > Runtime
 ##### > Status(e.g: Released, In Production, Post Production, Planned, etc)
 ##### > Title
 ##### > Average of all the votes
 ##### > Number of votes
 ##### > Ratings(These are different from Vote_avg as these were collected by the dataset creator)

###### *These all factors play a part in determining what all movies are related to one another

<br><br>

### Let's take an example:
If you choose "Avengers: Age of Ultron" you would probably get some movies around marvel productions like "The Avengers" as both of these have similar cast as well as director.

<br><br>

### How to start the server:

##### > Clone the repository into a folder
	git clone 

##### > cd into movieRecommendation

	cd movieRecommendation
##### > Give execution permissions to all the scripts
	chmod +x initiate.sh install.sh remove.sh run.sh stage.sh
##### > Run the executable initiate.sh
	./initiate.sh
##### > To remove the project and clean the environment run the executable remove.sh
	./remove.sh

<br><br>


### The execution of project is divided into 2 parts

#### Part 1 :

###### Data is parsed and saved to database and the server is up for the user to use.


### Part 2 (Experimental):

###### After the back-end server is up and running the back-end will perform some predefined function to calculate the recommendation for movies and cache them into a different collection in the database.

###### Now before fulfilling any kind of request the back-end will first check if the data that for the movie recommendation is present or not in the caching records.
###### If it is present the it will fetch the data from there.
###### Otherwise it will perform the whole calculation for that movie and cache that data to the collection in database.

<br><br>


#### Advantages for this type of approach
###### > This increases the speed and performance by a high margin when the server loads increases.
###### > It will save precious time for the users searching for the same record.

#### Disadvantages
###### > This can not be modeled in a situation where data is not static i.e. data is being collected from some other 'API' or database.
###### *Due to this disadvantage I haven't integrated the second part of the service into the project

<br><br>

### Usage :

##### This can be used in to ways :

##### > Get recommendation based on a particular movie.
##### > Get recommendation based on selection of particular genre's (*)

###### (*) - (This method will not provide better results because of the number of inputs being only singular)



### Assets taken from :

	//Movie Dataset downloaded from :
	https://www.kaggle.com/rounakbanik/the-movies-dataset

	//Dataset saved to Dropbox and can be reterived via this link :
	https://www.dropbox.com/s/x6igaz5gebabjzw/project.zip?dl=1

	//Frontend 'o' Circle symbol on pages '/home' and '/movie' taken from :
	https://fontawesome.com/
