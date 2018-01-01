rentfile = read.csv("C:/Users/Pranay Anand/Desktop/Project2/rent.csv")
str(rentfile)
head(rentfile)
plot(rent~size, data = rentfile)
#corelation coefficients b/w rent & size
cor(rentfile$rent, rentfile$size)
model1 = lm(rent~size, data = rentfile)
print(model1)
summary(model1)
abline(model1, col = "blue", lty = 3, lwd = 3)#lty = line type, lwd = line width
predic_val = predict(model1, data.frame("size" = 2000))
print(predic_val)
termplot(model1)