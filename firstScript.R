# this is how a function is defined
foo <- function(a, b) {
  if (a > 5 && b < 200) {
  	print("True")
  } else {
  	print("Other")
  }
  # function can return _a_ value. 
  # if more is needed
  # a. return a list if they are the same data type
  # b. return a struct?
  return (a + b)
}

# this is how a function is called
foo(10, 100)