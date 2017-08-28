#Looking at Data
12
ls()
class(plants)
#gives the number of rows(observations) and columns(variables)
dim(plants)
#gives the number of rows only
nrow(plants)
#gives the nubmer of columns only
ncol(plants)
#displays how much memory space the object is taking 
object.size(plants)
#returns character vector of column names
names(plants)
#previews the top 6 rows
head(plants)
head(plants, 10)
#previews the bottom 15 rows
tail(plants,15)
#displays the minimum, 1st quartile, median, mean, 3rd quartile, and maximum for numeric data
#displays the number of times each value (or 'level') occurs in the data for factor(categorical) variables
summary(plants)
#displays truncated values
table(plants$Active_Growth_Period)
#combines much of the above
str(plants)

