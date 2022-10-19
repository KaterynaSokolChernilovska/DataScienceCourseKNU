#Task 1
#here we add x and y and return the result
add2 <- function(x, y) x + y 

print(add2(2,4))

#Task 2
#here we filter vector x so elements above n and return the result
above <- function(x, n = 10) x[x > n]

v <- c(1:20)
#example where the default n value is used
print(above(v))
#example where a custom n value is used (n=15)
print(above(v, 15))

#Task 3
my_ifelse <- function(x, exp, n) {
  #here we compare argument 'exp' to all possible values, perform needed operation and return the result
  #in case no posible values suit the 'exp' return input vector x
  if (exp == '>') x[x > n]
  else if (exp == '<') x[x < n]
  else if (exp == '<=') x[x <= n]
  else if (exp == '>=') x[x >= n]
  else if (exp == '==') x[x == n]
  else x
}

v <- c(1:20)
n <- 10
print(my_ifelse(v, '>', n))
print(my_ifelse(v, '<', n))
print(my_ifelse(v, '<=', n))
print(my_ifelse(v, '>=', n))
print(my_ifelse(v, '==', n))
print(my_ifelse(v, 'hoho', n))

#Task 4
#here we use colMeans function which does the same
columnmean <- function(x, removeNA = TRUE) colMeans(x, na.rm = removeNA)

m <- cbind(c(1,2,NA,3,4), c(5,6,7,NA,8), c(9:13))
print(m)
print(columnmean(m))
print(columnmean(m, FALSE))