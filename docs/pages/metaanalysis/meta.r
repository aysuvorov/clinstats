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

"""
Effect size
"""


x <- seq(- 5, 5, by = 0.01)
y <- dt(x, df = 50)

# расчет критических значений
critical = qt(p=0.05/2, df=length(x), lower.tail=F)
critical_one_sided = qt(p=0.05, df=length(x), lower.tail=F)


plot(x, 
     y, 
     type = "l", 
     main = " ",
     xlab="t-статистики", ylab="Плотность вероятности",
     las=1,
     col = 'blue',
     xlim=c(-5, 6)
)

lines(x + 2, 
      y, 
      type = "l", 
      main = " ",
      xlab="t-статистики", ylab="Плотность вероятности",
      las=1,
      col = 'red'
)


"""
Funnel plot
"""

library(metafor)

### copy BCG vaccine data into 'dat'
dat <- dat.bcg

### calculate log risk ratios and corresponding sampling variances
dat <- escalc(measure="RR", ai=tpos, bi=tneg, ci=cpos, di=cneg, data=dat)

### fit random-effects model
res <- rma(yi, vi, data=dat, slab=paste(author, year, sep=", "))

### draw a standard funnel plot
funnel(res)

### note: same plot, except that reference line is centered at zero
funnel(dat$yi, dat$vi)

### the with() function can be used to avoid having to retype dat$... over and over
with(dat, funnel(yi, vi))


"""
Egger test
"""



