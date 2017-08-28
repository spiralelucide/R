swirl()
10
#lapply and sapply

#head displays the first 6 items of each column
head(flags)
dim(flags)
class(flags)
#lapply (loop/list apply) takes a list as input, applies a function to each element in the list, returns a list of the same length as the original
#data frame is a list of vectors 
cls_list <- lapply(flags,class)
cls_list
class(cls_list)
as.character(cls_list)
#sapply (simplify) calls lapply and attempts to simplify
cls_vect <- sapply(flags,class)
class(cls_vect)
sum(flags$orange)
#columns 11-17 indicate possession of a color with 1, 0 means flag does not contain that color
flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
#sapply returns a vector when each element of the list is of length one
sapply(flag_colors, mean)

flag_shapes <- flags[,19:23]
#range() returns the minimum and maximum of its first argument 
lapply(flag_shapes, range)
#sapply returns a matrix when each element of the list is greater than 1 in length
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)

unique(c(3,4,5,5,5,6,6))
unique_vals <- lapply(flags, unique)
unique_vals
sapply(unique_vals, length)
sapply(flags, unique)

#Anonymous function with lapply
lapply(unique_vals, function(elem) elem[2])

