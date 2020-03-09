#' Portland Metro Area Trimet Stops
#'
#' A dataset of all the Trimet stops in the Portland Metro Area.
#'
#' @format A data frame with 6880 rows and 9 variables:
#' \describe{
#'   \item{id}{ID number of the stop, as indexed by Trimet}
#'   \item{name}{Contains the cross street and direction of the stop}
#'   \item{description}{Contains the direction of the stop, and the city that the stop is in}
#'   \item{lat}{Latitude}
#'   \item{long}{Longitude}
#'   \item{url}{Links to Trimet's web page for the stop, which contains information on arrivals and delays}
#'   \item{location_type}{Either "station", which is defined as a physical structure or area that contains more than one platform, or "platform"}
#'   \item{direction}{The direction that the vehicle takes people from this stop}
#'   \item{position}{Relates the actual position of the stop to the name given to the stop}
#' }
#' @source \url{https://developer.trimet.org/GTFS.shtml}
"trimetStops"