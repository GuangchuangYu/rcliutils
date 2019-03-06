##' clean terminal
##'
##'
##' @title clear
##' @export
## @rawNamespace exportPattern("^clear$")
clear  <- structure(c("\033[2J", "\033[0;0H"),
                    class = "clear")

 
##' @method print clear
##' @export
print.clear <- function(x, ...) {
    cat(x)
}

