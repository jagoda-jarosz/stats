dat<-read.csv("C:\\Users\\jaros\\Downloads\\wpba2009_v1.csv",header=TRUE)
dat$Oil_Pattern<-as.factor(dat$Oil_Pattern)
dat$Bowler<-as.factor(dat$Bowler)

lmfit<-lm(dat$Score~dat$Oil_Pattern*dat$Bowler)
summary(lmfit)
anova(lmfit)
plot(fitted(lmfit), resid(lmfit), xlab = "Predicted", ylab = "Residual", main = "Residuals vs Fitted Values")
qqnorm(resid(lmfit))
qqline(resid(lmfit))
shapiro.test(resid(lmfit))

