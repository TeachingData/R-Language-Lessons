# install our packages
install.packages("tidyverse")
library(tidyverse)
library(data.table)

# Load data frame
movies <- fread("data/Cleaned_tmdb_movies.csv")
# if only using a data frame - ugly and this didn't work
head(movies[order(movies$title, decreasing=TRUE)])

# if using a data table - works and easy
setorder(movies,id)
head(movies)

# type ??library::function (??dplyr::select)
# we need SELECT id, title, release_date FROM movies LIMIT 6;

# head( # don't need with data table
  select(movies, id, title, release_date)[1:6]
#)
  
library(ggplot2)
select(movies[release_date %like% "2011"][1:6], original_title, release_date)
select(movies[release_date %like% "2011"], revenue)

15/5
mean(c(2,3,4,5))

# using our select to find the mean
mean(select(movies[release_date %like% "2011"], revenue)$revenue)

# What I did above but with a temp variable
rev2011 <- select(movies[release_date %like% "2011"], revenue)
rev2011$revenue
mean(rev2011$revenue)

summary(select(movies[release_date %like% "2011"], revenue))

summary(movies$vote_average)
total = 0

for(year in c('2000', '2001', '2002', '2004',
              '2005', '2006')) 
{
  print(year)
  tempyear <- select(movies[release_date %like% year], revenue)
  print(summary(tempyear))
  total <- total + mean(tempyear$revenue)
}

print(total)


# Start Video 2.5
# Select title, popularity, revenue FROM movies ORDER BY popularity
rm(top10) # not using - changing to 25
top25 <- select(
  movies[order(popularity, decreasing=TRUE)], title, popularity, revenue
)[1:25]
top25

# histogram or scatter, histogram normal
barplot(top25$popularity[1:4], names.arg = top25$title[1:4])
barplot(top25$popularity, names.arg = top25$revenue) #this is very misleading
# don't use barplots (histograms) for quantitive data unless you check it

#scatter plot
plot(top25$popularity, top25$revenue)

  


