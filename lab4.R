# read CSV into R
# this code implies that we have set the working directory & file is in the root of it
my_data <- read.csv(file='hw1_data.csv', header=TRUE, sep=",")

#Task 1
print(names(my_data))

#Task 2
print(head(my_data, 6))

#Task 3
print(nrow(my_data))

#Task 4
print(tail(my_data, 10))

#Task 5
print(sum(is.na(my_data$'Ozone')))

#Task 6
print(mean(my_data$'Ozone', na.rm=TRUE))

#Task 7
part_data <- subset(my_data, my_data$'Ozone' > 31 & my_data$'Temp' > 90)
print(part_data)

print(mean(part_data$'Solar.R'))

#Task 8
#here we have NAs so ignore them while detecting max value
print(max(my_data$'Ozone'[my_data$'Month' == 5], na.rm = TRUE))