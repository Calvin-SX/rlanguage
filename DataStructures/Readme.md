# R Data strucgtures

## Vectors
Use the c() function to create a vector.
Vector can only store the same data type.
```r
v = c("a", 100) # this will convert 100 into "100", so the whole thing is a list of string
```
Vector has length
```r
v <- c(1,2,3)
length(v)
```

# List
Use list() function to create a list. List can store different data type.
```r
l <- list(1, "apple")
length(l)
l[1] # 1-based index access. l[0] doesn't exist

# append to the end a list
append(l, "Hello")

# can append to a location
append(l, "Hi", after=1)

# remove from a list. Pay attention to this. This is different from python
newlist <- l[-1] # this removes the first element from l and assign to newlist
```
The `l[-1]` notation is new for R, and it is different from python!

## join two list
Use c function to join two list. Note here there is something special.

### c to join data type
```r
v = c(1, "2") # this will conver 1 into "1", and return a vector of ("1", "2")
class(v) # this will show the data type of an element. Here is "charactor" for v
```

### c to join list
``` r
l1 = list(1,2)
l2 = list("Hi")
l3 = c(l1, l2) # This won't convert 1 and 2 into "1", and "2". l3 is still a list
class(l3) # this shows as list. 
```

## Matrices
Use c function to create a matrix
```r
m <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
```
If length(c)!=nrow*ncol, it will try its best to create a matrix and shows a warning message. Trying it best means it will truncate if too much data, or duplicate if not enough.

### Access matrix
```r
m[1,2] # an element
m[1,] # a row
m[,2] # a col
m[c(1,2),] # two rows
```

### Expand a matrix
Use cbind() to add a new col and rbind() to add a new row.
```r
# sample code
m <-matrix(c(1,2,3,4), nrow=2, ncol=2) # this one creates a 2x2 matrix
m1 <- rbind(c(5,6), m) # this one adds a new row on top of the matrix m
```
If the new vector does fit the matrix, you will get an error.

### Reduce a matrix
The idea is the same as removing element in a list. Just keep in mind that matrix is a 2D object. If just remove a row, we still need to specify the col. See the following example
```r
# create  a matrix
m <- matrix(c(1,2,3,4), nrow=2, ncol=2)

# this only remove one element because we doing it like a list. NOT the way we want
mr <- m[-1] # here we only specify one dimension. This will convert the matrix into a list, and the first element will be remove

# the correct way to remove a row is do it in a 2D way
mr <- m[-1,] # here we are saying we remove the first row, and do NOTHING to the col

# Or we can do both the row and col at the same time
mr <- m[-1, -1] # remove the first row and first col

# Just like the list, we can remove multiple rows. Use c function
mr <- m[-c(1,2), ]

# so we can see -1 is just a special case, or we can do this
mr <- m[-c(1), ] # this is the same as m[-1,]
```

### dimension/size of a matrix
Use the `dim()` function
```r
m <- matrix(c(1,2,3,4), nrow=2, ncol=2)
d <- dim(m)
l <- length(m) # length will give the total count of elements
```

### Loop through a matrix
Use `nrow(m)` and `ncol(m)` to find the # of rows and # of cols. Then we can loop through a matrix.
```r
    for (row in 1:nrows(m)) {
        for (col in 1:ncol(m)){

        }
    }

```
### Combine two matrices
`rbind` and `cbind` work for matrix as well, in additional to vectors. Here vector is just a nx1 matrix. So binding a vector is the same as binding a matrix in this sense.

## Arrays
Here vector is one dimension, matrix is 2D, and array is for more than 2D.
Use the `array()` function to create an array, and uses its `dim` argument to specify the dimension.
```r
data <- c(1:24) # an vector of 24 elements. Will use it to create a 4x3x2 array. 4x3x2=24

marray <- array(data, dim=c(4,3,2))

m <- marray[1,,] # take an intersection as a 2x2 matrix
```

To loop through an array, use `dim(arr)` function to get the dimension. 

# Data Frame
Data frame refers to data organized as a table
```r
df <- data.frame(Type=c("Req", "Link"), Required=c(TRUE, FALSE), TIME=c(10,20))
df
df[["Time"]]
df@Time

```

## Factors
Facctors are like enum in C++.

```r
req_status <- factor(c("Draft", "Reviewed", "Implemented", "Verified"))
```


