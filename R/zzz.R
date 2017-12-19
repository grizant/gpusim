.onAttach <- function(...) {
    ## if (!interactive() || stats::runif(1) > 0.1) return()
    if (!interactive()) return()
##
##    tips <- c(
##        "Use suppressPackageStartupMessages() to eliminate package startup messages.",
##        "Stackoverflow is a great place to for general help: http://stackoverflow.com.",
##    "Need help getting started? Try the cookbook for R: http://www.cookbook-r.com"
##    )
##

  packageStartupMessage(c("Welcome to the gpusim package!\n",
                          "Need help? blah. Report an issue on...\n",
                          "Stackoverflow is a great place to for general help: http://stackoverflow.com"))
}
