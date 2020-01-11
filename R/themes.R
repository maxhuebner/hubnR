#' hubnR Standard Theme
#'
#' @param base_size Base Size For Plot Text
#' @param font Font to Use
#' @export
theme_hubnr <- function(base_size = 12, font = "Roboto") {

  # Text setting
  txt <- ggplot2::element_text(size = base_size + 2, colour = "black", face = "plain")
  bold_txt <- ggplot2::element_text(
    size = base_size + 2, colour = "black",
    family = "Roboto", face = "bold"
  )
  large_txt <- ggplot2::element_text(
    size = base_size + 4, colour = "black",
    family = "Roboto", face = "bold"
  )

  ggplot2::theme_minimal(base_size = base_size, base_family = font) +
    ggplot2::theme(
      # Legend Settings
      legend.key = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.box = "vertical",

      # Backgrounds
      strip.background = ggplot2::element_blank(),
      strip.text = large_txt,
      plot.background = ggplot2::element_blank(),
      plot.margin = ggplot2::unit(c(1, 1, 1, 1), "lines"),

      # Axis & Titles
      text = txt,
      axis.text = txt,
      axis.ticks = ggplot2::element_blank(),
      axis.line = ggplot2::element_blank(),
      axis.title = bold_txt,
      plot.title = large_txt,

      #Caption
      plot.caption = ggplot2::element_text(size = base_size - 3),

      # Panel
      panel.grid = ggplot2::element_line(colour = NULL),
      panel.grid.major = ggplot2::element_line(colour = "#D2D2D2"),
      panel.grid.minor = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank()
    )
}

#' hubnR Thin Theme
#'
#' @param base_size Base Size For Plot Text
#' @param font Font to Use
#' @export
theme_hubnr_thin <- function(base_size = 12, font = "Roboto Thin") {
  theme_cus(base_size = base_size, font = font)
}

