# So let's start with where we were in the Lab
# Loading a file (csv) to a list and just looking at the data
# with their keys (columns) and the head function

# note this is a data frame not a list (use as.data.frame and it will say the same)
movies <- read.csv("data/Cleaned_tmdb_movies.csv")
head(movies$original_title)
typeof(movies)

head(movies$vote_count)

# Next we actually need to compare a few things 
# So we need to run SELECT queries! (yeah! SQL never dies!)

# This won't work (or depends on environment)
head(
  select(movies, original_title)
)

# Doesn't work because we need the data grammar package dplyr
# ...which is part of tidyverse
# REMEMBER when I said we'd have to load that alot
install.packages("tidyverse")
library(tidyverse)

# using select to only return 2011 movies with deplyr works much better
# type ??dplyr::select to see more
head(
  select(movies, original_title, release_date)
)

# Now let's use WHERE, but its not WHERE anymore its a FILTER (think Excel)
# for numbers its easy and a list is fine
head(
  select(
    filter(movies, popularity>100), 
      original_title, release_date
    )
)

# Unfortunetly it won't work with release_date (its a char)
# And its clunky - but R added something in 2017 which helps a lot
# It's called a data.table and it actually works like a TABLE!
library(data.table)
rm(movies)
movies <- fread("data/Cleaned_tmdb_movies.csv")
head(movies$original_title)
typeof(movies)

# the above seems the same (we could have used csvreader again too)
# but this is now an enchanced dataframe we call a data.table
# how can I tell? I have LIKE back

select(movies[release_date %like% "2011"], original_title, release_date)

### YEAH! Also I didn't use head cause I don't have too
select(movies[release_date %like% "2011"][1:6], original_title, release_date)

#This concludes Video 2



