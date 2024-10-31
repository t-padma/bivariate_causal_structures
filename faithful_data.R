attach(faithful)
h = lm(waiting~eruptions)
summary(h)$r.squared

erup = faithful[,1]
a = h$residuals[erup<3]
length(h$residuals[erup<3])
ks.test(h$residuals[erup<3], rnorm(97,mean(a), sd(a)))

b = h$residuals[erup > 3]
length(h$residuals[erup>3])
ks.test(h$residuals[erup>3], rnorm(175,mean(b), sd(b)))