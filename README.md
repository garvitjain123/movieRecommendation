# movieRecommendation

This is an app for movies recommendation based on either a particular movie or some genres 

This is a project named 'dotMovies' that is based on a dataset from Kaggle website

The main aim is to create a movie recommendation system that takes into account various factors such as :
 -> Genre
 -> Production Companies
 -> Production Countries
 -> Spoken Languages
 -> Cast
 -> Crew
 -> Belongs to a certain series of flims(Eg : Avengers Series, Batman Series)
 -> Budget
 -> Original Language
 -> Popularity
 -> Runtime
 -> Status(Eg: Released, In Production, Post Production, Planned, etc)
 -> Title
 -> Vote_Average
 -> Vote_Count
 -> Ratings(These are different from Vote_avg as these were collected by the dataset creator)

*These all factors play a part in determining what all movies are realted to one another

For eg:
If you choose 'Avengers: Age of Ultron' you would probably get some movies around marvel productions like The Avengers as both of these have similar cast as well as director.

How to start the server:

-> Clone the repository into a folder
	git clone 
-> cd into movieRecommendation
	cd movieRecommendation
-> Give execution permissions to all the scripts
	chmod +x initiate.sh install.sh remove.sh run.sh stage.sh
-> Run the executable initiate.sh
	./initiate.sh
-> To remove the project and clean the envirenment run the executable remove.sh
	./remove.sh


There is 2 parts to backend execution

Part 1 :

Data is parsed and saved to database and the server is up for the user to use.

Part 2 :

After the backend server is up and running the backend will perform some predefined function to calculate the recommendation for movies and cache them into a different collection in the database.

The backend will first check if the data that for the movie recommendation is present or not.
if it is present the it will simply take the data from there.
Otherwise it will perform the whole calculation for that movie and cache that data to the collection in database.

Advantages for this type of approach
-> This increases the speed and performace by a high margin when the server loads increases.
-> It will save precious time for the users searching for the same record.


Usage :

This can be used in to ways :

-> Get recommendation based on a particular movie.
-> Get recommendation based on selection of particular genre's (*)

(*) - (This method will not provide better results because of the number of inputs being only singular)



Assets taken from :

	//Movie Dataset downloaded from :
	https://www.kaggle.com/rounakbanik/the-movies-dataset

	//Dataset saved to Dropbox and can be reterived via this link :
	https://www.dropbox.com/s/bhfvylpttv1q3mx/the-movies-dataset.zip?dl=1

	//Frontend 'o' Circle symbol on pages '/home' and '/movie' taken from :
	https://fontawesome.com/
