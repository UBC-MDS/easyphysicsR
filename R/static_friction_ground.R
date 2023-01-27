#'  calculating the friction force for static object. The formula is fr = mu * N, where 
#'  the mu is the coefficient of friction which incorporating the characteristics of the surface.
#'  For example, if you want to calculate the friction when you put your phone on a table, then the coefficient of friction is 
#'  depending on the matirial of the table. N is the normal force which means the perpendicular force of the surface which object 
#'  touching on. In our case, it would be m*g since it is on the ground. fr = mu * m * g.
#'
#' @param mu
#' A numeric value that is the coefficient of friction
#'
#' @param g 
#' The gravity of the free fall.
#'
#' @param m
#' A numeric value that is the mass of the object
#' @return the static friction force
#' @export
#'
#' @examples
#' static_friction_ground(mu=0.2, g = 9.8, m=10)
#' 19.6
#' static_friction_ground(g=10, mu=0.2, m=2)
#' 4
#'
static_friction_ground <- function(mu, m, g = 9.8) {
  if (!is.numeric(mu)){
    stop('coefficient of friction input has to be numeric')
  }
  if (!is.numeric(g)){
    stop('gravity input has to be numeric')
  }
  if (!is.numeric(m)){
    stop('mass input has to be numeric')
  }
  result <- mu*m*g
  return(result)
  
 }
