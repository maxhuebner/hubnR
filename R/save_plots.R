

#' Standard Export Format PDF
#'
#' Saves PDF with Fonts using Cairo_PDF in a Standard Format
#' @param plot Plot Object
#' @param name File Name - USE PDF FILE ENDING
#' @export
save_std_pdf <- function(plot, name, width = 8, height = 6, units = "in") {
    ggplot2::ggsave(plot, filename = name, device = cairo_pdf, width = width, height = height, 
        units = units)
}


#' Standard Export Format PNG - Bitmap
#'
#' Saves PNG with Fonts in a Standard Format
#' @param plot Plot Object
#' @param name File Name - USE PNG FILE ENDING
#' @export
save_std_png <- function(plot, name, width = 8, height = 6, units = "in") {
    ggplot2::ggsave(plot, filename = name, width = width, height = height, units = units)
}
