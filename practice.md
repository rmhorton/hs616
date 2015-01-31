# Latex example
Bob  
January 31, 2015  

This is an R Markdown document to demonstrate how to put Latex-formatted equations in an R Markdown document.

Here is an equation for the area of a pizza:

$$
A = \pi r^2
$$


```r
d_large <- 18
d_medium <- 12
d_small <- 8
```

For our large pizza, d=18 inches:


```r
Area <- function(diameter){
  pi * (diameter/2)^2
}
```

This gives us an area of 254.5 square inches.


```r
A_large <- Area(d_large)
```

This is from the Wikipedia article on Taylor series:

$$
f(x) = \sum_{n=0}^\infty a_n(x-c)^n.
$$
$$
f(a)+\frac {f'(a)}{1!} (x-a)+ \frac{f''(a)}{2!} (x-a)^2+\frac{f'''(a)}{3!}(x-a)^3+ \cdots. 
$$



```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

You can also embed plots, for example:

![](practice_files/figure-html/unnamed-chunk-2-1.png) 

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
