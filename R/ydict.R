##' translate English to Chinese and Chinese to English, using youdao dictionary
##'
##' 
##' @title ydict
##' @param word input word
##' @return formatted outpuut queried from youdao
##' @author Guangchuang Yu
##' @reference \url{https://github.com/TimothyYe/ydict}
##' @export
ydict <- function(word) {
    system(paste("ydict", word))
}
