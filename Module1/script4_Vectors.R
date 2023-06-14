# Book: Chapter 4: 4.4 All but factors (coverd in module 2)
# Preface: This covers and overview of vectors (data structure).

# Vectors: Vectors are a dynamic, linear, data structure which holds
## a series of data of the same type.

# Functions & operators used:
## c() : the combine method (combines into single element) used to create vector
## append(): add element to the end of a data structure
## any() : checks if any elements in the passed data structure meet a condition
## all() : checks if all elements in the passed data structure meet a condition
## shortcut operator (:) : used to create a series of elements from start to end
## element access [] : access a single or multiple elements of a vector
## mean() : gets mathmatical average of passed structure
## median() : gets median of passed structure

################################################################################
#                       Actual script below                                    #
################################################################################

# Set a few vectors for (imaginary) poll results
ages = c(24,21,18,32,40,35)
marital = c("single", "single", "single", "divorced", "married", "married")

# any takes a single argument usually (some condition to check against a vector)
# all is the same. Difference is any = True if any true, All if ALL
print(any(marital == "widowed"))
print(any(marital == "single"))
print(all(marital == "single"))

# so different example with ages
print(any(ages>40)) #>= would give True because 'greater than or equal'
print(all(ages<50))

# but sometimes we don't have all the values, let's say we added one more:
ages <- append(ages, 48)
marital <- append(marital, "divorced")
print(marital)

# so we can work with vectors of the same length and perform several different
## operations (as long as same length) easily like:

# add one to each age (maybe we messed up when taking it and had a 0 index)
ages <- ages + c(1,1,1,1,1,1) #same length so add each element to each element
print(ages)

# some functions are automatic so we can just call them like nchar:
print(nchar(marital))

# head is usually the first 5 items of a structure so let's mimic that
print(length(marital)) # should have 7 now
print(marital[1:5])

# : is a shortcut that says from start to (:) end
# we can also just call an element directly - like print the second age with:
print(ages[2])
# or a few elements (2nd and 5th) with
print(ages[c(2,5)])

# that's about it for a basic vector intro (we'll use the a lot) but let's look
## at 2 basic functions: mean and median
# type help(mean) or help(median) on Console for more information

cat("Our average age is", mean(ages), "with a median of", median(ages))

