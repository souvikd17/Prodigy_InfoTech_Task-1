#Task-01

##PREPARING THE DATA FOR REPRESENTATION
#importing the given data
population <- read.csv("C://Users//HP//Desktop//Prodigy//Task1//population.csv")
pop <- population
View(pop)

#cleaning the data
names(pop) <- pop[4,]
pop <- pop[-c(1:4),]
row.names(pop) <- c(1:nrow(pop))

#finding the positions of missing observations
which(is.na(pop))

#rows with missing observations
rowsNA <- pop[apply(pop, 1, function(x) any(is.na(x))),]
View(rowsNA)

#removing the rows with missing observations
r <- c(as.numeric(row.names(rowsNA)))
pop <- pop[-r,]

#reassuring that there is no missing obs. remaining
which(is.na(pop))

## Now we need to filter the necessary columns to represent the data graphically. 
View(pop)

# We need to remove 'Indicator Code', 'Indicator Name' and 'Country Code'
pop <- pop[,-c(2:4)]
View(pop)



#RERPRESENTING THE DATA GRAPHICALLY
#loading the required package
library(Hmisc)

#histogram of the population of the years 1960-70
hist.data.frame(pop[,c(seq(1,12,1))])

#histogram of the population of the years 1971-82
hist.data.frame(pop[,c(seq(13,24,1))])

#histogram of the population of the years 1983-94
hist.data.frame(pop[,c(seq(25,36,1))])

#histogram of the population of the years 1995-2006
hist.data.frame(pop[,c(seq(37,48,1))])

#histogram of the population of the years 2007-18
hist.data.frame(pop[,c(seq(49,60,1))])

#histogram of the population of the years 2019-22
hist.data.frame(pop[,c(seq(61,64,1))])
