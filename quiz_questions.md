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
* $$ 2 pi $$
* 4

## Lecture 2b

Consider a sequence of 10 coin flips, represented by the string `TTTHTHTTTH`. Which statement gives the total number of different sequences of 10 coin flips that could result in this number of heads?

* `choose(10,3)`
* `factorial(10)/(factorial(4)*factorial(7))`
* `integrate(dnorm, -Inf, 0)`
* `sapply(3:10, function(x) factorial(x))`

## Lecture 2b again

Consider the following code:
`coinflips <- strsplit('TTTHTHTTTH','')[[1]]
flip10 <- sapply(1:10000, function(i) paste(sample(coinflips),collapse=''))
length(unique(flip10))`
What does the variable `flip10` contain?

* Ten thousand permutations, each with 3 heads and 7 tails
* A function for flipping ten coins
* An estimate of the number of possible permutations of the given sequence
* A vector of 10 'H' and 'T' characters