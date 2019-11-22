
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
#install.packages("schrute")
devtools::install_github("bradlindblad/schrute")
```

## Usage

The schrute package has one and only one purpose: share the complete
script transcription for The Office (US) television show. Users are
encouraged to use the tidy text data for exploration, learning and fun.

Check out the data like so:

    schrute::theoffice

Returns:

    # A tibble: 16,801 x 7
       index season episode episode_name  actor text        text_w_direction     
       <int> <chr>  <chr>   <chr>         <chr> <chr>       <chr>                
     1     1 01     01      " Pilot"      Mich… " All righ… " All right Jim. You…
     2     2 02     01      " Diversity … Mich… " Hey, uh,… " Hey, uh, can I hel…
     3     3 03     01      " Health Car… Mich… " Pam. Pam… " Pam. Pamela. Pam-e…
     4     4 04     01      " The Allian… Dwig… " Michael!… " Michael!?"         
     5     5 05     01      " Basketball" Mich… " Hey, you… " [to Jim] Hey, you …
     6     6 06     01      " Hot Girl"   Jan   " Are you … " Are you listening …
     7     7 06     01      " Hot Girl"   Roy   " Huh? huh… " Huh? huh? Come on.…
     8     8 01     02      " The Dundie… Mich… " Tonight … " Tonight is the Dun…
     9     9 01     02      " The Dundie… Jim   " What a g… " What a great year …
    10    10 02     02      " Sexual Har… Mich… " Hey, wha… " [clears throat] He…
    # … with 16,791 more rows
