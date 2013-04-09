
"%has_attr%" <- function(x, which) !is.null(attr(x, which, exact = TRUE))

has_attribute <- function(x, which) !is.null(attr(x, which, exact = TRUE))

has_name <- function(x, which) which %in% names(x)

"%||%" <- function(a, b) if (is.null(a)) b else a
