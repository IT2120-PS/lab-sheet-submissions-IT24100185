setwd("F:\\SLIIT\\Y2S1\\DDD\\Lab8")

data <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

pop_mean = mean(Weight.kg.)
print(pop_mean)

pop_variance = var(Weight.kg.)
print(pop_variance)

#2
samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste("s", i, sep = ""))
}
colnames(samples) <- n


s.means <- apply(samples,2, mean)
s.vars <- apply(samples,2, var)

#3
sMean <- mean(s.means)
sVar <- var(s.vars)

print(sMean)
print(sVar)

pop_mean
sMean

trueVar = pop_variance/6
print(trueVar)
sVar


