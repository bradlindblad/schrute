
<!-- README.md is generated from README.Rmd. Please edit that file -->

# schrute

<img src='https://raw.githubusercontent.com/bradlindblad/schrute/master/man/figures/logo.png' align="right" height="200" />

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/bradlindblad/schrute.svg?branch=master)](https://travis-ci.org/bradlindblad/schrute)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/schrute)](https://cran.r-project.org/package=schrute)
[![metacran
downloads](https://cranlogs.r-pkg.org/badges/schrute)](https://cran.r-project.org/package=schrute)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
<!-- badges: end -->

Analyze and have fun with the text from the best series of all time

Also available in python as the [schrutepy package](https://github.com/bradlindblad/schrutepy)

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

tibble::glimpse(schrute::theoffice)
#> Observations: 55,130
#> Variables: 9
#> $ index            <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, …
#> $ season           <chr> "01", "01", "01", "01", "01", "01", "01", "01",…
#> $ episode          <chr> "01", "01", "01", "01", "01", "01", "01", "01",…
#> $ episode_name     <chr> "Pilot", "Pilot", "Pilot", "Pilot", "Pilot", "P…
#> $ director         <chr> "Ken Kwapis", "Ken Kwapis", "Ken Kwapis", "Ken …
#> $ writer           <chr> "Ricky Gervais;Stephen Merchant;Greg Daniels", …
#> $ character        <chr> "Michael", "Jim", "Michael", "Jim", "Michael", …
#> $ text             <chr> "All right Jim. Your quarterlies look very good…
#> $ text_w_direction <chr> "All right Jim. Your quarterlies look very good…
```

Or view the short vignette with:

    vignette("theoffice")
