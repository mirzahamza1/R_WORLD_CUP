library(tidyverse)
library(caret)
library(caTools)


library(rpart)
library(ggplot2)
data<-R_WorldCupMatches
dim(data)
str(data)
glimpse(data)
View(data)
class(data$MatchID)
unique(data$Stadium)
View(sort(table(data$`Home Team Goals`)))
barplot(sort(table(obj$Stadium)))
boxplot(sort(table(data$City)))
hist(data$`Home Team Goals`)
hist(data$`Away Team Goals`)
hist(data$`Half-time Home Goals`)
hist(data$`Half-time Away Goals`)
hist(data$Attendance)

print(data[complete.cases(data), ] )

obj<-data[complete.cases(data), ] 
hist(obj$`Home Team Goals`)
hist(obj$`Away Team Goals`)
hist(obj$Attendance)



mean(obj$`Home Team Goals`)
mean(obj$`Away Team Goals`)
mean(obj$Attendance)



G_A.plot <- ggplot(obj, aes(x=Attendance, y=`Home Team Goals`)) +
  geom_point()

G_A.plot




library(tidyverse)
library(ggpubr)
theme_set(theme_pubr())

ggplot(obj, aes(x = Year, y = `Home Team Goals`)) +
  geom_point() +
  stat_smooth()

ggplot(obj, aes(x = Year, y = `Away Team Goals`)) +
  geom_point() +
  stat_smooth()



print(na.omit(data))