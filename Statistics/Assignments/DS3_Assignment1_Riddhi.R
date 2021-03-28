#Setting working directory.
setwd<-("E:\Data Science Program")

#1.What is the basic difference and similarity between a vector and a matrix?
#vector is a basic data structure where as matrix is a two dimentional data structure. 
#Both vector and matrix deals with simialr data types such as logical, integer, character,double and complex.


#2.What is the basic difference and similarity between a data frame and a matrix?
#data frame is a special case of list that has each component of same length where as matrix is like vector
#but contains dimensionality attributes. Both are two dimentional data structure.One major difference between 
#data frame and matrix is that data frame works with different type of data types where as matrix worksn with similar
#data types.



#3.Create a vector using (15, TRUE, "World"). What happened to your result?
result <- c(15,TRUE,"world")
result

#4.John's scores in the final semester for the three subjects are 95, 91, and 88.
#The subjects are Statistics, Linear Algebra, and Calculus. Using these create a 
#vector and give names to all elements of the vector based on their subjects.
scores <- c(95,91,88)
subject <- c("Statistics","Linear Algebra","Calculus")
names(scores)<-subject

#5.Please check the types (character or numeric) of the vector you created.
class(scores)
class(subject)

#6.You have three students in your class (choose any name you want). You must
#create a matrix using their score in the above mentioned subjects (question 4) 
#Student 1 (95, 91, and 88), Student 2(96, 94, and 97), Student 3(88, 98, and 85). 
#Create a matrix and label column and row names.
Students <- matrix(c(95, 91, 88 ,96, 94, 97 ,88, 98,  85 ) , nrow = 3 , ncol = 3 , byrow = TRUE)
colnames(Students) <- c("Statistics", "Linear Algebra", "Calculus")
rownames(Students) <- c("Riddhi" , "Shruti" , "Priti")
View(Students)


#7.Convert the created matrix into a data frame.
students_df<-data.frame(Students)

#8.Create three vectors using five countries (your choice) from the following website. 
#The first vector should be country names, the second vector should be the total number 
#of cases, and the third vector should contain the total number of deaths. Create a data 
#frame using these vectors. https://www.worldometers.info/coronavirus/ 
countries<-c("USA","India","Russia","Italy","Colombia")
total_num_cases<-c(30526030,11682440,4466153,3376376,2337150)
total_num_deaths<-c(555339,160181,95391,104942,62028)
corona_df<-data.frame(countries,total_num_cases,total_num_deaths)

#9.Please read the mtcars data set from R. It is an built-in data set. Please check the
#structure of the data set. If required, please convert the data into their appropriate
#data types (character, logical, factor, etc). Save your results as a new data frame using a new name. 
data("mtcars")
str(mtcars)
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.logical(mtcars$vs)
mtcars$am <- as.logical(mtcars$am)
mtcars$gear <- as.factor(mtcars$gear)
mtcars$carb <- as.factor(mtcars$carb)
str(mtcars)

cars_df <- data.frame(mtcars)
View(cars_df)

