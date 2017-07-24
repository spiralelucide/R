install.packages('dplyr')
install.packages('downloader')
library(downloader)
#contains filter and select methods
library(dplyr)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- 'femaleMiceWeights.csv'
download(url, destfile = filename)
fMiceWeights <- read.csv(filename)
fMiceWeights[12,2]
fMiceWeights$Bodyweight[11]
length(fMiceWeights)
length(fMiceWeights$Bodyweight)
fMiceWeights
mean(fMiceWeights$Bodyweight[13:24])
?sample
set.seed(1)
sample(fMiceWeights$Bodyweight[13:24],1)
rm(fMiceWeights)
fMiceWeights <- read.csv(filename)
set.seed(1)
sample(fMiceWeights$Bodyweight[13:24],1)
View(fMiceWeights)

control <- filter(fMiceWeights, Diet == 'chow')
control
control <- select(control, Bodyweight)
?unlist
control <- unlist(control)

#with dplyr takes the above lines and simplifies into one line
control <- filter(fMiceWeights, Diet == 'chow') %>% select(Bodyweights) %>% unlist

mean(control)
