library(ggplot2)
library(scales)
library(colorspace)

# Qualitative

## Hue is increasing in a very smooth pattern. More prefer to use this for
## sequential for ordering
## for qualitative, we need more variation in the hue line. Need to avoid
## implicit ordering

brewer_qualitative <- c("#a6cee3", "#1f78b4", "#b2df8a", "#33a02c")

scale_fill_quokka <- function(){
  color_palette <- colorspace::qualitative_hcl(6,
                                               h = c(-30, -300),
                                               c = 50,
                                               l = 75)
  discrete_scale("fill",
                 "quokka",
                 scales::manual_pal(values = color_palette))
}

scale_fill_quoll <- function(){
  color_palette <- colorspace::qualitative_hcl(n = 6,
                                               h = c(60, 240),
                                               c = 50,
                                               l = 75)

  discrete_scale("fill",
                 "quoll",
                 scales::manual_pal(values = color_palette))
}

# Sequential
scale_fill_seal <- function(){
  color_palette <- colorspace::sequential_hcl(7,
                                              h = c(0, -100),
                                              c = c(80,40),
                                              l = c(40, 75),
                                              power = c(1,1))
  discrete_scale("fill",
                 "seal",
                 scales::manual_pal(values = color_palette))
}

scale_fill_snake <- function(){
  color_palette <- colorspace::sequential_hcl(6,
                                              h = c(250, 90),
                                              c = c(40, 55),
                                              l = c(33,98),
                                              power = c(0.5,1),
                                              rev = TRUE)
  discrete_scale("fill",
                 "snake",
                 scales::manual_pal(values = color_palette))
}

# Diverging

## dingo is not even, 3 blue, 1 grey, 2 recs. Need to be even.
scale_fill_dingo <- function(){
  color_palette <- colorspace::diverge_hcl(7,
                                           h = c(260, 0),
                                           c = 80,
                                           l = c(30, 90),
                                           power = 1.5)
  discrete_scale("fill",
                 "dingo",
                 scales::manual_pal(values = color_palette))
}

## Maybe change yellow to orange. Yellow tends to fades.
scale_fill_dolphin <- function(){
  color_palette <- colorspace::diverging_hcl(n = 7,
                                             h = c(265, 80),
                                             c = 80,
                                             l = c(70, 95),
                                             power = c(0.5, 2),
                                             rev = TRUE)
  discrete_scale("fill",
                 "dolphin",
                 scales::manual_pal(values = color_palette))
}
