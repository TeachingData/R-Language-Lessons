# Book Coverage: Chapter 4, 4.1 & 4.2 (Basics and Variables)
# Preface: This covers the basics of creating, assigning, and using variables
## with R. It also performs some basic Math operations (see 4.1) with variables.

# Overview of Variables: R is dynamically typed, which means variables can hold
## any valid type and change to a different type when needed.
## R can be considered "weakly" typed as well because of the above. Its not
## technically but the difference between "implicit conversion" and "weak" is
## way out of scope for this (feel free to look it up if you like programming).

# Functions & operators used:
## <- & assign() : both of these assign a value to a (new or existing) variable
## print() : outputs the results or value passed to the console
## rm() : "removes" a variable (erases it). 
##### Called remove because it "removes" it from memory.
## ls() : shows all objects in memory.
## sqrt() : its square root (of whatever passed)

################################################################################
#                       Actual script below                                    #
################################################################################

# Let's solve stuff using the Pythagorean theorem (c = sqrt(a^2+b^2))
# We'll use a = 3, b = 4 (so C must be 5)

# first let's get our a value
print("We will create and assign a as 3.")
a <- 3

# We could also use the assign operator but you won't see that much until vector
print("We'll use a function assign to create and set b as 4")
assign("b", 4)

# Let's make sure its correct
print(a)
print(b)

# Then add the sqrt and exponent operators (its power of 2 so just multiple)
c <- sqrt(a*a+b*b)
print(c)

# or we can remove c and just print it (last line will not show error)
# It will show "function().Primitive("c") as that's the c literal (the letter)
# This is usually the only place you see rm (for deleting temporary variables)
print(sqrt(a*a+b*b))
rm(c)
print(c)

## run ls() to really check or rm() again and you'll see the error
ls()  # shows "a" "b"
rm(c) # will error out
