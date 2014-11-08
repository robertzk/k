["K"](https://github.com/kevinlawler/kona) for R -- all the built ins are really short!

Make your R life simpler and faster:

```R
if (!require(K.R)) devtools::install_github('robertzk/k')
library(K.R)

a(iris[1:4], 1, sum) # apply
b() # browser
cc("Hello!") # cat
d(a = c(1,2,3), b = letters[1:3]) # data.frame
e(some_function) <- other # environment
f(x, y, { x + y })(1, 5) # functions on the fly!
g('grep', builtins(), value = TRUE) # grep
h(iris) # head
i(list(1,2,3), as.list(1:3)) # identical
j(1:10) # jitter
k(iris) # class
(function(x) m(x))() # missing
l(1:3, seq_len) # lapply
n(iris) # names
o(beaver2$temp) # order
p(women) # print
f(x,if(m(x))r(NA)else x) # return
s(1:10, as.character) # sapply
tt(1:100, rep(1:10, 10), sum) # tapply
u(l(1:10, seq_len)) # unlist
v(1:10, as.character, character(1)) # vapply
w(s(iris,is.factor))

D(fn)  # debug(fn)
D1(fn) # debugonce(fn)
```

