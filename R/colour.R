# List of olor palettes
quokka_palette <- c("#8C01E6", "#93B1EB", "#AB313D", "#D6CA24")
quoll_palette <- c('#8D5698', '#EFD36F', '#247A3E', '#17B0A8')
seal_palette <- colorspace::sequential_hcl(7,
                                           h = c(0, -100),
                                           c = c(80,40),
                                           l = c(40, 75),
                                           power = c(1,1))
snake_palette <- colorspace::sequential_hcl(6,
                                            h = c(250, 90),
                                            c = c(40, 55),
                                            l = c(33,98),
                                            power = c(0.5,1),
                                            rev = TRUE)
dingo_palette <- colorspace::diverge_hcl(7,
                                         h = c(260, 0),
                                         c = 80,
                                         l = c(30, 90),
                                         power = 1.5)
dolphin_palette <- colorspace::diverging_hcl(n = 7,
                                             h = c(265, 45),
                                             c = 80,
                                             l = c(70, 95),
                                             power = c(0.5, 2),
                                             rev = TRUE)

#' Qualitative, sequential, and diverging color scales from mrpviz
#'
#' @param palette
#'
#' @description The mrpviz color scales provide accessible color schemes
#' for various data types. Quoll and Quokka palettes are qualitative palettes,
#' Seal and Snake palettes are sequential palettes, and Dingo and Dolphin
#' palettes are diverging palettes.
#'
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' library(ggplot2)
#'
#' # Quokka palette
#' ggplot(mtcars, aes(mpg,disp,color=factor(vs))) +
#'     geom_point(size=3) +
#'     scale_colour_mrpviz("quokka")
#'
#' # Quoll palette
#' ggplot(mtcars, aes(mpg,disp,color=factor(vs))) +
#'     geom_point(size=3) +
#'     scale_colour_mrpviz("quoll")
#'
#' # Seal palette
#' ggplot(mtcars, aes(mpg,disp,color=mpg)) +
#'     geom_point(size=3) +
#'     geom_point(size=3) +
#'     scale_colour_mrpviz("seal")
#'
#' # Snake palette
#' ggplot(mtcars, aes(mpg,disp,color=mpg)) +
#'     geom_point(size=3) +
#'     geom_point(size=3) +
#'     scale_colour_mrpviz("snake")
#'
#' # Dingo palette
#' ggplot(mtcars, aes(mpg,disp,color=mpg)) +
#'     geom_point(size=3) +
#'     scale_colour_mrpviz("dingo")
#'
#' # Dolphin palette
#' ggplot(mtcars, aes(mpg,disp,color=mpg)) +
#'     geom_point(size=3) +
#'     scale_colour_mrpviz("dolphin")
#'
scale_colour_mrpviz <- function(palette){
  if (palette == "quokka"){
    ggplot2::scale_color_manual(values = quokka_palette)
  } else if (palette == "quoll") {
    ggplot2::scale_color_manual(values = quoll_palette)
  } else if (palette == "seal") {
    ggplot2::scale_color_gradientn(colors = seal_palette)
  } else if (palette == "snake") {
    ggplot2::scale_color_gradientn(colors = snake_palette)
  } else if (palette == "dingo") {
    ggplot2::scale_color_gradientn(colors = dingo_palette)
  } else if (palette == "dolphin") {
    ggplot2::scale_color_gradientn(colors = dolphin_palette)
  } else {
    warning(paste("Palette", palette, "does not exist. Please choose from the
                  following options: quokka, quoll, seal, snake, dingo, and dolphin"))
  }
}

#' @rdname scale_colour_mrpviz
scale_color_mrpviz <- scale_colour_mrpviz


#' Qualitative, sequential, and diverging color scales from mrpviz
#'
#' @param palette
#'
#' @description The mrpviz color scales provide accessible color schemes
#' for various data types. Quoll and Quokka palettes are qualitative palettes,
#' Seal and Snake palettes are sequential palettes, and Dingo and Dolphin
#' palettes are diverging palettes.
#'
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' library(ggplot2)
#'
#' # Quokka palette
#' ggplot(mpg, aes(class)) +
#' geom_bar(aes(fill = drv)) +
#' scale_fill_mrpviz("quokka")
#'
#' # Quoll palette
#' ggplot(mpg, aes(class)) +
#' geom_bar(aes(fill = drv)) +
#' scale_fill_mrpviz("quoll")
#'
#' # Seal palette
#' ggplot(faithfuld) +
#' geom_tile(aes(eruptions, waiting, fill = density)) +
#' scale_fill_mrpviz("seal")
#'
#' # Snake palette
#' ggplot(faithfuld) +
#' geom_tile(aes(eruptions, waiting, fill = density)) +
#' scale_fill_mrpviz("snake")
#'
#' # Dingo palette
#' ggplot(faithfuld) +
#' geom_tile(aes(eruptions, waiting, fill = density)) +
#' scale_fill_mrpviz("dingo")
#'
#' # Dolphin palette
#' ggplot(faithfuld) +
#' geom_tile(aes(eruptions, waiting, fill = density)) +
#' scale_fill_mrpviz("dolphin")
#'
scale_fill_mrpviz <- function(palette){
  if (palette == "quokka"){
    ggplot2::scale_fill_manual(values = quokka_palette)
  } else if (palette == "quoll") {
    ggplot2::scale_fill_manual(values = quoll_palette)
  } else if (palette == "seal") {
    ggplot2::scale_fill_gradientn(colors = seal_palette)
  } else if (palette == "snake") {
    ggplot2::scale_fill_gradientn(colors = snake_palette)
  } else if (palette == "dingo") {
    ggplot2::scale_fill_gradientn(colors = dingo_palette)
  } else if (palette == "dolphin") {
    ggplot2::scale_fill_gradientn(colors = dolphin_palette)
  } else {
    warning(paste("Palette", palette, "does not exist. Please choose from the
                  following options: quokka, quoll, seal, snake, dingo, and dolphin"))
  }
}
