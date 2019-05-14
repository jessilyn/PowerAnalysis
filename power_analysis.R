install.packages("pwr")
library("pwr")
effectSize <- seq(0.0001,1,0.01)
b<-c()
for (i in 1:length(effectSize)) {
  b[i]<-pwr.t.test(n = 50, d = effectSize[i], sig.level = 0.05, power = NULL, 
                   type = c("two.sample"),
                   alternative = c("greater"))$power }
plot(effectSize,b,
     xlab="Effect Size",
     ylab="Power",font=2, font.lab=2, cex.axis=1.5, cex.lab=2, type="l", lwd=3.5, col="magenta")
points(0.5,0.8, pch=19, col="orange", cex=1.2)