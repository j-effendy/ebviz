library(ggplot2)
library(vdiffr)

test_that("test_that plot", {
  wb1 <- ggplot(economics_long, aes(date, value01, colour = variable)) +
    geom_line() +
    scale_y_continuous(expand = c(0,0)) +
    scale_x_date(expand = c(0,0)) +
    labs(title = "Line Plot",
         subtitle = "theme_wombat()",
         caption = "Data: economics_long") +
    theme_wombat()

  vdiffr::expect_doppelganger("Correct plot", wb1)
})
