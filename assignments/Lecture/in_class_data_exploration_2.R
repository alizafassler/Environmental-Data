#Loading data
require(here)
dat_birds = read.csv(here("data", "bird.sta.csv"))
dat_habitat = read.csv(here("data", "hab.sta.csv"))


#histogram
hist(dat_birds$GRJA, breaks = 0:6 -1.5)
hist(dat_birds$GRJA)


#looking at data
head(dat_habitat)

#making pairplot
png(filename = here("pairplot_ba.png"), width = 800, height = 600))
pairs(dat_habitat[, c("ba.con", "ba.snag", "ba.tot")], 
      main = "Pairplot of Basal Area Variables", col=
        adjustcolor(col = "red", alpha.f = 0.1))
)
dev.off()

#saving 
png(filename = here("pairplot_ba.png"), width = 800, height = 600)
)
dev.off()