#' calculate the time it takes for a free fall based on
#' distance traveled by a falling object and the gravity of the free fall
#' using the equation of motion h = 1/2*gt^2. It also returns
#' a plot compares the time it takes for the free fall on different planets.
#'
#' @param height
#' A numeric value that is the distance of the free fall in meters.
#'
#'@param g The gravity of the free fall.
#' @return time A number that is the time it takes for the free fall.
#'         plot A plot compares the time of free fall on different planets.
#' @import ggplot2
#' @import tidyverse
#' @import tibble
#' @import rlang
#' @import dplyr
#' @export
#' @examples
#' freefall(10, g = 9.8)
#' 1.4286
#' freefall(10, g = 274)
#' 0.2702
#'
freefall <- function(height, g = 9.8) {
  if (!is.numeric(height) | !is.vector(height)){
    stop('height input has to be numeric')
  }
  if (!is.numeric(g)){
    stop('gravity input has to be numeric')
  }
  if (height <= 0){
    stop('height has to be larger than 0')
  }
  if (g <= 0){
    stop('g has to be larger than 0')
  }

  # calculate the time for the free fall indicated by user
  time <- sqrt(2*height/g)

  # create tibble for making the comparison plot on different planet
  planet <- c('Moon', 'Mars', 'Uranus', 'Venus', 'Saturn', 'Sun')
  gravity <- c(0.17, 0.38, 0.89, 0.90, 1.07, 27.9)
  plot_df <- tibble(planet, gravity)

  # update the tibble with the planet information entered by user
  plot_df_update <- plot_df |>
    add_row(planet = "Your planet", gravity = g/9.8)

  # create an inner function to calculate free fall time on each planet
  planet_time <- function(gravity){
    time <- sqrt(2*height/(gravity*9.8))
  }

  # apply the time calculation function to the plot tibble
  plot_df_update$time <- apply(plot_df_update['gravity'], 1, planet_time)

  # make the comparison plot
  plot <- ggplot(plot_df_update,
                 aes(x = planet,
                     y = time,
                     color = planet)) +
    geom_point(size = 3) +
    geom_smooth() +
    theme_classic() +
    theme(legend.position = "none") +
    labs(x = "Planet",
         y = "Time for a free fall (seconds)") +
    ggtitle("Time for a free fall on different planets
with the height you entered")

  # create a list for two outcomes, time is the first element,
  # plot is the second element
  time_with_plot <- list(time, plot)
  return(time_with_plot)
  }
