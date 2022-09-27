
<!-- README.md is generated from README.Rmd. Please edit that file -->

# schrute <img src="https://github.com/bradlindblad/schrute/blob/master/man/figures/logo.png?raw=true" align="right" alt="" width="120" />

<!-- badges: start -->

[![R build
status](https://github.com/bradlindblad/schrute/workflows/R-CMD-check/badge.svg)](https://github.com/bradlindblad/schrute/actions)
[![pkgdown](https://github.com/bradlindblad/schrute/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/bradlindblad/schrute/actions/workflows/pkgdown.yaml)
[![metacran
downloads](https://cranlogs.r-pkg.org/badges/grand-total/schrute)](https://cran.r-project.org/package=schrute)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/schrute)](https://cran.r-project.org/package=schrute)

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
#> Warning: package 'tibble' was built under R version 4.1.3

tibble::glimpse(schrute::theoffice)
#> Rows: 55,130
#> Columns: 9
#> $ index            <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16…
#> $ season           <chr> "01", "01", "01", "01", "01", "01", "01", "01", "01",…
#> $ episode          <chr> "01", "01", "01", "01", "01", "01", "01", "01", "01",…
#> $ episode_name     <chr> "Pilot", "Pilot", "Pilot", "Pilot", "Pilot", "Pilot",…
#> $ director         <chr> "Ken Kwapis", "Ken Kwapis", "Ken Kwapis", "Ken Kwapis…
#> $ writer           <chr> "Ricky Gervais;Stephen Merchant;Greg Daniels", "Ricky…
#> $ character        <chr> "Michael", "Jim", "Michael", "Jim", "Michael", "Micha…
#> $ text             <chr> "All right Jim. Your quarterlies look very good. How …
#> $ text_w_direction <chr> "All right Jim. Your quarterlies look very good. How …
```

Or view the short vignette with:

    vignette("theoffice")

## Watch and learn

Julia Silge and David Robinson, creators of the [tidyText
package](https://www.tidytextmining.com/) both used the {schrute}
package for a \#tidyTuesday analysis. Watch their videos and learn from
the masters:

-   [David Robinson
    (Youtube)](https://www.youtube.com/watch?v=_IvAubTDQME&t=1092s)
-   [Julia Silge (Youtube)](https://www.youtube.com/watch?v=R32AsuKICAY)

## Other languages

This dataset is also available in
[python](https://github.com/bradlindblad/schrutepy) and
[julia](https://github.com/bradlindblad/Schrute.jl)
