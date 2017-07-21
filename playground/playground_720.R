library(swirl)
rm(list =ls())
swirl()
7
#Matrices and Data Frames
my_vector <- 1:20
my_vector
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4,5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
my_matrix2 <- matrix(data=1:20,nrow = 4,ncol = 5)
identical(my_matrix, my_matrix2)
patients <- c('Bill','Gina','Kelly','Sean')
cbind(patients, my_matrix)
my_data <- data.frame(patients, my_matrix)
class(my_data)
cnames <- c('patient', 'age', 'weight', 'bp', 'rating', 'test')
colnames(my_data) <- cnames
my_data
2
1
8 
#swirl logical operators
TRUE == TRUE
(FALSE == TRUE) == FALSE
6==7
6<7
10<=10
4
1
5 != 7
!(5==7)
2
2
FALSE & FALSE
#Tests each case in the vector
TRUE & c(TRUE,FALSE,FALSE)
#Tests first case in the vecor
TRUE && c(TRUE,FALSE,FALSE)
#Tests each case in the vector
TRUE | c(TRUE, FALSE, FALSE)
#Tests first case in the vector
TRUE || c(TRUE, FALSE, FALSE)
5>8 || 6!=8 && 4>3.9
4
isTRUE(6>4)
1
identical('twins','twins')
1
xor(5==6,!FALSE)
1
ints <- sample(10)
ints
ints>5
which(ints>7)
4
any(ints<0)
all(ints>0)

