"""
К статье по метаанализам



"""

library(epiR)
library(pwr)

# Размер эффекта

# График Стандартной ошибки

SE = c()
mu = c()

for (i in seq(500)) {
  sample <- rnorm(n = i, mean = 0, sd = 3)
  SE[i] = sd(sample)/sqrt(length(sample))
  mu[i] =  mean(sample)
}

plot(mu,xlab = 'Sample size', ylab = 'Sample mean', type="l")

plot(SE,xlab = 'Sample size', ylab = 'Standard error', type="l")

# standartise demo

m1 =  abs(-6)/2
m2 = (-14)/10
sd1 = sqrt(2*(1-0.5)/n1 + (m1)/(2*n1))
sd2 = sqrt(2*(1-0.5)/n2 + (m2)/(2*n2))

sd1r = sqrt((2^2 + 2^2 - 2*(0.5 * 2*2))/n1)
sd2r = sqrt((10^2 + 16^2 - 2*(0.5 * 10*16))/n2)

n1 = 58
n2 = 82

-14 - sd2r

-m1 - 2*sd1
m2 + 2*sd2

pooled_sd = sqrt(((n1-1) * sd1^2 + (n2-1) * sd2^2)/(n1 + n2 - 2))


# Модели

# Фиксированные эффекты

SE = c()
mu = c()

for (i in seq(100)) {
  sample <- rnorm(n = i, mean = 0, sd = 3)
  SE[i] = sd(sample)/sqrt(length(sample))
  mu[i] =  mean(sample)
}

plot(mu, SE, xlab = 'Effect size', ylab = 'Standard error', xlim=c(-2,2))
abline(v=0, col='red', lwd=3)


"""
Forest plot
"""

library(meta)

data(Fleiss1993cont)

example = metacont(n.psyc, mean.psyc, sd.psyc, n.cont, mean.cont, sd.cont,
         data = Fleiss1993cont, studlab = paste(study, year),
         random = TRUE, fixed=TRUE)

forest.meta(example)

drapery(example, labels = "studlab", type = "pvalue")