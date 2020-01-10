
hubnr_colors <- c(
  `red`        = "#d11141",
  `green`      = "#00b159",
  `blue`       = "#00aedb",
  `orange`     = "#f37735",
  `yellow`     = "#ffc425",
  `light grey` = "#cccccc",
  `dark grey`  = "#8c8c8c")


#' Function to extract hubnr colors as hex codes
#'
#' @author Simon Jackson - drsimonj
#' @param ... Character names of hubnr_colors
#'
hubnr_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (hubnr_colors)

  hubnr_colors[cols]
}


hubnr_palettes <- list(
  `main`  = hubnr_cols("blue", "green", "yellow"),

  `cool`  = hubnr_cols("blue", "green"),

  `hot`   = hubnr_cols("yellow", "orange", "red"),

  `mixed` = hubnr_cols("blue", "green", "yellow", "orange", "red"),

  `grey`  = hubnr_cols("light grey", "dark grey")
)


#' Return function to interpolate a hubnr color palette
#'
#' @param palette Character name of palette in hubnr_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @author Simon Jackson - drsimonj
#'
hubnr_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- hubnr_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


#' Color scale constructor for hubnr colors
#'
#' @author Simon Jackson - drsimonj
#' @param palette Character name of palette in hubnr_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
scale_color_hubnr <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- hubnr_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("hubnr_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}


#' Fill scale constructor for hubnr colors
#'
#' @author Simon Jackson - drsimonj
#' @param palette Character name of palette in hubnr_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
scale_fill_hubnr <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- hubnr_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("hubnr_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
