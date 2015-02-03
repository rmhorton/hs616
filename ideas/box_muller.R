# http://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform

# Polar form

N <- 1e6
u <- runif(N, min=-1, max=1)
v <- runif(N, min=-1, max=1)
s <- u^2 + v^2
R <- sqrt(s)
in_circle <- s>0 & s<1
hist(s[in_circle], breaks=50)

b <- sqrt(-2 * log(s[in_circle])/s[in_circle])
z0 <- u[in_circle] * b
z1 <- v[in_circle] * b

hist(z0)

# CDF for s in interval(0,1)
R <- seq(0, 1, length=1000)
s <- R^2
A <- pi * s
plot(s, A, type='l')

# experiments
x <- runif(N)
hist(sqrt(-2*log(x)/x))
