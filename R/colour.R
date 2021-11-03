#' @title Qualitative color scales from dataviz
#'
#' @description The Quokka color scales is an accessible qualitative color scale.
#' This color scale is useful to show categorical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(mtcars, aes(mpg,disp,color=factor(vs))) +
#'     geom_point(size=3) + scale_color_quokka()
#'
scale_color_quokka <- function(){
  color_palette <- c("#8C01E6", "#93B1EB", "#AB313D", "#D6CA24")

  ggplot2::scale_color_manual(values = color_palette)
}


#' @title Qualitative color scales from dataviz
#'
#' @description The Quokka color scales is an accessible qualitative color scale.
#' This color scale is useful to show categorical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(mpg, aes(class)) +
#' geom_bar(aes(fill = drv)) +
#' scale_fill_quokka()
#'
scale_fill_quokka <- function(){
  color_palette <- c("#8C01E6", "#93B1EB", "#AB313D", "#D6CA24")

  ggplot2::scale_fill_manual(values = color_palette)
}

#' @title Qualitative color scales from dataviz
#'
#' @description The Quoll color scales is an accessible qualitative color scale.
#' This color scale is useful to show categorical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(mtcars, aes(mpg,disp,color=factor(vs))) +
#'     geom_point(size=3) +
#'     scale_color_quoll()
#'
scale_color_quoll <- function(){
  color_palette <- c('#8D5698', '#EFD36F', '#247A3E', '#17B0A8')

  ggplot2::scale_color_manual(values = color_palette)
}

#' @title Qualitative color scales from dataviz
#'
#' @description The Quoll color scales is an accessible qualitative color scale.
#' This color scale is useful to show categorical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(mpg, aes(class)) +
#' geom_bar(aes(fill = drv)) +
#' scale_fill_quoll()
#'
scale_fill_quoll <- function(){
  color_palette <- c('#8D5698', '#EFD36F', '#247A3E', '#17B0A8')

  ggplot2::scale_fill_manual(values = color_palette)
}


#' @title Sequential color scales from dataviz
#'
#' @description The Seal color scales is an accessible sequential color scale.
#' This color scale is useful to show numerical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(mtcars, aes(mpg,disp,color=mpg)) +
#'     geom_point(size=3) +
#'     scale_color_seal()
#'
scale_color_seal <- function(){
  color_palette <- colorspace::sequential_hcl(7,
                                              h = c(0, -100),
                                              c = c(80,40),
                                              l = c(40, 75),
                                              power = c(1,1))

  ggplot2::scale_color_gradientn(colors = color_palette)
}

#' @title Sequential color scales from dataviz
#'
#' @description The Seal color scales is an accessible sequential color scale.
#' This color scale is useful to show numerical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(faithfuld) +
#' geom_tile(aes(eruptions, waiting, fill = density)) +
#' scale_fill_seal()
#'
scale_fill_seal <- function(){
  color_palette <- colorspace::sequential_hcl(7,
                                              h = c(0, -100),
                                              c = c(80,40),
                                              l = c(40, 75),
                                              power = c(1,1))

  ggplot2::scale_fill_gradientn(colors = color_palette)
}

#' @title Sequential color scales from dataviz
#'
#' @description The Snake color scales is an accessible sequential color scale.
#' This color scale is useful to show numerical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(mtcars, aes(mpg,disp,color=mpg)) +
#'     geom_point(size=3) +
#'     scale_color_snake()
#'
scale_color_snake <- function(){
  color_palette <- colorspace::sequential_hcl(6,
                                              h = c(250, 90),
                                              c = c(40, 55),
                                              l = c(33,98),
                                              power = c(0.5,1),
                                              rev = TRUE)

  ggplot2::scale_color_gradientn(colors = color_palette)
}

#' @title Sequential color scales from dataviz
#'
#' @description The Snake color scales is an accessible sequential color scale.
#' This color scale is useful to show numerical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(faithfuld) +
#' geom_tile(aes(eruptions, waiting, fill = density)) +
#' scale_fill_snake()
#'
scale_fill_snake <- function(){
  color_palette <- colorspace::sequential_hcl(6,
                                              h = c(250, 90),
                                              c = c(40, 55),
                                              l = c(33,98),
                                              power = c(0.5,1),
                                              rev = TRUE)

  ggplot2::scale_fill_gradientn(colors = color_palette)
}

#' @title Diverging color scales from dataviz
#'
#' @description The Dingo color scales is an accessible diverging color scale.
#' This color scale is useful to show numerical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(mtcars, aes(mpg,disp,color=mpg)) +
#'     geom_point(size=3) +
#'     scale_color_dingo()
#'
scale_color_dingo <- function(){
  color_palette <- colorspace::diverge_hcl(7,
                                           h = c(260, 0),
                                           c = 80,
                                           l = c(30, 90),
                                           power = 1.5)

  ggplot2::scale_color_gradientn(colors = color_palette)
}

#' @title Diverging color scales from dataviz
#'
#' @description The Dingo color scales is an accessible diverging color scale.
#' This color scale is useful to show numerical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(faithfuld) +
#' geom_tile(aes(eruptions, waiting, fill = density)) +
#' scale_fill_dingo()
#'
scale_fill_dingo <- function(){
  color_palette <- colorspace::diverge_hcl(7,
                                           h = c(260, 0),
                                           c = 80,
                                           l = c(30, 90),
                                           power = 1.5)

  ggplot2::scale_fill_gradientn(colors = color_palette)
}

#' @title Diverging color scales from dataviz
#'
#' @description The Dolphin color scales is an accessible diverging color scale.
#' This color scale is useful to show numerical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(mtcars, aes(mpg,disp,color=mpg)) +
#'     geom_point(size=3) +
#'     scale_color_dolphin()
#'
scale_color_dolphin <- function(){
  color_palette <- colorspace::diverging_hcl(n = 7,
                                             h = c(265, 45),
                                             c = 80,
                                             l = c(70, 95),
                                             power = c(0.5, 2),
                                             rev = TRUE)

  ggplot2::scale_color_gradientn(colors = color_palette)
}

#' @title Diverging color scales from dataviz
#'
#' @description The Dolphin color scales is an accessible diverging color scale.
#' This color scale is useful to show numerical information in a plot.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(faithfuld) +
#' geom_tile(aes(eruptions, waiting, fill = density)) +
#' scale_fill_dolphin()
#'
scale_fill_dolphin <- function(){
  color_palette <- colorspace::diverging_hcl(n = 7,
                                             h = c(265, 45),
                                             c = 80,
                                             l = c(70, 95),
                                             power = c(0.5, 2),
                                             rev = TRUE)

  ggplot2::scale_fill_gradientn(colors = color_palette)
}
