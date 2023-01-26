#' Gravitational Energy
#'
#' calculate the energy possessed or acquired by an object due to a change in its position when it is present in a gravitational field  = m*h*g
#'
#' @param m mass of the object (kg)
#' @param g gravity of earth (m/s^2)
#' @param h height above the earth surface (m)
#'
#' @return GE Gravitational energy of the object
#' @export
#'
#' @examples
#' m <- 2.5
#' g <- 9.80665
#' h <- 10
#' gravitational_energy(m,h,g )
#' 245.16
gravitational_energy <- function(m,h,g=9.80665) {
    
if (!is.numeric(h) | !is.vector(h)){
    stop('height should be a numeric value')
  }
if (!is.numeric(m) | !is.vector(m)){
    stop('mass should be a numeric value')
  }
    if (!is.numeric(g)){
    stop('Gravity should be a numeric value')
  }
  if (h <= 0){
    stop('height should to be greater than 0')  
  }
  if (m <= 0){
    stop('mass should to be greater than 0')
  }
  
  if (g <= 0){
    stop('gravity should be more than zero')
      }
  # import libraries
  library(tidyverse)
  

  # calculate the gravitational energy possessed by object of mass m at height h 
  ge <- m*h*g
}
