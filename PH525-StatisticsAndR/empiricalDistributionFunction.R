library(gapminder)
data("gapminder")
head(gapminder)
View(gapminder)
#life expectancies of each country for the year 1952
x <- filter(gapminder, year == 1952 ) %>% select(lifeExp)
x <- unlist(x)
#checking 
unique(gapminder$country)
length(x)
hist(x)
#calculating the empirical cdf or empirical distribution function for 40 yrs old
mean(x <= 40)
#calculating the ecdf for between 40 and 60
mean(x <= 60) - mean(x<=40)

#calculating with sapply
y <- 40
mean(sapply(x, function(x){mean(x<=y)}))

plot(ecdf(x))
