library(dplyr)
library(readr)

#Q1
q1 <- tbl_df(read.csv('https://raw.githubusercontent.com/datasciencelabs/data/master/data.csv'))

#Q2
typeof(q1$am)
filter(q1, am == 0) %>% summarize(n())


#Q3
filter(q1, am==0) %>% summarize(mean(mpg))

#Q4
q4 <- tbl_df(read_csv('https://raw.githubusercontent.com/datasciencelabs/data/master/midterm_data.csv'))
library(ggplot2)
ggplot(filter(q4, date > '2015-08-22') , aes(x=x, y=y)) + geom_point()

#Q5
x <- c(5,5,8,9,10,10,11,11,11,12,12,13,14,14,14,14,15,15,16,16,17,17,19,20,21)
X <- sample(x, 5, replace=TRUE)
M <- median(X)
Z <- replicate(10000, {a<-sample(x, 5, replace=TRUE)
                        a-median(x)})
sd(Z)

#Q6
library(readr)
master <- read_csv("https://raw.githubusercontent.com/datasciencelabs/data/master/Master.csv")
player_info <- master %>% select(playerID, nameFirst, nameLast, birthYear, height)
filter(player_info, birthYear>='1980') %>% summarize(mean(height))

#Q7
q7 <- filter(player_info, birthYear>='1980')
a <- sample(q7$height, 100)
mean(a) + c(-1,1)*qnorm(0.975)*sd(a)/sqrt(100)

#Q8
salaries <- read_csv("https://raw.githubusercontent.com/datasciencelabs/data/master/Salaries.csv")
filter(salaries, playerID=='barkele01')

#Q9
1*0.5+2*0.25+(-1*0.25)
mean(replicate(10000, sample(c(1,2,-1), 1, replace = T, prob = c(0.5,0.25,0.25))))

#Q10
ny_airquality <- read_csv("https://raw.githubusercontent.com/datasciencelabs/data/master/ny_airquality.csv")

library(tidyr)
ny_airquality %>% separate(Date, c("Year", "Month", "Day"), '-') %>% group_by(Month) %>% summarize(mean(Temp))


#Q11
master <- read_csv("https://raw.githubusercontent.com/datasciencelabs/data/master/Master.csv")
player_info <- master %>% select(playerID, nameFirst, nameLast, birthYear, height)
salaries <- read_csv("https://raw.githubusercontent.com/datasciencelabs/data/master/Salaries.csv")

avg_salary_player <- group_by(salaries, playerID) %>% summarize(mean(salary))
colnames(avg_salary_player) <- c('playerID', 'mean_salary')
player_info2 <- full_join(player_info, avg_salary_player, by='playerID')

 z  <- player_info2 %>% filter(birthYear=='1971' & mean_salary!='NA') %>% arrange(desc(mean_salary))
