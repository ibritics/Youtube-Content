
#Calucation of the Confidence Interval 

#1. Calculate the mean
#2. Calculate the standard error
#3. Find the t-score that corresponds to the confidence level
#4. Calculate the margin of error and 
#5. construct the confidence interval

y  <- function(x,alpha){
  x.m = mean(x) #For the last step
  
  #standart error
  x.sd = sd(x)
  x.n = length(x)
  se = x.sd/sqrt(x.n)
  
  #T-score
  alpha = 0.05
  d.freedom = x.n-1
  tscore = qt(alpha/2,d.freedom)
  
  #MArgin of error 
  m.e = se*tscore
  
  #lower and upper bounds
  upper= x.m+m.e
  lower= x.m-m.e
  return(c(upper,lower))
}

y(df_covid$cases,0.05)
