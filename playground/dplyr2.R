url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)
dat <- read.csv(filename)
View(dat)
class(dat)
primates <- filter(dat, order == 'Primates')
primates
nrow(primates)
class(primates)
totalSleep <- filter(dat, order == 'Primates') %>% select(sleep_total)
class(totalSleep)
mean(unlist(totalSleep))

