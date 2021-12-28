
.onLoad <- function(libname, pkgname) {
    packageStartupMessage("hubnR personal package loaded.")
}

setup_font_use <- function(dev = "win", redo = F) {
    if (redo) {
        extrafont::font_import(prompt = F)
    }
    extrafont::loadfonts(device = dev)
}
