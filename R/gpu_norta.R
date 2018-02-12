#' Signed z-score computation
#'
#' \code{compute_zscore} transforms a p_value vector to signed z-score vector.
#'
#' @details This function provides signed z-scores to aid in the interpretation of p-value.
#' The z-scores are useful metrics interpretation, downstream analysis, and
#' differential pathway expression visualization.
#' 
#' @param p_value a numeric vector of p_values, values restricted between 0 and 1
#' @param direction a numeric vector indicating the direction of differentially expression
#' with 1 indicating higher expressed and -1 indicating lower expressed in the 'case' sample. 
#'
#' @return a numeric vector of signed z-scores
#'
#' @examples
#' set.seed(44)
#' N <- 100
#' p_values <- stats::runif(N)
#' directions <- sample(c(-1,1), size = N, replace = TRUE)
#' zscores <- compute_zscore(p_values, directions)
#' \dontrun{
#' stats::qqnorm(zscores); abline(0,1)
#' }
#' 
#' @export
compute_zscore <- function(p_value, direction) {
    ## transform the p_values to z-scores via probit function
    zscore <- abs(qnorm(p_value / 2))
    ## add the direction
    zscore * direction
}
