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
* complex. Interesting, r support complex number computation (+, -, *, /)
* character and string
* logical

Use 
```r
class(var) # show the type of variable var
```