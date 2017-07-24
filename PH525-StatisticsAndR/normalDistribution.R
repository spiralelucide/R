library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )
View(read.csv(filename))
set.seed(1)

#1000 random samples of 5 mice
m<- 1000
samples5 <- vector('numeric',m)
for(i in 1:m){
  samples5[i] <- mean(sample(x, 5))
}
#1000 random samples of 50 mice
n<- 1000
samples50 <- vector('numeric',n)
for(i in 1:n){
  samples50[i] <- mean(sample(x, 50))
}
hist(samples5)
hist(samples50)

mean(samples5)
sd(samples5)

mean(samples50)
sd(samples50)

#proportion of mice average bodyweight between 23g and 25g
x <- mean(23 - samples50 >= 0)
y <- mean(25 - samples50 > 0)
y-x

#proportion of values below 25
x <- pnorm(25, mean = 23.9, sd = 0.43)
#proportion of values below 23
y <- pnorm(23, mean = 23.9, sd = 0.43)
#proportion of mice average bodyweight between 23g and 25g
x-y
