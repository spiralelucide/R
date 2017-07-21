swirl()
11
#vapply and tapply
#Split-Apply-Combine methodology
sapply(flags, unique)
#vapply is like sapply with the added requirement of what is expected
vapply(flags, unique, numeric(1))
ok()
sapply(flags, class)
vapply(flags, class, character(1))
#vapply is safer when writing scripts/functions since you have to be explicit in what you would like and will throw an error if mismatched

?tapply
#tapply is able to split the data into groups based on the value of some variable, then apply the function to each group
table(flags$landmass)
table(flags$animate)
#proportion of flags containing an animate image within each landmass group
tapply(flags$animate,flags$landmass,mean)
#summary of population values for countries with and without the color red on their flag
tapply(flags$population, flags$red, summary)
#summary of population values for each of the six landmasses
tapply(flags$population,flags$landmass, summary)
3
