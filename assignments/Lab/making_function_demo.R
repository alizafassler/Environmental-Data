require(palmerpenguins)
require(here)

##writing code before creating the function
image_file = "ugly_histogram.png"

png(here("images", image_file), width = 1200, height = 1000)

hist(penguins$flipper_length_mm)

dev.off()

##creating function
save_png_1 = function(image_file)
{
  require(here)
  png(here("images", image_file), width = 1200, height = 1000)
  
}

##testing codes
save_png_1("ugly_histo_2.png")

hist(penguins$body_mass_g)

dev.off

##adding color customization
dat_vec = penguins$body_mass_g

my_title ="Aliza's Histogram!"
x_label = "Aliza's Data!"

hist(dat_vec, col = "steelblue",
     main = my_title,
     xlab = x_label)

steel_blue_hist_fun = function (dat_vec, my_title, x_label)
{
  hist(dat_vec, col = "steelblue",
       main = my_title,
       xlab = x_label)
}
  
##testing the function

steel_blue_hist_fun(dat_vec = sample(x = 1:1000,size = 1000, replace = TRUE), 
                    my_title = "Aliza's Random Numbers ",
                    x_label = "x-values")

