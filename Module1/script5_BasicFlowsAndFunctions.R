# Book: Chapter 9: 9.1,9.2,9.3 If, if/else, else if, and switch
# Preface: Covers the basic data flows and how to use basic functions.
### NOT Create them: We've actually been using them from start but now we'll see
### How they work.

# Data Controls Flows: these act as gates changing the flow of a program. They
## evaluate a parameter and determine a course of action based on it.

# Functions : A (typically) named and separated part of a program that performs 
## work and returns the result of the work.

################################################################################
#                       Actual script below                                    #
################################################################################

# Our first function! (its pretty dumb so we'll call it Patrick)
## We will also not be tested on functions this Module but knowing what they 
## look like will make later portions easier
Patrick <- function(phrase) {
  if (phrase == "is this the krusty krab?") {
    print("No! This is Patrick!")
  } else {
    print("I am not a krusty krab.")
  }
}

# Functions are fun and we've used several of them (mean, nchars, print, etc.)
# Our Patrick function shows how they work: 
## 1. they take an arguement (or many)
## 2. they process it (in this case evaluate it)
## 3. they return the results (in this case printing a statement)

# so to call a function we just have to use it's name and pass the expected args
Patrick("Hello?")
Patrick("is this the krusty krab?")

# Our function also shows one of two essential Boolean evaluation control flows
# 1. if/else if/else statements (called "if then" or "if else" statements)
# 2. switch statements

# if - evaluates something and determines if true then do this else do that
# note: the use of {} (brackets) to denote which part of statement everything is
x <- 7
if (x > 10) {
  print("how'd you get here?")
} else if (x == 7) {
  print("Lucky number!")
} else {
  print("not lucky, sorry")
}
### Change x to see how it changes the results

# switch - evaluates value of variable and takes different actions based on that
# switch is used when you want to match more exact values (over a range)
## this has many (more complicated) usages which we will look at later
## for now we just need the basic examples (using a number & character)

# This switch prints something different for 1-4 then same message for all else

isanumber <- switch(x, 
               "1" = "The loneliest number",
               "2" = "That's all you need to Tango",
               "3" = "A crowd",
               "4" = "All terrain",
               "too larger, I give up")
print(isanumber)

# or using a character from the beginning - change as you want
# use your name and add a match for your name
name <- "Name Here"
print(switch(substring(name, 1, 1),
             "A" = "All righty!",
             "H" = "Hi-didly Ho, neighborino",
             "B" = "Hi Bob", 
             "J" = "I like kangaroos",
             "Lucky, I don't have a silly phrase for your letter"
             ))