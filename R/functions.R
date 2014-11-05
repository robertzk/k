#' @export
a <- base::apply
#' @export
b <- base::browser
#' @export
cc <- base::cat
#' @export
d <- base::data.frame
#' @export
e <- base::environment
#' @export
f <- function(...) {
  args <- eval(substitute(alist(...)))
  .args <- head(args, -1)
  unnames <- !nzchar(names(.args) %||% rep("", length(.args)))
  names(.args)[unnames] <- sapply(.args[unnames], as.character)
  .args[unnames] <- rep(list(alist(.=)[[1]]), length(.args[unnames]))
  eval(call('function', as.pairlist(.args), tail(args, 1)[[1]]), parent.frame())
}
#' @export
g <- base::grep
#' @export
h <- utils::head
#' @export
i <- base::identical
#' @export
j <- base::jitter
#' @export
k <- base::class
#' @export
l <- base::lapply
#' @export
m <- base::missing
#' @export
n <- base::names
#' @export
o <- base::order
#' @export
p <- base::print
#' @export
r <- base::return
#' @export
s <- base::sapply
#' @export
tt <- base::tapply
#' @export
u <- base::unlist
#' @export
v <- base::vapply
#' @export
w <- base::which

#' @export
D <- debug
#' @export
D1 <- debugonce
