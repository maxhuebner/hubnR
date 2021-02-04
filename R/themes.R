#' hubnR OLD Standard Theme
#'
#' @param base_size Base Size For Plot Text
#' @param font Font to Use
#' @export
theme_hubnr_old <- function(base_size = 11, font = "Roboto") {

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

#' hubnR OLD Thin Theme
#'
#' @param base_size Base Size For Plot Text
#' @param font Font to Use
#' @export
theme_hubnr_thin_old <- function(base_size = 11, font = "Roboto Thin") {
  theme_hubnr(base_size = base_size, font = font)
}


#' HubnR Personal Standard Theme
#'
#' Slighly Modified and heavily inspired by JThomasMocks \href{Theme theme_538}{https://github.com/jthomasmock/tomtom/blob/master/R/theme_tom_old.R}
#'
#' @param base_size Base Size For Plot Text
#' @param font Font to Use
#' @export theme_hubnr

theme_hubnr <- function(base_size = 12, font = "Roboto") {

  ### Palette

  # http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette
  cb_palette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
  # https://www.color-hex.com/color-palette/74767
  tom_palette <- c("#003399", "#ff2b4f", "#3686d3", "#FCAB27", "#88398a")
  # murdoch theme https://gist.github.com/johnburnmurdoch/bd20db77b2582031604ccd1bdc4be582
  ft_palette <- c("#00218D", "#FF2B4F", "#0083EB", "#FCAB27", "#FF49EF")

  # color pieces
  scale_fill_cb <- function() {
    structure(list(
      scale_fill_manual(values = cb_palette)
    ))
  }

  scale_color_discrete_cb <- function() {
    structure(list(
      scale_color_manual(values = cb_palette)
    ))
  }

  scale_color_continuous_cb <- function() {
    structure(list(
      scale_color_gradientn(colours = cb_palette)
    ))
  }

  # Text setting
  txt <- element_text(size = base_size + 2, colour = "black", face = "plain")
  bold_txt <- element_text(
    size = base_size + 2, colour = "black",
    family = "Roboto", face = "bold"
  )
  large_txt <- element_text(size = base_size + 4, color = "black", face = "bold")


  theme_minimal(base_size = base_size, base_family = font) + # %+replace%
    theme(
      # Legend Settings
      legend.key = element_blank(),
      legend.background = element_blank(),
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.box = "vertical",

      # Backgrounds
      strip.background = element_rect(),
      plot.background = element_rect(),
      plot.margin = unit(c(1, 1, 1, 1), "lines"),

      # Shapes
      # line_set = element_line(
      #     colour = "black",
      #     size = rel(0.5),
      #     linetype = "solid"),
      # rect_set = element_rect(
      #     fill = "#F0F0F0",
      #     linetype = 0,
      #     colour = NA),

      # Axis & Titles
      text = txt,
      axis.text = txt,
      axis.ticks = element_blank(),
      axis.line = element_blank(),
      # axis.line = element_line(
      #     colour = "black",
      #     size = rel(0.5),
      #     linetype = "solid"),
      axis.title = bold_txt,
      plot.title = large_txt,

      # Panel
      panel.grid = element_line(colour = NULL),
      panel.grid.major = element_line(colour = "#D2D2D2"),
      panel.grid.minor = element_blank()
    )
}


#' Minimal ggplot2 theme using the Roboto Condensed and Roboto Bold fonts
#'
#' See: \url{https://github.com/juliasilge/silgelib}
#'
#' @param base_size base font size
#' @param strip_text_size,strip_text_margin plot strip text size and margin
#' @param subtitle_size,subtitle_margin plot subtitle size and margin
#' @param plot_title_size,plot_title_margin plot title size and margin
#' @param ... Other arguments passed to \code{theme_minimal}
#'
#' @details The Roboto Condensed and Roboto Bold fonts are both Google fonts;
#' they can be found at \url{https://fonts.google.com/specimen/Roboto+Condensed}
#' and \url{https://fonts.google.com/specimen/Roboto}. These fonts must be
#' installed locally on your computer for this theme to work.
#'
#' @export
theme_roboto <- function(base_size = 11,
                         strip_text_size = 12,
                         strip_text_margin = 5,
                         subtitle_size = 13,
                         subtitle_margin = 10,
                         plot_title_size = 16,
                         plot_title_margin = 10,
                         ...) {
  ret <- ggplot2::theme_minimal(base_family = "Roboto Condensed",
                                base_size = base_size, ...)
  ret$strip.text <- ggplot2::element_text(
    hjust = 0, size = strip_text_size,
    margin = ggplot2::margin(b = strip_text_margin),
    family = "Roboto",
    face = "bold"
  )
  ret$plot.subtitle <- ggplot2::element_text(
    hjust = 0, size = subtitle_size,
    margin = ggplot2::margin(b = subtitle_margin),
    family = "Roboto Condensed"
  )
  ret$plot.title <- ggplot2::element_text(
    hjust = 0, size = plot_title_size,
    margin = ggplot2::margin(b = plot_title_margin),
    family = "Roboto",
    face = "bold"
  )
  ret
}


#' Minimal ggplot2 theme using the IBM Plex Sans fonts
#'
#' See: \url{https://github.com/juliasilge/silgelib}
#'
#' @param base_size base font size
#' @param strip_text_size,strip_text_margin plot strip text size and margin
#' @param subtitle_size,subtitle_margin plot subtitle size and margin
#' @param plot_title_size,plot_title_margin plot title size and margin
#' @param ... Other arguments passed to \code{theme_minimal}
#'
#' @details The IBM Plex fonts are open source and can be found at
#' \url{https://ibm.github.io/type/}. These fonts must be installed locally on
#' your computer for this theme to work.
#'
#' @export
theme_plex <- function(base_size = 11,
                       strip_text_size = 12,
                       strip_text_margin = 5,
                       subtitle_size = 13,
                       subtitle_margin = 10,
                       plot_title_size = 16,
                       plot_title_margin = 10,
                       ...) {
  ret <- ggplot2::theme_minimal(base_family = "IBM Plex Sans",
                                base_size = base_size, ...)
  ret$strip.text <- ggplot2::element_text(
    hjust = 0, size = strip_text_size,
    margin = ggplot2::margin(b = strip_text_margin),
    family = "IBM Plex Sans Medium"
  )
  ret$plot.subtitle <- ggplot2::element_text(
    hjust = 0, size = subtitle_size,
    margin = ggplot2::margin(b = subtitle_margin),
    family = "IBM Plex Sans"
  )
  ret$plot.title <- ggplot2::element_text(
    hjust = 0, size = plot_title_size,
    margin = ggplot2::margin(b = plot_title_margin),
    family = "IBM Plex Sans",
    face = "bold"
  )
  ret
}

