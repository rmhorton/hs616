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

