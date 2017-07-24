x <- c(2.23,3.45,1.87,2.11,7.33,18.34,19.23)
x
?ave()
ave(x, FUN = mean)
library(swirl)
#∑25 i=1, i^2
iter <- 1:25
iter^2
sum <- sum(iter^2)
sum
cars
class(cars)
cars[,2]
sum(cars[,2])
ave(cars[,2])
?which
which(cars[,2]==85)
library(swirl)
swirl()
Lucidity
3
1
1
5
x <- c(44, NA, 5, NA)
x * 3

y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y,z),100)
my_na <- is.na(my_data)
my_na
#NA is not really a value so == returns a vector of length my_data full of NA
my_data == NA
sum(my_na)
my_data
0/0
Inf-Inf
1
1
x[1:10]
3
2
#displays all the NA elements
x[is.na(x)]
#assigns to y all the values in the vector x that are !NA
y <- x[!is.na(x)]
y
y[y>0]
x[x>0]
x[!is.na(x) & x > 0]
x[c(3,5,7)]
#returns numeric(0)
x[0]

#returns NA
x[3000]

#negative index give all but what is negated
x[c(-2,-10)]
x[-c(2,10)]

vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)
vect2 <- c(11,2,NA)
names(vect2) <- c('foo','bar','norf')
identical(vect, vect2)
3
vect['bar']

vect[c('foo','bar')]
2
1
