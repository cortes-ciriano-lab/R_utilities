
#######################################################
# Define colourblind-friendly colour palette (cs_pal)
## Carolin Sauer
## 2022/0701
#######################################################


# colours were picked based on a Nature Methods publication by Bang Wong (https://www.nature.com/articles/nmeth.1618) 
# and the following online tool simulating colours on colourblind scales: https://davidmathlogic.com/colorblind/

# Colour Hex Codes
cs_black <-"#000000"
cs_terra <-"#E69F00"
cs_skyblue <-"#56B4E9"
cs_green <-"#009E73"
cs_yellow <-"#F0E442"
cs_blue <-"#0072B2"
cs_orange <-"#D55E00"
cs_pink <-"#CC79A7"
cs_red <-"#AC1525"
cs_camblue <-"#85B09A"
cs_purple <-"#A06BBA"
cs_lavend <-"#E1D2FB"

# original colour palette
cs_pal <- c(cs_black, cs_blue, cs_orange, cs_pink, cs_red, cs_camblue, cs_lavend, cs_purple, cs_skyblue, cs_green, cs_yellow, cs_terra)

# pastels (add pastels of same colours for larger colour family)
if(!require(colorspace)){
  install.packages("colorspace")
}
library(colorspace)

desat <- function(cols, sat=0.5) {
  X <- diag(c(1, sat, 1)) %*% rgb2hsv(col2rgb(cols))
  hsv(X[1,], X[2,], X[3,])
}
cs_pal_pastels <- lighten(desat(cs_pal, 0.5), 0.3)

# long colour palette
cs_pal_long <- c(cs_pal, cs_pal_pastels)


# functions to display/shuffle colour palette
show_cs_palette <- function(palette){
  barplot(c(1:length(palette)), col = palette)
}

shuffle_colours <- function(palette, seed){
  if (missing(seed)) {
    cs_shuffle <<- list(palette)[[1]][sample(1:length(palette))]
    barplot(c(1:length(cs_shuffle)), col = cs_shuffle)
  } else {
    set.seed(seed)
    cs_shuffle <<- list(palette)[[1]][sample(1:length(palette))]
    barplot(c(1:length(cs_shuffle)), col = cs_shuffle)    
  }
}


show_cs_palette(cs_pal)
show_cs_palette(cs_pal_long)
show_cs_palette(cs_pal_pastels)



