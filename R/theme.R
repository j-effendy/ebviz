#' @title ggplot2 theme from dataviz
#'
#' @description
#' This is a complete theme for ggplot2. This is built based on Tufte's principles
#' of graphical excellence.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot(mtcars, aes(mpg,disp,color=factor(carb))) +
#' geom_point(size=3) +
#'   labs(title="Scatter Plot",
#'        subtitle = "theme_seagull()",
#'        caption = "Data: mtcars") +
#'   theme_seagull()
#'
theme_seagull <- function(){
  ggplot2::theme_minimal() %+replace%

    ggplot2::theme(
      # grid elements
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_blank(),

      # strip elements
      strip.text = element_text(face = "bold",
                                size = rel(1.1),
                                margin = margin(0,0,0.5,0, unit = "cm")),

      # axis elements
      axis.title = element_text(face = "bold", size = rel(1.1)),
      axis.title.x = element_text(margin = margin(0.5,0,0,0, unit = "cm")),
      axis.title.y = element_text(margin = margin(0,0.5,0,0, unit = "cm"),
                                  angle = 90),
      axis.text = element_text(),
      axis.line.x = element_line(color = "#222222", size = 1),
      axis.ticks.x = element_line(),

      # legend elements
      legend.position = "bottom",
      legend.direction = "horizontal",

      # plot elements
      plot.title = element_text(size = rel(1.6),
                                face = "bold",
                                hjust = 0,
                                margin = margin(0,0,0.2,0, unit = "cm")),
      plot.subtitle = element_text(size = rel(1.1),
                                   margin = margin(0,0,0.5,0, unit = "cm"),
                                   hjust = 0),
      plot.caption = element_text(size = rel(0.8),
                                  margin = margin(1,0,0,0, unit = "cm"),
                                  hjust = 1)
    )
}

#' @title ggplot2 theme from dataviz
#'
#' @description
#' This is a complete theme for ggplot2. This is built based on Tufte's principles
#' of graphical excellence.
#'
#' @import ggplot2
#'
#' @export
#'
#' @examples
#' ggplot(mtcars, aes(mpg,disp,color=factor(carb))) +
#' geom_point(size=3) +
#'   labs(title="Scatter Plot",
#'        subtitle = "theme_wombat()",
#'        caption = "Data: mtcars") +
#'   theme_wombat()
#'
theme_wombat <- function(){
  ggplot2::theme_bw() %+replace%

    ggplot2::theme(
      # grid elements
      panel.grid.minor = element_blank(),
      panel.border = element_rect(color = "#dadadf", fill = NA),

      # strip elements
      strip.background = element_rect(color = "#dadadf", fill = "#dadadf"),
      strip.text = element_text(face = "bold",
                                size = rel(1.1)),

      # axis elements
      axis.title = element_text(face = "bold", size = rel(1.1)),
      axis.title.x = element_text(margin = margin(0.5,0,0,0, unit = "cm")),
      axis.title.y = element_text(margin = margin(0,0.5,0,0, unit = "cm"),
                                  angle = 90),
      axis.line = element_line(color = "#222222"),
      axis.text = element_text(),

      # legend elements
      legend.position = "bottom",
      legend.direction = "horizontal",

      # plot elements
      plot.title = element_text(size = rel(1.6),
                                face = "bold",
                                hjust = 0,
                                margin = margin(0,0,0.2,0, unit = "cm")),
      plot.subtitle = element_text(size = rel(1.1),
                                   margin = margin(0,0,0.5,0, unit = "cm"),
                                   hjust = 0),
      plot.caption = element_text(size = rel(0.8),
                                  margin = margin(1,0,0,0, unit = "cm"),
                                  hjust = 1)
    )
}
