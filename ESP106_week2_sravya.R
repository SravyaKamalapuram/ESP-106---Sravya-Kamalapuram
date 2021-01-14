## This is the lab for week 2. 
## Add working R code in between the questions
## The chapters refer to the sections in http://rspatial.org/intr/

## Chapter 8  (Functions)

## 1) Write a function 'f' that behaves like this:
## > f('Jim')
## [1] "hello Jim, how are you?"

f <- function(name)
{ 
  paste0("Hello ", name, ", how are you?")
}
f("Jim")


## 2) Write a function 'sumOfSquares' that behaves like this:


## > d <- c(1,5,2,4,6,2,4,5)
## > sumOfSquares(d)
## [1] 21.875

# To compute the "sum of squares", subtract the mean value of all numbers from each number. 
# Square these numbers and sum them
# (bonus: make a variant that can handle NA values)

sumOfSquares <- function(v)
{
  sum2 <- 0
  num <-0 
  num1 <- 0
  v<-v[!is.na(v)]
  m = mean(v)
  for(k in 1:length(v)){
    num = v[k]-m 
    num1 = num * num 
    sum2 <- sum2 + num1
  }
  paste(sum2)
}
d <- c(1,5,2,4,6,NA,2,4,5)
sumOfSquares(d)



## Chapter 9 (Apply)

## 20) compute the minimum, mean and maximum values for each variable in state.x77 using 'apply'

means = apply(state.x77, 2, mean)
minimum = apply(state.x77, 2, min)
maximum = apply(state.x77, 2,max)

paste(means)
paste(minimum)
paste(maximum)

## Chapter 10  (Flow control)

## 21) Write a for loop that adds the numbers 1 to 10

sum <- 0 
for (i in 1:10)
{ 
  sum <- sum + i
 
}

paste(sum)


## 22) Write a for loop that adds the uneven numbers beween 1 and 10 

sum1 <- 0

for (j in 1:10)
{
  if(j %% 2 != 0){
    sum1 <- sum1 + j
  }
}
paste(sum1)
 
    
  







