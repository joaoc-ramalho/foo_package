#' Shannon diversity
#'
#' @param x A vector with values of abundance in the community
#'
#' @return Gives you a numeric vector with your intending shannon diversity
#' @export
#'
#' @examples
#' num <- c(5, 8, 2)
#' my_shannon(num)
my_shannon <- function(x) {
  x <- x[x > 0]
  sum_all <- sum(x)
  pi <- x/sum_all
  -sum(pi*log(pi))
}


