# Load MASS package
library("MASS")
# Plot whiteside data
plot(whiteside)
names(whiteside)
plot(whiteside$Temp,whiteside$Gas)

# Plot Gas vs. Temp
plot(whiteside$Temp, whiteside$Gas, 
     xlab="Outside temperature", 
     ylab="Heating gas consumption")

#One of the key features of the plot() function is that it is generic, meaning that the results of applying the function depend on the nature of the object to which it is applied.
#In the first exercise of this chapter, applying the plot() function to the whiteside data frame resulted in a plot array. Here, we obtain a fundamentally different kind of 
#result when we apply the same function to Insul, 
#a factor variable from the same data frame.

# Apply the plot() function to Insul
plot(whiteside$Insul)

?abline()

data("Cars93")
head(Cars93)
names(Cars93)

# Plot Max.Price vs. Price as red triangles
plot(Cars93$Price, Cars93$Max.Price,
     pch = 17, col = "red")

# Add Min.Price vs. Price as blue circles
points(Cars93$Price, Cars93$Min.Price,
       pch = 16, col = "blue")

# Add an equality reference line with abline()
abline(a = 0, b = 1, lty = 2)

# Load the robustbase package
library("robustbase")
data("Animals2")

# Set up the side-by-side plot array
par(mfrow=c(1,2))

# First plot: brain vs. body in its original form
plot(Animals2$body,Animals2$brain)

# Add the first title
title("Original representation")

# Second plot: log-log plot of brain vs. body
plot(Animals2$body, Animals2$brain, log="xy")

# Add the second title
title("Log-log plot")

# Load the insuranceData package
install.packages("insuranceData")
library("insuranceData")

# Use the data() function to get the dataCar data frame
data(dataCar)

# Set up a side-by-side plot array
par(mfrow=c(1,2))

# Create a table of veh_body record counts and sort
tbl <- sort(table(dataCar$veh_body),
            decreasing = TRUE)

# Create the pie chart and give it a title
pie(tbl)
title("Pie chart")

# Create the barplot with perpendicular, half-sized labels
#specifying las = 2 to make both sets of labels perpendicular to the axes, 
#and using cex.names = 0.5 to make the name labels half the default size
barplot(tbl, las = 2, cex.names = 0.5)

# Add a title
title("Bar chart")
