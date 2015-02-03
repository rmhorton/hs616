# Latex example
Bob  
January 31, 2015  

This is an R Markdown document to demonstrate how to put Latex-formatted equations in an R Markdown document.

Here is an equation for the area of a pizza:

$$
A = \pi r^2
$$


```r
d_large <- 14
d_medium <- 12
d_small <- 10
```

For our large pizza, d=14 inches:


```r
Area <- function(diameter) pi * (diameter/2)^2
A_large <- Area(d_large)
A_medium <- Area(d_medium)
A_small <- Area(d_small)
```

The area of a large pizza is 153.9 square inches.


```r
pizza_sizes <- c(
  small = 10,
  medium = 12,
  large = 14,
  xlarge = 16 )

pizza_prices <- c(
  small = 6.95,
  medium = 12.95,
  large = 19.95,
  xlarge = 22.95
  )

pizza_areas <- Area(pizza_sizes)
```

This kind of information is generally easier to read in a table. We start by putting it in a data frame:


```r
pizza_data <- data.frame(
  size = pizza_sizes,
  price = pizza_prices,
  area = round(Area(pizza_sizes),1),
  price_per_square_inch = round(pizza_prices/Area(pizza_sizes),2)
)
```


```r
library(xtable)
print(xtable(pizza_data), type='html')
```

<!-- html table generated in R 3.1.2 by xtable 1.7-4 package -->
<!-- Sun Feb  1 13:58:45 2015 -->
<table border=1>
<tr> <th>  </th> <th> size </th> <th> price </th> <th> area </th> <th> price_per_square_inch </th>  </tr>
  <tr> <td align="right"> small </td> <td align="right"> 10.00 </td> <td align="right"> 6.95 </td> <td align="right"> 78.50 </td> <td align="right"> 0.09 </td> </tr>
  <tr> <td align="right"> medium </td> <td align="right"> 12.00 </td> <td align="right"> 12.95 </td> <td align="right"> 113.10 </td> <td align="right"> 0.11 </td> </tr>
  <tr> <td align="right"> large </td> <td align="right"> 14.00 </td> <td align="right"> 19.95 </td> <td align="right"> 153.90 </td> <td align="right"> 0.13 </td> </tr>
  <tr> <td align="right"> xlarge </td> <td align="right"> 16.00 </td> <td align="right"> 22.95 </td> <td align="right"> 201.10 </td> <td align="right"> 0.11 </td> </tr>
   </table>

Sometimes trends are easiest to see in a graph:

```r
plot(price_per_square_inch ~ size, data=pizza_data, type='b')
```

![](practice_files/figure-html/pizza_price_graph-1.png) 

# Finding Formulae Online

Wikipedia is a great place to look up the $\LaTeX$ code for mathematical formulae.
These equations are from the Wikipedia article on Taylor series:

$$ f(x) = \sum_{n=0}^\infty a_n(x-c)^n. $$

$$
f(a)+\frac {f'(a)}{1!} (x-a)+ \frac{f''(a)}{2!} (x-a)^2+\frac{f'''(a)}{3!}(x-a)^3+ \cdots.
$$

You can look up [$LaTex$ symbols](http://latex.wikia.com/wiki/List_of_LaTeX_symbols) online.

Lower case Greek letters are all represented by name in $\LaTeX$:
$$
\alpha \beta \gamma \delta \\
\epsilon \zeta \eta \theta \\
\iota \kappa \lambda \mu \\
\nu \xi \epsilon \pi \\
\rho \sigma \tau \upsilon \\
\phi \chi \psi \omega
$$

Not all uppercase Greek letters are available; this is because many of them are identical to the Roman letters:
$$ \Alpha \Beta \Gamma \Delta \Epsilon \Zeta \Eta \Theta \Iota \Kappa \Lambda \Mu \Nu \Xi \Omicron \Pi \Rho \Sigma \Tau \Upsilon \Phi \Chi \Psi \Omega $$


Here is an example of how to generate the LaTeX code in R:

```r
greek <- strsplit("alpha beta gamma delta epsilon zeta eta theta iota kappa lambda mu nu xi omicron pi rho sigma tau upsilon phi chi psi omega"," ")[[1]]
ucfirst <- function(s){ substr(s,1,1) <- toupper(substr(s,1,1)); s}
Greek <- ucfirst(greek)
```

```r
cat(
    '$$',
    paste0("\\", greek, collapse=" "),
    '\\\\',
    paste0("\\", Greek, collapse=" "),
    '$$'
)
```

$$ \alpha \beta \gamma \delta \epsilon \zeta \eta \theta \iota \kappa \lambda \mu \nu \xi \omicron \pi \rho \sigma \tau \upsilon \phi \chi \psi \omega \\ \Alpha \Beta \Gamma \Delta \Epsilon \Zeta \Eta \Theta \Iota \Kappa \Lambda \Mu \Nu \Xi \Omicron \Pi \Rho \Sigma \Tau \Upsilon \Phi \Chi \Psi \Omega $$
