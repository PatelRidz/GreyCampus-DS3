
install.packages("pacman")
require(pacman)
pacman::p_load(pacman,dplyr,GGally,ggplot2,ggthemes,ggvis,httr,lubridate,plotly,rio,rmarkdown,shiny,stringr,tidyr)


#Question 1: The final score of the World Cup finals of football is France  4 and Croatia 2.
#Please use a control structure to print the results as Team ---- Wins -----.
France <- 4
Croatia <- 1
if(France>Croatia){
  print("France WINS")
}else{
  print("Croatia WINS")
}


#Question 2: The mtcars data set has several factor variables. However, R is reading them as numeric. 
#Please convert them into factors using a for loop. Please use column 8 to 11 for the loop.
data(mtcars)
for(i in 8:11)
  {
  mtcars[i] = lapply(mtcars[i], factor)
  }
str(mtcars)


#You will receive a data set (Dataset 2.1). This data set is a subset of a real data set.  

#Question 3: Write a function to get the percentage of NAs in each column.
vehicels <- read.csv("E:/Data Science Program/Dataset21.csv",stringsAsFactors = FALSE)
head(vehicels)

col_per = function(nas_col){
  nas_col = colSums(is.na(vehicels))
  nas_col = (nas_col/dim(vehicels)[1])*100
  print(nas_col)
}
col_per()

#Question 4: Write a function to get the percentage of NAs in each row.
row_per = function(nas_row){
  nas_row = rowSums(is.na(vehicels))
  nas_row = (nas_row/dim(vehicels)[1])*100
  print(nas_row)
}
row_per()


#Question 5: Write a function to get a summary of numeric columns (use the summary function) 
#such as THC, CO, CO2, and so on in the data set. With the same function, try to generate box plot using base R.



#Question 6: Write a function to create histograms of numeric columns, such as THC, CO, CO2, and
#so on in the data set. Use ggpot2 to generate figures.



#You will receive a data set (Dataset 2.2). This data set is a subset of a real data set.
FD_data <- read.csv("E:/Data Science Program/Dataset22.csv",stringsAsFactors = FALSE)
head(FD_data)



#Question 7: The data set contains date columns. All of these date columns are untidy.
#Please create a better formatted data set. The date should be dd/mm/yyyy in the final format.
#Use columns 2, 3, and 5 only.
library(lubridate)

FD_data$`First FD Date` = mdy(FD_data$`First FD Date`)
format(FD_data$`First FD Date`, "%d/%m/%y") 

FD_data$`Last FD Date` = mdy(FD_data$`Last FD Date`)
format(FD_data$`Last FD Date`,"%d/%m/%y")

FD_data$`FD termination date` = mdy(FD_data$`FD termination date`)
format(FD_data$`FD termination date`, "%d/%m/%y")


#Question 8: The date of birth column contains months in string format.
#Please create a tidy data column with months in numeric format. Now your data should be similar to 
#the previous question.
date_of_birth = dmy(FD_data$`Date of Birth`, locale = 'english')
date_of_birth = as.Date(date_of_birth, format= '%d/%m/%y')
date_of_birth = as.Date(format(date_of_birth, '19%y%m%d'), '%Y%m%d')
date_of_birth


#Question 9: Convert all dates into date format; they are currently in character variable format.
first_FD_date = as.Date(FD_data$`First FD Date`)
last_FD_date = as.Date(FD_data$`Last FD Date`)
FD_termination_date = as.Date(FD_data$`FD termination date`)


#Question 10: Create a new column age based on the date of birth column and the first FD column. 
#Date format is necessary to do basic arithmetic.
age =(FD_termination_date - date_of_birth)/365
age
