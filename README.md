
<!-- README.md is generated from README.Rmd. Please edit that file -->

# schrute

<img src='https://raw.githubusercontent.com/bradlindblad/schrute/master/man/figures/logo.png' align="right" height="200" />

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/bradlindblad/schrute.svg?branch=master)](https://travis-ci.org/bradlindblad/schrute)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/schrute)](https://cran.r-project.org/package=schrute)
[![metacran
downloads](https://cranlogs.r-pkg.org/badges/schrute)](https://cran.r-project.org/package=schrute)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

Analyze and have fun with the text from the best series of all time

## Installation

You can install the released version of schrute from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("schrute")
```

## Usage

The schrute package has one and only one purpose: share the complete
script transcription for The Office (US) television show. Users are
encouraged to use the tidy text data for exploration, learning and fun.

Check out the data like so:

``` r
library(schrute)
library(tibble)

schrute::theoffice
#> # A tibble: 55,130 x 7
#>    index season episode episode_name character text      text_w_direction  
#>    <int> <chr>  <chr>   <chr>        <chr>     <chr>     <chr>             
#>  1     1 01     01      " Pilot"     Michael   " All ri… " All right Jim. …
#>  2   358 01     01      " Pilot"     Jim       " Oh, I … " Oh, I told you.…
#>  3   715 01     01      " Pilot"     Michael   " So you… " So you've come …
#>  4  1072 01     01      " Pilot"     Jim       " Actual… " Actually, you c…
#>  5  1429 01     01      " Pilot"     Michael   " All ri… " All right. Well…
#>  6  1786 01     01      " Pilot"     Michael   " So tha… " [on the phone] …
#>  7  2143 01     01      " Pilot"     Michael   " I've, … " I've, uh, I've …
#>  8  2500 01     01      " Pilot"     Pam       " Well. … " Well. I don't k…
#>  9  2857 01     01      " Pilot"     Michael   " If you… " If you think sh…
#> 10  3214 01     01      " Pilot"     Pam       " What?"  " What?"          
#> # … with 55,120 more rows
```

Or view the short vignette with:

    vignette("theoffice")
