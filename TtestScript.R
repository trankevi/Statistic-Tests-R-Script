library(ggplot2)

#get data of test scores
data <- read.csv(file="testscores.csv", header =T, sep =",")
gamblers <- data[,2]
regression <- data[,3]

#F test for difference in variance in topic scores
var.test(gamblers,
         regression,
         conf.level=0.95)

#t-test for difference in topic scores
t.test(gamblers,
       regression,
       var.equal=TRUE,
       conf.level=0.95,
       paired=TRUE)

#get data of test scores by session type
data2 <- read.csv(file="testscoresBySessionType.csv", header =T, sep =",")
remote <- data2[,2]
inperson <- data2[,3]

#F test for difference in variance in session type
var.test(remote,
         inperson,
         conf.level=0.95)

#t-test for difference in session type
t.test(remote,
       inperson,
       var.equal=TRUE,
       conf.level=0.95,
       paired=TRUE)



