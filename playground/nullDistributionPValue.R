dat <- read.csv('femaleMiceWeights.csv')
View(dat)
control <- filter(dat, Diet == 'chow') %>% select(Bodyweight) %>% unlist
treatment <- filter(dat, Diet == 'hf') %>% select(Bodyweight)%>% unlist 
observation <- abs(mean(treatment) - mean(control))
population <- read.csv('femaleControlsPopulation.csv')
population <- unlist(population)
mean(sample(population, 12))
mean(population)
set.seed(1)
samp <- sample(population, 5)
abs(mean(samp) - mean(population))
set.seed(5)
samp <- sample(population, 5)

#null hypothesis is true
control <- sample(population, 12)
treatment <- sample(population, 12)
abs(mean(control) - mean(treatment))

n <- 10000
nulls <- vector('numeric', n)
#for loop generating 10,000 samples generating a distribution of sampling differences
for(i in 1:n){
  control <- sample(population, 12)
  treatment <- sample(population, 12)
  nulls[i] <- mean(control) - mean(treatment)
}
#p-value, in this case the percent of null samples(difference in control samples) that were larger than the observed difference
mean(abs(nulls) > observation)
hist(nulls)

#exercises
x <- unlist(population)
set.seed(1)

#1000 samples of 5 randomly selected mice
n<- 1000
samples <- vector('numeric',n)
for(i in 1:n){
  samples[i] <- mean(sample(x, 5))
}
#proportion of averages that are more than 1 gram away from the average of x
mean(abs(samples - mean(x)) > 1)

#for a sample of 10,000
n<- 10000
samples <- vector('numeric',n)
for(i in 1:n){
  samples[i] <- mean(sample(x, 5))
}
#proportion of averages that are more than 1 gram away from the average of x
mean(abs(samples - mean(x)) > 1)

#1000 samples of 50 randomly selected mice
n<- 1000
samples <- vector('numeric',n)
for(i in 1:n){
  samples[i] <- mean(sample(x, 50))
}
#proportion of averages that are more than 1 gram away from the average of x
mean(abs(samples - mean(x)) > 1)

