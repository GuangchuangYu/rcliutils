##' figlet
##'
##' should have figlet installed in your system
##' @title figlet
##' @param msg message
##' @return characters
##' @export
##' @author guangchuang yu
figlet <- function(msg) {
    x <- paste(system(paste("figlet", msg), intern=T), collapse='\n')
    class(x) <- "figlet"
    return(x)
}


##' @method print figlet
##' @export
print.figlet <- function(x, ...) {
    cat(x, "\n")
}

##' @importFrom methods setOldClass
setOldClass("figlet")

##' show method for figlet instance
##'
##' @name show
##' @docType methods
##' @rdname show-methods
##' @aliases figlet-class show,figlet-method
##'
##' @title show method
##' @param object figlet object
##' @return message
##' @importFrom methods show
##' @importFrom methods setMethod
##' @exportMethod show
setMethod("show", signature(object="figlet"), function(object) print.figlet(object))
