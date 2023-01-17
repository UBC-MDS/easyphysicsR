#' calculate the distance traveled by a falling object
#' using the equation of motion h = 1/2*gt^2, return the time
#' it takes for the free fall.
#'
#' @param height
#' A numeric value that is the distance of the free fall in meters.
#'
#'@param g The gravity of the free fall.
#' @return time A number that is the time it takes for the free fall.
#' @export
#'
#' @examples
#' freefall(10, g = 9.8)
#' 1.4286
#' freefall(10, g = 274)
#' 0.2702
#'
freefall <- function(height, g = 9.8) {
  time = sqrt(2*height/g)
  return(time)
  }
