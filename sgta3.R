#Quesiton 1

light <-read.table('light.dat', header=TRUE)
head(light)

##mu1 = the mean lumen output of brand 1
##mu2 = the mean lumen output of brand 2

#h0: mu1=mu2
#h1: mu1 

##check assumption
#normality assumption
qqnorm()

#equal variance assumption
sd(light$Bran1)
sd(light$Bran12)

boxplot(light)

#test hypothesis
t.test(light$Brand1, light$Brand2, var.equal = TRUE)
#our test stat is t = 2.23 on a null distribution of t(20)

#conclusion: p = 0.037 < 0.05; reject the null hypothesis
#there is evidence to suggest there is a significant difference between Brand1 and Brand2


#Question 2

farm = read.table(farm.dat, header=TRUE)
head(farm)
#check assumption
#normality assumption

diff = farm$yield[farm$plot=="sprayed"] - farm$yield[farm$plot=="unspread"]
qqnorm(diff, main="normal Q-Q plot of plot differences")

#test hypothesis
t.test(yield~plot, paired+TRUE, data=farm, alternative = "greater")


#Question 4

qnorm(0.99, mean = 0, sd=1, lower.tail = TRUE)


