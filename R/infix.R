#' @export
#' @examples 1:5 %each% print
`%each%` <- function(obj, fn) {
  lapply(obj, fn, ...)
  invisible(obj)
}

#' @export
#' @examples 1:5 %map% function(x) x + 1
`%map%` <- lapply

