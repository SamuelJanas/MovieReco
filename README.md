# Movie Recommendation System

Bruno Urbaniak & Samuel Janas

## Introduction

In this report, we present a movie recommendation system based on association rules and
the Apriori algorithm. The goal of the recommendation system is to provide personalised
movie recommendations to users based on their preferences and similar users'
preferences. The system takes into account user ratings and movie genres to generate
recommendations.

## Description

The movie recommendation system is implemented using Python and the MLxtend library.
The system utilizes a dataset consisting of movie ratings and movie information, including
genres.

## Experiment

1. Pre-processing: The movie and ratings datasets are loaded and pre-processed to
   prepare them for analysis. Genres are extracted from the movie dataset, and a
   threshold is applied to the ratings to identify movies that are liked by users.
2. Applying the Apriori Algorithm: The Apriori algorithm is used to identify frequent
   itemsets, which represent combinations of movies that are frequently liked by
   users. Association rules are then generated based on these frequent itemsets,
   taking into account the confidence threshold specified in the system parameters.
3. Generating User Recommendations: For each user, the system identifies movies
   that the user has already liked and uses the association rules to recommend similar
   movies. The recommended movies are filtered to remove those that have already
   been watched by the user or are already on their movie list.
4. Learning from Association Rules: The system analyzes the recommended movies for
   each user and determines the number of recommended movies. A histogram is
   generated to visualize the distribution of the number of recommended movies
   among users.
5. Improving Recommendations: To address the limitations of the initial approach, the
   system generalizes recommendations based on movie genres and average ratings.
   Bayesian average is used to calculate a more reliable rating measure, taking into
   account the number of ratings.
6. Recommending Movies Based on Genres: The system selects the top genres for
   each user and applies the association rules based on genres to recommend movies.
   The recommended movies are filtered to ensure they have not been watched by the
   user.
7. Bayesian Average and Movie Ranking: The system applies Bayesian average to
   calculate the average rating for each movie, considering the number of ratings. The
   movies are then sorted based on genres and ratings.
8. Generating Final Recommendations: The system combines recommendations based
   on association rules and genre-based recommendations. Movies are recommended
   based on genres, prioritizing those with higher ratings

## Conclusion

The movie recommendation system based on association rules and the Apriori algorithm
provides personalized movie recommendations to users. By incorporating genre-based
recommendations and Bayesian average ratings, the system overcomes some of the limitations
of the initial approach. The system takes into account user preferences, movie genres, and
ratings to generate relevant and diverse recommendations. The effectiveness of the system can
be further improved by considering additional factors such as user demographics, movie release
dates, and collaborative filtering techniques.
