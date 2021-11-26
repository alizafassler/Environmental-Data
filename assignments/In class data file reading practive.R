#In class data file practice
require(here)
dat_rope = read.csv(here("data", "rope.csv"))
dat_delomys = read.csv(here("data", "delomys.csv"))
dat_catrate = read.csv(here("data", "catrate.csv"))

#looking at data
head(dat_rope)
head(dat_delomys)
head(dat_catrate)

#Making a plot
hist(dat_delomys$body_mass, main = "Aliza's Histogram of Delomys Body Mass", 
     xlab = "Body Mass")

# saving the file as an image
png(filename = here("hist_delomys.png"), width = 800, height = 600)
hist(dat_delomys$body_mass, main = "Aliza's Histogram of Delomys Body Mass", 
     xlab = "Body Mass")
dev.off()
