
# R Graphics

## plot function

```r
x <- c(1,2,3,4,5)
y <- c(5,2,1,3,6)

plot(x, y) # scatter plot
plot(x, y, type="l")
plot(x, y, type="l", col='red')
plot(x, y, type="l", col="red", xlab="Time", ylab="Strength")
```

## pie char
```r
# To get a pie chart, only need a vector of numbers that sum up to 100
x <- c(10, 20, 35, 5, 23, 7)
pie(x)
pie(x, init.angle=90)

# in addition, put labels to each section
lbl <- c("Apple", "Banana", "Cantaloup", "Dorin", "Eggplan", "Grape")

pie(x, label=lbl)

# set color for each section
clr<-c("red", "green", "blue", "orange", "yellow","cyan")
pie(x, label=lbl, color=clr)

# add legend
legend("bottomright", lbl, fill=clr)
```

## Bar
The basic bar needs only a vector
```r
x <- c(2,3,4,5,6)
barplot(x)
```

Name can be added.
```r
n=c("apple", "banana", "orange", "grape", "kiwi")

barplot(x, names.arg=n, col="red")
```

Horizontal bars
```r
barplot(x, horiz=TRUE)
```