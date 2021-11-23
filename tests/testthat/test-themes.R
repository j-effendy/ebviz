library(ggplot2)
library(vdiffr)

test_that("Correct plots with theme_wombat()", {
  w1 <- ggplot(mtcars, aes(mpg,disp,color=factor(carb))) +
    geom_point(size=3) +
    labs(title="Scatter Plot",
         subtitle = "theme_wombat()",
         caption = "Data: mtcars") +
    theme_wombat()
  vdiffr::expect_doppelganger("scatterplot-wombat", w1)

  w2 <- ggplot(mtcars, aes(factor(carb),fill=factor(carb))) +
    geom_bar() +
    scale_y_continuous(expand = c(0,0)) +
    scale_x_discrete(expand = c(0,0)) +
    labs(title="Bar Plot",
         subtitle = "theme_wombat()",
         caption = "Data: mtcars") +
    theme_wombat()
  vdiffr::expect_doppelganger("barplot-wombat", w2)

  w3 <- ggplot(economics_long, aes(date, value01, colour = variable)) +
    geom_line() +
    scale_y_continuous(expand = c(0,0)) +
    scale_x_date(expand = c(0,0)) +
    labs(title = "Line Plot",
         subtitle = "theme_wombat()",
         caption = "Data: economics_long") +
    theme_wombat()
  vdiffr::expect_doppelganger("lineplot-wombat", w3)

  expect_null({
    x <- seq(-pi,pi,0.1)
    plot(x, sin(x)) + theme_wombat()
  })
})

test_that("Correct plots with theme_seagull()", {
  s1 <- ggplot(mtcars, aes(mpg,disp,color=factor(carb))) +
    geom_point(size=3) +
    labs(title="Scatter Plot",
         subtitle = "theme_seagull()",
         caption = "Data: mtcars") +
    theme_seagull()
  vdiffr::expect_doppelganger("scatterplot-seagull", s1)

  s2 <- ggplot(mtcars, aes(factor(carb),fill=factor(carb))) +
    geom_bar() +
    scale_y_continuous(expand = c(0,0)) +
    scale_x_discrete(expand = c(0,0)) +
    labs(title="Bar Plot",
         subtitle = "theme_seagull()",
         caption = "Data: mtcars") +
    theme_seagull()
  vdiffr::expect_doppelganger("barplot-seagull", s2)

  s3 <- ggplot(economics_long, aes(date, value01, colour = variable)) +
    geom_line() +
    scale_y_continuous(expand = c(0,0)) +
    scale_x_date(expand = c(0,0)) +
    labs(title = "Line Plot",
         subtitle = "theme_seagull()",
         caption = "Data: economics_long") +
    theme_seagull()
  vdiffr::expect_doppelganger("lineplot-seagull", s3)

  expect_null({
    x <- seq(-pi,pi,0.1)
    plot(x, sin(x)) + theme_seagull()
  })
})
