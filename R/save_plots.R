

#' Standard Export Format PDF
#'
#' @seealso ggplot2::ggsave
#'
#' Saves PDF with Fonts using Cairo_PDF in a Standard Format
#' @param plot Plot Object
#' @param name File Name - USE PDF FILE ENDING
#' @export
save_std_pdf <- function(plot, name, width = 8, height = 6, units = "in", dpi = 300, ...) {
    ggplot2::ggsave(plot, filename = name,
                    device = cairo_pdf,width = width,
                    height = height, units = units, dpi = dpi, ...)
}


#' Standard Export Format PNG - Bitmap
#'
#' @seealso ggplot2::ggsave
#'
#' Saves PNG with Fonts in a Standard Format
#' @param plot Plot Object
#' @param name File Name - USE PNG FILE ENDING
#' @export
save_std_png <- function(plot, name, width = 8, height = 6, units = "in", dpi = 300, ...) {
    ggplot2::ggsave(plot, filename = name,
                    width = width, height = height,
                    units = units, dpi = dpi, ...)
}
