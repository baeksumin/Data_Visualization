install.package("ggplot2")
library(ggplot2)
install.packages("caret")
library(caret)
data(diamonds)
head(diamonds)
str(diamonds)
class(diamonds)

plot(diamonds$carat, diamonds$price, type="p", pch=16, cex=.5)
grid()
p1<-ggplot(diamonds,aes(carat,price))
p1<-p1+geom_point()
p1
# 점그래프

plot(diamonds$carat, diamonds$price, type="l")
p2<-ggplot(diamonds, aes(carat,price))
p2<-p2+geom_line()
p2
# 선그래프

count<-table(diamonds$clarity)
barplot(count, main="Simple Bar Plot", xlab="clarity", ylab="", col="black")
grid()
p3<-ggplot(diamonds, aes(x=clarity))
p3<- p3+geom_bar()
p3<-p3+ggtitle("Simple bar plot")
p3
# 막대 그래프

table<-table(diamonds$cut, diamonds$clarity)
table
barplot(table,xlab="clarity", ylab="count", legend=rownames(table),
        col=c("navy","blue","turquoise","green","yellow"))
p4<-ggplot(diamonds, aes(x=clarity, fill=cut))
p4<-p4+geom_bar(position=position_stack(reverse=TRUE))
p4
# 누적막대 그래프