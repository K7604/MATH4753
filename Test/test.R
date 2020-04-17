file=read.csv("SHALLOW.csv")
file
t.test(file$Actual,file$Predict,conf.level = 0.99,paired = TRUE)
library(s20x)
IQR(file$d)/sd(file$d)
shapiro.test(file$d)

file=read.csv("mow-mow.csv")
file
var.test(file$y1,file$y2)
t.test(file$y1,file$y2,conf.level = 0.80,var.equal = TRUE)
t.test(file$y1,file$y2,conf.level = 0.92,var.equal = FALSE)
