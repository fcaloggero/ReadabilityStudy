x <- data[data$Bullets == "yes",]$FK.Score
y <- [data$Bullets == "no",]$FK.Score
a <- data[data$Bullets == "yes",]$Bounce.Rate
b <- data[data$Bullets == "no",]$Bounce.Rate

x <- data$FK.Score
y <- data$Bounce.Rate
z <- data$Seconds
gc <- data$Goal.Completions
wc <- data$Word.Count
goal <- Goal.Completions

##FK Score vs. Bounce Rate
cor(x,y)
plot(x,y, col="red")
abline(lm(y~x), col="red")

##FK Score vs. Seconds (Time on Site)
cor(x,z)
plot(x,z, col="red")
abline(lm(z~x), col="red")

##Word Count vs. Seconds (Time on Site)
cor(wc,z)
plot(wc,z, col="red")
abline(lm(z~wc), col="red")

##Word Count vs. Bounce Rate
cor(wc,y)
plot(wc,y, col="red")
abline(lm(y~wc), col="red")

