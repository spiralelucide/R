
### IMPORTANT !!! ###
# change the path to your directory
setwd("~/Google Drive/RLadiesColumbus/RIntro/Sessions/Session 2/")

## ---- eval=F-------------------------------------------------------------
## # this is for Mac/Linux
## setwd("~/change/this/path/to your/Session 3 folder path")
## 
## # this is for windows
## setwd("C:/change/this/path/to your/Session 3 folder path") # note / instead of \ in windows

## ------------------------------------------------------------------------
weather <- read.table("./weather.txt", # path to file
                      sep="\t",        # delimiter set to tab
                      header = T,      # file has header, T is same as TRUE
                      stringsAsFactors = F) # set strings as character
head(weather, 3) # show first 3 rows

## ------------------------------------------------------------------------
weather <- read.table("./weather.txt", # path to file
                      sep="\t",        # delimiter set to tab
                      header = T,      # file has header, T is same as TRUE
                      stringsAsFactors = F, # set strings as character
                      na.strings = ".") # periods are missing values, read them as NA !
head(weather, 3) # show first 3 rows

## ------------------------------------------------------------------------
wages <- read.table("./wages.csv", 
                      sep=",",         # delimiter set to comma
                      header = T,      # file has header, T is same as TRUE
                      stringsAsFactors = T) # set strings as factor
head(wages, 3)

wages2 <- read.csv("./wages.csv", 
                   header = T, 
                   stringsAsFactors = T) 
head(wages2, 3)

