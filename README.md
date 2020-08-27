
# trimetStops

<!-- badges: start -->
[![CRAN
status](https://www.r-pkg.org/badges/version/trimetStops)](https://cran.r-project.org/package=trimetStops)
<!-- badges: end -->

Data package for the Tri-County Metropolitan Transportation District of Oregon (TriMet), the agency that manages the public transit system of Portland, OR. This package has one dataset, `trimetStops`, which contains data on the stops where vehicles pick up or drop off riders. These data include longitude, latitude, cross street, and direction of the stop.

These data were collected by TriMet. More information on the data can be found [here](https://developer.trimet.org/).



## Installation

We are now on CRAN! You can install the stable version of trimetStops from CRAN with:

```r
install.packages("trimetStops")
```

Or, for the developmental version:

``` r
devtools::install_github("graysonwhite/trimetStops")
```

## Example

If you wanted to plot all of the TriMet stations in the Portland Metro Area, you could use this data:

``` r
library(tidyverse)
library(trimetStops)
trimetStops %>%
  filter(location_type == "station") %>%
  ggplot(aes(x = long, y = lat)) +
  geom_point() 
```

## Blog

A blog post written about this package can be found at [this site](https://www.reed.edu/math/241/2020/03/20/trimetstops/).

