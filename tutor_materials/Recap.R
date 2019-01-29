# Trainer R-Recap file (Original version by Hugo Tavares)
# Hopefully insightful comments by Mark Fernandes CRUK-CI

#Assigning a value to a variable with <-
# 53.351 'flows' into the x variable & deletes 
#any previously value stored in x (so be careful)
x <- 53.351

#Functions
round(x)   # round the the value of x

#Show function with multiple parameters 
#- can demo order as well
round(x, digits = 1) # round to one decimal point
#getting help on a function and its parameters
?round
args(round)

# Vectors - cornerstone of R data structures
x_chr <- c("dog", "cat", "goldfish")   # character vector
x_num <- c(1, 5, 23.3, 55.2)           # numeric vector
x_log <- c(TRUE, TRUE, FALSE, TRUE)    # logical vector

#Indexing into vectors in base R
x_chr[2] # get the 2nd element of our vector

#Index multiple values using c() construct
x_num[c(2, 4)] #get 2nd & 4th elements

#We can use logical vectors to facet data in vectors
x_num > 20                # Conditional: is x_num greater than 20

x_num == 5                # is x_num equal to 5

x_num %in% c(20, 30, 1)   # is x_num contained the vector on the right

# Combine conditions with & (logical AND) 
# and | (logical OR)
x_num >= 10 & x_num <= 30   # is x_num greater than or equal to 10 AND smaller than or equal to 30

x_num < 10 | x_num > 30   # is x_num smaller than 10 OR greater than 30

# Logical sub-setting - VERY USEFUL TECHNIQUE!
x_num[x_num > 20]   # return values of x_num where x_num is greater than 20

# Dataframes - tabular object (rows and columns). 
# Heavily-used R data structure...
# Usually we create these from a file with e.g. read.csv()

# Add option to turn off behaviour of converting strings
#to factors - we will return to factors in ggplot lesson
surveys <- read.csv("Portal_rodents_19772002_scinameUUIDs.csv",
                    stringsAsFactors = FALSE)
#NB This assumes that the data file is in MY current
#working directory - you may have to supply a path.

# We can subset data.frames using [rows, columns]
surveys[1:6, c(5, 11)]   # rows 1 to 6 and columns 5 and 11

# We can access individual columns by name using $
surveys$species   # returns a vector with the values of the species column

#Dealing with missing data -
# Sometimes we have missing values, encoded as NA
y <- c(23, 44, NA, 212)

mean(y)   # returns NA - R doesn't know how to handle the NA

# Lets omit the missing values
mean(y, na.rm = TRUE)  # removes NA and then calculates mean

# is.na - create a logical that is true if value is missing
is.na(y)

# Negate that expression using ! (logical NOT operator)
!is.na(y)

# We can remove NA by using this function:
y[!is.na(y)]  # return values of y that are not missing

## End of recap session - please ask any questions
# before we move on...