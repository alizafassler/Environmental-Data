require(here)
#loading and making database
dat_bird= read.csv(here("data", "bird.sta.csv"))
dat_habitat = read.csv(here("data", "hab.sta.csv"))
dat_all = merge(dat_bird, dat_habitat)

#walkthrough
x_observed = c(2, 6)
print(x_observed)
dpois(x = 2, lambda = 4.5)
dpois(x = 6, lambda = 4.5)
dpois(x = 2, lambda = 4.5) * dpois(x = 6, lambda = 4.5)
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.5)
prod(dpois(x = wiwa_counts, lambda = 4.5))
sum(log(dpois(x = wiwa_counts, lambda = 4.5)))

#exploring
summary(dat_all$WIWA)
hist(dat_all$WIWA)
hist(dat_all$WIWA, breaks = 7)
hist(dat_all$WIWA, breaks = 0:7)
hist(dat_all$WIWA, breaks = 0:7 - .5)
par(mfrow = c(1, 2))
dat = dat_all$WIWA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nWilson's Warbler counts")

dat = dat_all$GRJA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nGray Jay counts")

wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 1.5)
sum(log(dpois(x = wiwa_counts, lambda = 3.998)))

WIWR_counts = dat_all$WIWR

hist(WIWR_counts, breaks = 0:(max(wIWR_counts) + 1) - 0.5)

sum(log(dpois(x = WIWR_counts, lambda = 1.44)))


