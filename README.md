
<!-- README.md is generated from README.Rmd. Please edit that file -->



# hubnR

<!-- badges: start -->
<!-- badges: end -->

R Package Containing Utility Functions And Themes For Personal Use

This Package contains:  

- Custom Themes  
- Custom Color Palettes  
- Helper Functions  
- Helper to save Plots with Custom Theme  


## Installation

Install development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("maxhuebner/hubnR")
```

## Load and Setup

This is a basic example which shows you how to solve a common problem:


```r
library(hubnR)
setup_font_use() #To Load Font
#> Arial Black already registered with windowsFonts().
#> Arial already registered with windowsFonts().
#> Bahnschrift already registered with windowsFonts().
#> Calibri already registered with windowsFonts().
#> Calibri Light already registered with windowsFonts().
#> Cambria already registered with windowsFonts().
#> Candara already registered with windowsFonts().
#> Candara Light already registered with windowsFonts().
#> Comic Sans MS already registered with windowsFonts().
#> Consolas already registered with windowsFonts().
```

## Theme Example

Here is a plot without using the Theme:  


```r
mtcars %>%
  ggplot(aes(mpg, cyl, color = as_factor(gear))) +
  geom_point() +
  labs(title = "title", subtitle = "Testing Subtitle")
```

<img src="man/figures/README-standard theme-1.png" title="plot of chunk standard theme" alt="plot of chunk standard theme" width="100%" />

Plot using HubnR-Theme:  


```r
mtcars %>%
  ggplot(aes(mpg, cyl, color = as_factor(gear))) +
  geom_point() +
  labs(title = "title", subtitle = "Testing Subtitle") + 
  theme_hubnr()
```

<img src="man/figures/README-hubnr theme-1.png" title="plot of chunk hubnr theme" alt="plot of chunk hubnr theme" width="100%" />

