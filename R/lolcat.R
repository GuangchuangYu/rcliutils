##' lolcat
##'
##' should have lolcat installed (pip install lolcat)
##' @title lolcat
##' @param msg message
##' @export
##' @return characters
##' @author guangchuang yu
lolcat <- function(msg) {
    if (grepl("'", msg)) {
        msg <- gsub("'", "\"", msg)
    } else if (grepl('"', msg)) {
        msg <- gsub('"', '\"', msg)
    }

    cmd <- paste0("echo \'", paste(msg, collapse="\n"), "'|lolcat")
    res <- system(cmd, intern=TRUE)
    res <- paste(res, collapse="\n")
    class(res) <- "lolcat"
    return(res)
}



##' @method print lolcat
##' @export
print.lolcat <- function(x, ...) {
    cat(x, "\n")
}

##' @importFrom methods setOldClass
setOldClass("lolcat")

##' show method for lolcat instance
##'
##' @name show
##' @docType methods
##' @rdname show-methods
##' @aliases lolcat-class show,lolcat-method
##' @exportMethod show
setMethod("show", signature(object="lolcat"), function(object) print.lolcat(object))
