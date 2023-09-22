library(tidyverse)
library(data.table)

# See LegoPollResults - we need to make this table
# see https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html
# THESE ARE ALREADY cross-tabulated = it is a contingency table based on the counts of each combination of choices
legos <- data.table(
  ages = c("1+", "5+", "7+", "10+", "13+", "18+"),
  duplo = c(38,12,5,0,0,0),
  junior = c(20,30,53,12,0,0),
  classic = c(3,15,28,66,42,38),
  dots = c(0,6,6,3,12,17),
  models = c(0,0,1,0,9,21),
  architecture = c(0,0,0,0,3,18),
  shadowbox = c(0,0,0,0,4,7)
)

# note the slight difference in structures returned
select(legos, ages)
legos$ages

legos[,ages]
# DT[i,j,by]
# i = subset of rows
# function to manipulate columns with
# grouping according to by

legos[!is.na(ages), ages]
legos[, .(ages,duplo)]

# This makes it interesting when we get to functions
sum(legos$duplo)
legos[,sum(duplo)]

# or even more interesting
legos[ages>"5"]
# Yes that's correct - because they are alphanumeric so only compare the first char
legos[,substr(ages,0,1)] # see 1 < 5

#So we need to convert that first field and (assuming we didn't make it)
# we might need to do it automatically (read from innermost to outermost):

# if #chars = 2 then return the first digit, else the first & second
# convert to integer
# := is called the walrus operator and says run this then set it

legos[,
      ages := as.integer(
        ifelse(nchar(ages) == 2, 
               substr(ages,0,1), substr(ages,0,2)
        )
      )
]

# NOW we can get the right values
legos[ages > 5]


# Means, medians, maxes and mins
summary(legos)

# Let's just compare the oldest & youngest groups
# I'll do youngest because I can (note the use of a "dot" to subset the variable)
# Also, I'll only use the duplo and junior set comparisions

legos.youngest <- legos[ages<7, .(ages, duplo, junior)] # ignore the ages for x2
legos.youngest

# run a inference chi (pronounced "kai") squared test
legos.youngest.test <- chisq.test(legos.youngest[,.(duplo, junior)])
legos.youngest.test

# just print the x-squared value
legos.youngest.test$statistic
