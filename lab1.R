#2
sle.df = read.table('sle_b_cell.txt', header = T, row.names = 1)

#3
dim(sle.df)


#4
colnames(sle.df)

#5
patient <- sle.df[,2]
control <- sle.df[,18]
plot(control, patient, type='p', main='SLE B cell sample vs. Normal B cell 
     sample - all probesets', xlab='Normal', ylab='SLE')
grid()

#6
plot(control[1:20], patient[1:20], type='p', main='SLE B cell sample vs. Normal B cell 
     sample - all probesets', xlab='Normal', ylab='SLE', pch=15, col='blue')
grid()

#7
IGLJ3 <- sle.df['211881_x_at',]
plot(range(1:26), range(IGLJ3),type="n", main="Gene Profile Plot - IGLJ3", 
     xlab="Sample Index", ylab="Intensity")
lines(as.numeric(IGLJ3))
grid()

#8
f <- c(rep("SLE", 17),rep("Control",9))
boxplot(as.numeric(IGLJ3)~f, xlab = "Condition", ylab="Expression", 
        main='Expression vs. Condition - IGLJ3')
stripchart(as.numeric(IGLJ3)~f, add = TRUE, vertical = TRUE, col="blue")
