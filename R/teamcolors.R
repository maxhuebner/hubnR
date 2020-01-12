#' Function to extract teamcolors for a specified team
#'
#' @param t_name Team Name
#' @export
#'
get_team_color_vector <- function(t_name) {
  filter_colors <- teamcolors::teamcolors %>%
    filter(name == t_name)

  print(filter_colors)

  color1 <- filter_colors %>% pull(primary)
  color2 <- filter_colors %>% pull(secondary)
  color3 <- filter_colors %>% pull(tertiary)
  color4 <- filter_colors %>% pull(quaternary)

  c(color1,color2,color3,color4)
}
