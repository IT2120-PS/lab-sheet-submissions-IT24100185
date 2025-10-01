setwd("F:\\SLIIT\\Y2S1\\PS\\lab_9")
#1).
bake <- rnorm(25, mean = 45, sd = 2)
bake
#2).
t.test(bake, mu = 46, alternative = "less")
