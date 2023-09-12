# These are the commands used for the first lesson
# They were performed over the CLI (Command Line Interface)
# As such, they will likely not output correctly if ran directly as a script
####################################
# Required package installation: ggplot2

# just showing output and basic math operators
1+2*-3
4/3

# Assignment operator (<-) to create variables
max_score <- 42
your_score <- 29

# use of variables directly and with first built-in function
your_score/max_score
your_score/max_score * 100
round(your_score/max_score * 100, 0)

# creating a vector of student heights (random data)
heights <- c(67,78,75,72,71,68,66,65,75,72,67,61)
heights

# aggregated functions with vector
sum(heights)
length(heights)
sum(heights)/length(heights)
mean(heights)

sd(heights)

# plotting heights as a count of heights (frequency chart)
plot(heights) # just makes scatter plot
count_heights <- table(heights)
plot(count_heights)
plot(count_heights, col="green")

