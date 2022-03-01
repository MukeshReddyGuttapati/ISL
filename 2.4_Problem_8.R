
library(ISLR)

college = read.csv("C:/Users/lenovo/Downloads/College.csv", header = TRUE)
head(college)

summary(college)
pairs(college[, 1:10])
plot(Private, Outstate, varwidth=T, col="red", xlab="Private College", ylab="OutofState", main="Distribution Along the Colleges")

Elite=rep("No", nrow(college))
Elite[college$Top10perc>50]="Yes"
Elite=as.factor(Elite)
college=data.frame(college, Elite)

summary(Elite)

plot(Elite, Outstate, varwidth=T, col="red",xlab="Elite College", ylab="Out-of-State Tuition in USD",main="Distribution Along the Elite Colleges")

par(mfrow=c(2,2))

hist(Top10perc, breaks=10, col="red", main="Percentage of The Top10 H.S. Students")
hist(Apps, breaks=10, col="orange", main="Number of New Applications Received")
hist(Personal, breaks=10, col="green", main="Estimated Personal Spending")
hist(PhD, breaks=10, col="blue", main="Percentage of Faculty with Ph.D.'s")

summary(PhD)

row.names(college[PhD>100, ])
summary(Apps)

row.names(college[Apps>25000, ])
detach(college)

