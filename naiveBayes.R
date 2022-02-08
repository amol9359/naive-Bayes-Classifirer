View(ToothGrowth)
library(e1071)
D=ToothGrowth
class(D[,3])
D[,3]=as.factor(D[,3])
N=naiveBayes(supp~.,data = D)
aggregate(D[,1]~D[,2],FUN=sd)
P=predict(N,newdata=D)
View(P)
table(P,D[,2])
N     # Giving conditional probabilities

P1=predict(N,newdata = D,type="raw")  # Prob. of object placing in that class
View(P1)
