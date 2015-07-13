#' @export
#' @examples 1:5 %%each%% print
`%each%` <- function(obj, fn) {
  lapply(obj, fn, ...)
  invisible(obj)
}

#' @export
#' @examples 1:5 %%eachdo%% { . + 1 }
`%eachdo%` <- function(obj, expr) {
  env <- parent.frame()
  expr <- substitute(expr)
  lapply(obj, function(x) {
    eval(expr, envir = list2env(list(. = x), parent = env))
  })
  obj
}

#' @export
#' @examples 1:5 %%map%% function(x) x + 1
`%map%` <- lapply

#' @export
#' @examples 1:5 %%mapdo%% { . + 1 }
`%mapdo%` <- function(obj, expr) {
  env <- parent.frame()
  expr <- substitute(expr)
  lapply(obj, function(x) {
    eval(expr, envir = list2env(list(. = x), parent = env))
  })
}

