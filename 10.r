sales<-c(2,4,6,9,12,34,45)
TV<-c(1,2,4,7,9,11,15)
data<-data.frame(sales,TV)
model<-lm(sales~TV,data=data)

summary(model)
intercept<-coef(model)[1]
slope<-coef(model)[2]
cat("Intercept:",intercept,"\n")
cat("Slope:",slope,"\n")
plot(data$TV,data$sales,main="Sales TV Advertsing Budget",xlab="TV Advertsing Budget",ylab="Sales unit",pch=19,col="blue")
abline(model)