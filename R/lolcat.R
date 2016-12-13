##' lolcat
##'
##' should have lolcat installed (pip install lolcat)
##' @title lolcat
##' @param msg message
##' @export
##' @return characters
##' @author guangchuang yu
lolcat <- function(msg) {
    system(paste0("echo '",paste(msg, collapse="\n"), "'|lolcat"))
}
