# Preface: 
## R loads a very minimal set of libraries by default.
## This helps avoid memory, speed, and other load issues when dealing
## with "big data" systems (and in general). Despite this there are a
## number of libraries which one can use with R to help improve code
## or perform operations.

#Packages used dslabs & tidyverse:
## Tidyvers library is used by many when developing R code as it provides
## more details on syntax errors, highlights and warns about bad
## practices, and tools such as 'pipes' which we cover later.

## dslabs library contains 26 datasets created by Havard (Irizarry & Gill) for 
## teaching data analysis. Full package notes see: 
## https://cran.r-project.org/web/packages/dslabs/index.html

# To load a "standard" package (we'll cover custom later) you use:
install.packages("tidyverse")

# To see all installed packages just use the function without argument
install.packages()

# Now we need to load the data - so we'll try that with another simple command:
#data(brexit_polls) #should load the brit exit poll numbers but doesn't

# If you need to install multiple you can use a vector (see: data types script)
## NOTE: The dslabs will download a number of zips and unzip them (75Mb):
### The datasets themselves and Linux tooks built-in R for our standalone use
install.packages(c("tidyverse", "dslabs"))

# Let's try loading that data now:
#data(brexit_polls) #still fails!?

## The above command fails because we loaded the package but not the library!
library(dslabs)
data(brexit_polls)

# data (when ran like above, without assignment) 
## will use the dataset name as the variable name
# Enter brexit_polls. <- and you'll see overview in RStudios
# or get the first few results with:
head(brexit_polls)

# Above should show a bunch of data from 2016 which we are now ready to use!

#### We can also load data from files like CSVs
# Using the players.csv file in datasets we can load it with default settings like:
players <- read.csv(file='datasets/players.csv')

# Then print out all of the (cause less than 6) with:
head(players)

# Or print out just the first column with:
players[1]

# Or print out all items of the 2nd column with:
players[2,]

