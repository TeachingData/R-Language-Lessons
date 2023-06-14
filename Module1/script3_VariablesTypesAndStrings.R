# Book: Chapter 4: 4.3, 4.3.1, 4.3.2
# Preface: This performs a few more operations with variables now using strings.

# Overview of Variables 2, strings: There are 6 basic types in R and we'll focus
## on the first 3 for now (last 3 are "logical", "raw", and "complex").
### - integer = integers (numbers without decimals)
### - numeric = all other numbers (decimals or floating point numbers)
### - character = an ascii or unicode character (text)

# Functions & operators used:
## cat() : concatenates a set of variables (and other data) to a single output
## is.numeric() and is.integer() : both of these check the variable's type
## class() : outputs the current type (class) of the variable
## round() : rounds the passed number to a set number of digits (second variable)
## as.integer() : changes value to integer value
## charToRaw() : returns the ASCII or Unicode value (integer) of its argument 
## nchar(): returns the "number of characters" in the passed text
## as.Date(): changes text (characters) to Date type

# Built-in variables:
## pi : not a function but a built-in variable (loaded by default)

################################################################################
#                       Actual script below                                    #
################################################################################

# So we used Triangles last time. Let's use a shape again with area
# Here we'll use cat to print out a literal string and the variable
# then again to show if its numeric and the current class (type)
shape <- "circle"
cat("We'll be calculating the area of a", shape)
cat("numeric?", is.numeric(shape), "it's a", class(shape))

# area of a circle = pi * r^2 (squared - ^ is exponent operator)
# so let's repeat the above in this case using cat with all of them
print("radius is 9 for this experiment.")
radius <- 9
area <- pi * radius^2

# Let's print it all out now
cat("numeric?", is.numeric(area), "it's really a", class(area), "\n", area)

## huh? But why - because R defaults to numeric over integer: use L to force it
cat(class(radius), ", integer is", is.integer(radius))
radius <- 9L
cat(class(radius), "is still numeric?", is.numeric(radius)) # True

#So be careful with is.numeric vs. is.integer, let's see if this changes things
## if we just re-run it area will still be a numeric (floating) type. To make it
## an integer we need to round and convert it.
area <- as.integer(round(pi * radius^2, 0))

cat("numeric?", is.integer(area), "but it's really an", class(area), "\n", area)

# as.TYPE : most types and classes have an as. function for conversion
## However, characters are a bit different - they actually have a numeric value
## based on their place on the ascii table (https://www.asciitable.com/).
## So let's look at as. functions, nchar, and charToRaw.

cat(shape, "has", nchar(shape), "characters.")
cat("The first letter of ", shape, "c has an ascii value of", charToRaw("c"))

# dates are used as characters for printing and Dates for math with as.Date
charToday <- "2023-06-14" # have to use dashes (-) over slashes
today <- as.Date(charToday) 

# because 1st prints 19522 over actual date (second)
cat("Today's date is", today) 
cat("Today's date is", charToday)
# or we have to use something like lubridate (a package we might see later)

# why do we even use date then? well what if we wanted to get a week ago's date?
print(today-7) # prints June 7th
print(charToday-7) # gives an error
