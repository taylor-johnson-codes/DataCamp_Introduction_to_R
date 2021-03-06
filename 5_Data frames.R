# A data frame is a 2-D object that can hold numeric, character or logical (true/false) values.
# Within a column all elements have the same data type, but different columns can be of different data types.
# There is one observation per row in a data frame.
# Use data.frame() to create a data frame.

# Print out built-in R data frame
mtcars 

# head() prints the first observations
# tail() prints out the last observations 

head(mtcars)
tail(mtcars)

# Investigate the structure of mtcars
str(mtcars)

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df

# Check the structure of planets_df
str(planets_df)

# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]

# Select first 5 values of diameter column
planets_df[1:5, "diameter"]

# Select the rings variable from planets_df
rings_vector <- planets_df$rings
rings_vector  # prints all TRUE/FALSE values

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector,]  # prints all plant info only for planets where it's TRUE for rings

# subset() function
# The first argument of subset() specifies the dataset for which you want a subset. 
# By adding the second argument, you give R the necessary information and conditions to select the correct subset. 

# Doing what was done above, but with subset():

# Select planets with diameter < 1
subset(planets_df, subset = diameter < 1)

# The order() function gives you the ranked position of each element when it is applied on a variable.

# Play around with the order function in the console
a <- c(100, 10, 1000)
order(a)  # prints 2 1 3
a[order(a)]  # prints 10 100 1000

# Use order() to create positions
positions <- order(planets_df$diameter)
positions  # prints 1 4 2 3 8 7 6 5

# Use positions to sort planets_df
planets_df[positions, ]  # prints all planet info in order of smallest diameter to largest