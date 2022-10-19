# Lab 3
В лабораторній роботі необхідно написати наступні функції на мові R та вивести результат роботи цих функцій на довільних даних.

## Task 1

Функція add2(x, y), яка повертає суму двох чисел.

```R
#here we add x and y and return the result
add2 <- function(x, y) x + y 
```

+ Результати роботи функції
```R
print(add2(2,4))
```
```R
[1] 6
```

## Task 2

Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.


```R
#here we filter vector x so elements above n and return the result
above <- function(x, n = 10) x[x > n]
```

+ Результати роботи функції
```R
v <- c(1:20)
#example where the default n value is used
print(above(v))
```
```R
 [1] 11 12 13 14 15 16 17 18 19 20
```
```R
#example where a custom n value is used (n=15)
print(above(v, 15))
```
```R
[1] 16 17 18 19 20
```

## Task 3

Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.

```R
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
```


+ Результати роботи функції
```R
v <- c(1:20)
n <- 10
print(my_ifelse(v, '>', n))
```
```R
 [1] 11 12 13 14 15 16 17 18 19 20
```

```R
print(my_ifelse(v, '<', n))
```
```R
[1] 1 2 3 4 5 6 7 8 9
```

```R
print(my_ifelse(v, '<=', n))
```
```R
 [1]  1  2  3  4  5  6  7  8  9 10
```

```R
print(my_ifelse(v, '>=', n))
```
```R
 [1] 10 11 12 13 14 15 16 17 18 19 20
```

```R
print(my_ifelse(v, '==', n))
```
```R
[1] 10
```

```R
print(my_ifelse(v, 'hoho', n))
```
```R
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
```

## Task 4

Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.

```R
#here we use colMeans function which does the same
columnmean <- function(x, removeNA = TRUE) colMeans(x, na.rm = removeNA)
```

```R
m <- cbind(c(1,2,NA,3,4), c(5,6,7,NA,8), c(9:13))
print(m)
```
```R
     [,1] [,2] [,3]
[1,]    1    5    9
[2,]    2    6   10
[3,]   NA    7   11
[4,]    3   NA   12
[5,]    4    8   13
```

+ Результати роботи функції
```R
print(columnmean(m))
```
```R
[1]  2.5  6.5 11.0
```

```R
print(columnmean(m, FALSE))
```
```R
[1] NA NA 11
```
