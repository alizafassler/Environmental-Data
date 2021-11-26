#In class Data Exploration 2/1 

#Loading
install.packages("palmerpenguins")
require(palmerpenguins)
install.packages("here")
require(here)

#Class
class(penguins)

penguins = data.frame(penguins)


#Means
mean(penguins$body_mass_g)

#head
head(penguins)

#means na.rm = TRUE
mean(penguins$body_mass_g, na.rm = TRUE)

#Summary
summary(penguins)

#boxplot
boxplot(penguins$bill_depth_mm)

#comparative boxplot
boxplot(bill_depth_mm ~ sex, data = penguins)


#mulitiple graphs
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

#coplot
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)

#Coplot changed to year
coplot(body_mass_g ~ bill_depth_mm | year, data = penguins)

#scatterplot
plot(penguins$bill_length_mm ~ penguins$body_mass_g)

#exporting as png
require(here)
png(filename = here("basic_histogram.png"), width = 800, height = 600)
hist(penguins$body_mass_g)
dev.off()

#boxplot of flipper length
par(mfrow =c(1,2))
boxplot(penguins$flipper_length_mm, main = "Flipper Length")
boxplot(flipper_length_mm ~ sex, data = penguins, main = "Flipper Length by Sex", ylab = "Flipper Length (mm)")

require(here)
png(filename = here("basic_boxplot.png"), width = 800, height = 600)
boxplot(flipper_length_mm ~ sex, data = penguins, main = "Flipper Length by Sex", ylab = "Flipper Length (mm)")
dev.off()