# R language
This is going to follow [w3schools r tutorial](https://www.w3schools.com/r/) to do exercises and projects.

## Syntax

### string
Like python, text/string use both single and double quotes.

### variables
Variable is created when it is first assigned a value. 

Use "<-" to assign value, even though "=" is also acceptable in most of the time.

### Concatenate elements
Concatenate text using paste function.
```r
str2 <- paste("Hello", "World")
```
If you try to paste string with other kind of variable like integer, you will get an error.

### multiple variables
Assign multiple variables in one line
```r
a <- b <- c <- 10
```

### variable name convention
* Start with letter or ".". If starts with ".", next one must be a letter
* Combination with letter, ".", "_".
* Case sensitive

## Data Types
### Basic types
* numeric
* integer
* complex. Interesting, r support complex number computation (+, -, *, /). Tricky part here `10+i` means 10 plus a variable `i`. It is different from `10+1i`, which is a complex number.
* character and string
* logical

Use 
```r
class(var) # show the type of variable var
```

### data type conversion
Use
```r
as.integer
as.complex
as.integer
```
to do conversion into data type.

## Math

### basic built-in functions
* `max` and `min`
* `sqrt`
* `abs`
* `ceiling` and `floor`

## Strings
String can be  nultiline. A "\n" is used to replace the line break.
```r
str <- "First line
second line
third line"
```
Use `cat(str)` to show exactly what being input

### string length
Use 
```r
len = nchar(str)
```
It supports unicode. The function above gives correct count even for unicode string like Chinese.

Use 
```r
grepl(substr, str)
```
to check if str contains substr.

Use `paste` to merge strings.

### escape char
Use "\" for escape char. 

## Booleans
Boolean operations: ">", "<", "==", "!=", ">=",  "<=", "&&", "||", "!".

## Other operators
* +
* -
* *
* /
* ^ for power
* %% modulus
* %/% integer devision

## Misc operators
* ":" creates a series of numbers in a sequence: `x <- 1:10`
* "%in%" find out if an element in a vector: `x %in% y`
* %*% matrix multiplication, same as dot product?

## If statement
```r
if (a > b) {

} else if (a > c) {

} else {

}
```

## while and for loop
Use `next` for `continue`

For loop goes like
```r
for (i in 1:10){

}
```

## function
_NOTE_: the function syntax is little bit strange
```r
function_name <- function(param) {

}

function_name(a) # call the above function like this
```
See [firstScript.R](./firstScript.R) for example.