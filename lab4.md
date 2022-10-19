# Lab 4
В RStudio файл необхідно прочитати за допомогою команди read.csv.

```R
# read CSV into R
# this code implies that we have set the working directory & file is in the root of it
my_data <- read.csv(file='hw1_data.csv', header=TRUE, sep=",")
```

## Task 1

Які назви стовпців файлу даних?

```R
print(names(my_data))
```
```R
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day" 
```

## Task 2

Виведіть перші 6 строк фрейму даних.

```R
print(head(my_data, 6))
```
```R
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
4    18     313 11.5   62     5   4
5    NA      NA 14.3   56     5   5
6    28      NA 14.9   66     5   6
```

## Task 3

Скільки спостерігань (строк) в дата фреймі?

```R
print(nrow(my_data))
```
```R
[1] 153
```

## Task 4

Виведіть останні 10 строк дата фрейму.

```R
print(tail(my_data, 10))
```
```R
    Ozone Solar.R Wind Temp Month Day
144    13     238 12.6   64     9  21
145    23      14  9.2   71     9  22
146    36     139 10.3   81     9  23
147     7      49 10.3   69     9  24
148    14      20 16.6   63     9  25
149    30     193  6.9   70     9  26
150    NA     145 13.2   77     9  27
151    14     191 14.3   75     9  28
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
```

## Task 5

Як багато значень «NA» в стовпці «Ozone»?

```R
print(sum(is.na(my_data$'Ozone')))
```
```R
[1] 37
```

## Task 6

Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення.

```R
print(mean(my_data$'Ozone', na.rm = TRUE))
```
```R
[1] 42.12931
```

## Task 7

Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90. Яке середнє (mean) значень «Solar.R» в цьому наборі даних (subset)?

+ Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90
```R
part_data <- subset(my_data, my_data$'Ozone' > 31 & my_data$'Temp' > 90)
print(part_data)
```
```R
    Ozone Solar.R Wind Temp Month Day
69     97     267  6.3   92     7   8
70     97     272  5.7   92     7   9
120    76     203  9.7   97     8  28
121   118     225  2.3   94     8  29
122    84     237  6.3   96     8  30
123    85     188  6.3   94     8  31
124    96     167  6.9   91     9   1
125    78     197  5.1   92     9   2
126    73     183  2.8   93     9   3
127    91     189  4.6   93     9   4
```

+ Яке середнє (mean) значень «Solar.R» в цьому наборі даних (subset)?
```R
print(mean(part_data$'Solar.R'))
```
```R
[1] 212.8
```

## Task 8

Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює 6)?

```R
print(mean(my_data$'Temp'[my_data$'Month' == 6]))
```
```R
[1] 79.1
```

## Task 9

Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?

```R
#here we have NAs so ignore them while detecting max value
print(max(my_data$'Ozone'[my_data$'Month' == 5], na.rm = TRUE))
```
```R
[1] 115
```