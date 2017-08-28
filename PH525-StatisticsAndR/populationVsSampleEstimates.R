library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- basename(url)
download(url, destfile=filename)
dat <- read.csv(filename) 
dat <- na.omit(dat)

#population vs sample mean and standard deviation for male mice diets
x <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
x
mean(x)
popsd(x)
set.seed(1)
samp1 <- sample(x,size = 25)
mean(samp)
y <- filter(dat, Sex=="M" & Diet=="hf") %>% select(Bodyweight) %>% unlist
mean(y)
popsd(y)
set.seed(1)
samp <- sample(y,size = 25)
mean(samp)
#y-(ybar) - x-(xbar)
popMean <- mean(y)-mean(x)
sampleMean <- mean(samp) - mean(samp1)
popMean - sampleMean

#population vs sample mean and sd for female mice diets

## x filters control
x <- dat %>% filter(Sex=="F" & Diet=="chow") %>% select(Bodyweight) %>% unlist
mean(x)
popsd(x)
set.seed(1)
samp1 <- sample(x,size = 25)
mean(samp1)

## y filters experimental group
y <- dat %>% filter(Sex=="F" & Diet=="hf") %>% select(Bodyweight) %>% unlist
mean(y)
popsd(y)
set.seed(1)
samp <- sample(y,size = 25)
mean(samp)
#y-(ybar) - x-(xbar)
popMean <- mean(y)-mean(x)
sampleMean <- mean(samp) - mean(samp1)
popMean - sampleMean
