
<!-- README.md is generated from README.Rmd. Please edit that file -->

# schrute

<img src='https://raw.githubusercontent.com/bradlindblad/schrute/master/man/figures/logo.png' align="right" height="200" />

<!-- badges: start -->

[![R build
status](https://github.com/bradlindblad/schrute/workflows/R-CMD-check/badge.svg)](https://github.com/bradlindblad/schrute/actions)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/schrute)](https://cran.r-project.org/package=schrute)
[![metacran
downloads](https://cranlogs.r-pkg.org/badges/grand-total/schrute)](https://cran.r-project.org/package=schrute)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)

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

tibble::glimpse(schrute::theoffice)
#> Rows: 55,130
#> Columns: 12
#> $ index            <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1…
#> $ season           <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
#> $ episode          <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
#> $ episode_name     <chr> "Pilot", "Pilot", "Pilot", "Pilot", "Pilot", "Pilot"…
#> $ director         <chr> "Ken Kwapis", "Ken Kwapis", "Ken Kwapis", "Ken Kwapi…
#> $ writer           <chr> "Ricky Gervais;Stephen Merchant;Greg Daniels", "Rick…
#> $ character        <chr> "Michael", "Jim", "Michael", "Jim", "Michael", "Mich…
#> $ text             <chr> "All right Jim. Your quarterlies look very good. How…
#> $ text_w_direction <chr> "All right Jim. Your quarterlies look very good. How…
#> $ imdb_rating      <dbl> 7.6, 7.6, 7.6, 7.6, 7.6, 7.6, 7.6, 7.6, 7.6, 7.6, 7.…
#> $ total_votes      <int> 3706, 3706, 3706, 3706, 3706, 3706, 3706, 3706, 3706…
#> $ air_date         <fct> 2005-03-24, 2005-03-24, 2005-03-24, 2005-03-24, 2005…
```

Or view the short vignette with:

    vignette("theoffice")

## Watch and learn

Julia Silge and David Robinson, creators of the [tidyText
package](https://www.tidytextmining.com/) both used the {schrute}
package for a \#tidyTuesday analysis. Watch their videos and learn from
the masters:

  - [David Robinson
    (Youtube)](https://www.youtube.com/watch?v=_IvAubTDQME&t=1092s)
  - [Julia Silge (Youtube)](https://www.youtube.com/watch?v=R32AsuKICAY)

## Other languages

This same dataset is also available in
[python](https://github.com/bradlindblad/schrutepy) and
[julia](https://github.com/bradlindblad/Schrute.jl)
