##' Interactive correspondance analysis graphics
##'
##' This function launches a shiny app in a web browser in order to do
##' interactive graphics from the output of a multiple correspondance analysis
##' It currently only supports output from the `MCA` function of the `FactoMineR`
##' extension.
##'
##' @param mcaobject MCA object
##' @return
##' The function launches a shiny app in the system web browser. The graphics code is returned in the console
##' when the app is closed with the "Done" button.
##' @author Julien Barnier <julien.barnier@@ens-lyon.fr>
##' @examples
##' \dontrun{data(hdv2003)
##' d <- hdv2003[,c("qualif","sexe", "bricol", "cinema", "sport")]
##' library(FactoMineR)
##' mca <- MCA(d, graph=FALSE)
##' imca(mca)}
##' @importFrom shiny runApp
##' @importFrom highr hi_html
##' @export

imca <- function(mcaobject) {
    ## Check if mcaobject is an object or a character string
    if (!is.character(mcaobject)) mcaobject <- deparse(substitute(mcaobject))
    ## Prevents get() conflicts
    if (mcaobject=="mcaobject") stop(sQuote(paste0(mcaobject, ' must not be an object named "mcaobject".')))
    ## Check if mcaobject is of class MCA
    if (!inherits(get(mcaobject), "MCA")) stop(sQuote(paste0(mcaobject, ' must be of class MCA.')))
    options(questionr_imca_mca=mcaobject)
    invisible(shiny::runApp(system.file("imca", package="questionr")))
}
