# Hello, world!  This is an example function named 'hello' which prints 'Hello, world!'.
# You can learn more about package authoring with RStudio at: http://r-pkgs.had.co.nz/
# Some useful keyboard shortcuts for package authoring: Install Package: 'Ctrl + Shift +
# B' Check Package: 'Ctrl + Shift + E' Test Package: 'Ctrl + Shift + T'

.onLoad <- function(libname, pkgname) {
    packageStartupMessage("hubnR utility and themes loaded.\n
                          Use formatR::tidy_dir(\"R\") often!")
}

setup_font_use <- function(dev = "win", redo = F) {
    if (redo) {
        extrafont::font_import(prompt = F)
    }
    extrafont::loadfonts(device = dev)
}
