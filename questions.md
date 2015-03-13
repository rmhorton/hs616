---
title: "Multiple Choice Questions"
author: "Robert Horton"
date: "January 28, 2015"
output: html_document
---

## Lecture 1a

Which symbol is used to collect a variable number of function arguments?

* `...`
* `???`
* `+++`
* `yada, yada, yada`

## Lecture 1b

In the following code, what is the type of the variable `v`?
```
v <- runif(10) < 0.5
```

* logical
* numeric
* integer
* character

## Lecture 2a

The standard normal distribution has a mean of 0 and a standard deviation of 1, and the area under this curve over all possible x-values is one. What is the area under the curve of a normal probability distribution function with a standard deviation of 2?

* 1
* 2
* 2 &pi;
* 4

## Lecture 2b

Consider a sequence of 10 coin flips, represented by the string `TTTHTHTTTH`. Which statement gives the total number of different sequences of 10 coin flips that could result in this number of heads?

* `choose(10,3)`
* `factorial(10)/(factorial(4)*factorial(7))`
* `integrate(dnorm, -Inf, 0)`
* `sapply(3:10, function(x) factorial(x))`

## Lecture 2b again

Consider the following code:
```
coinflips <- strsplit('TTTHTHTTTH','')[[1]]
flip10 <- sapply(1:10000, function(i) paste(sample(coinflips),collapse=''))
length(unique(flip10))
```
What does the variable `flip10` contain?

* Ten thousand permutations, each with 3 heads and 7 tails
* A function for flipping ten coins
* An estimate of the number of possible permutations of the given sequence
* A vector of 10 'H' and 'T' characters

## Lecture 3a

Which command will create a multiplication table for the numbers from 1 to 10?
Assume `r` is a row vector defined like this: `r <- matrix(1:10,1)`

* t(r) %*% r
* r %*% t(r)
* r^2
* t(r)^2

## Lecture 3b

Given a 2 by 2 matrix `A <- matrix(c(2, 5, 3, 8), 2, byrow=TRUE)`, which command performs Gaussian elimination to put A in upper triangular form?

* A[2,] <- A[2,] - A[1,] * 3/2
* A[3,] <- A[3,] - A[2,]
* A[2,] <- A[1,] * 3/8
* A[2,] <- A[2,] + A[1,] + A[1,]/2


## Lecture 4a

Here is code to add normally distributed noise to an input vector:
```
addRandom <- function(i) i + rnorm(1)
y <- sapply(0:10, addRandom)
```
How would you change `addRandom` to a vectorized version that could be used like this:
`y <- addRandom(0:10)`? (Choose the best solution)

* `addRandomVectorized <- function(v) v + rnorm(length(v))`
* `addRandomVectorized <- function(i) vapply(i, function(x) x+rnorm(1), 1)`
* `addRandomVectorized <- function(x) sapply(x, addRandom)`
* `addRandomVectorized <- Vectorize(addRandom)`

## Lecture 4b

Consider the following profiling results:
```
             self.time self.pct
"function_A"    278.39    86.46
"function_B"     29.32     9.10
"function_C"     14.29     4.44
```
If you make `function_B` 100 times faster, how much faster would you expect the program be?

* less than 10% faster
* twice as fast
* 100 times as fast
* no faster

## Lecture 5a

Which of the regular expressions below matches this sentence exactly once?
"The key, the whole key, and nothing but the key."

* "\\.$"
* "[Tt]he\\s"
* "(and|not)"
* "?key?"

## Lecture 5b

Which of these addresses cannot be read by the built-in `url()` function?

* `https://connect.usfca.edu`
* `http://rseek.org/`
* `http://ftp.ics.uci.edu/pub/machine-learning-databases/`
* `file:///usr/share/dict/words`

## Lecture 6a

How may rows are returned by the following query?
```
A <- data.frame(a=1:10)
B <- data.frame(b=5:15)
sqldf::sqldf("SELECT * FROM A JOIN B ON a==b")
```

* 6
* 10
* 8
* none

## Lecture 6b

Which command opens a connection to an SQLite database?

* dsets <- dbConnect(RSQLite::SQLite(), "datasets.sqlite")
* res <- dbSendQuery(dsets, "select * from iris limit 10")
* sqliteCopyDatabase(dsets, "datasets.sqlite")
* dbListTables(dsets)

## Lecture 7a

Which command is equivalent to this pipeline?
`myData %>% group_by(sex) %>% summarise(avg_price=mean(price))`

* `summarize(group_by(myData, sex), avg_price=mean(price))`
* `mean(avg_price, group_by(myData, sex), summarise)`
* `summarise(myData[, "sex"], avg_price=mean(price), group_by(myData))`
* `lapply(myData, function(sex){ group_by(sex); avg_price=mean(price)})`
