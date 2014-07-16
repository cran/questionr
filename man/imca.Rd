\name{imca}
\alias{imca}
\title{Interactive correspondance analysis graphics}
\usage{
  imca(mcaobject)
}
\arguments{
  \item{mcaobject}{MCA object}
}
\value{
  The function launches a shiny app in the system web
  browser. The graphics code is returned in the console
  when the app is closed with the "Done" button.
}
\description{
  This function launches a shiny app in a web browser in
  order to do interactive graphics from the output of a
  multiple correspondance analysis It currently only
  supports output from the `MCA` function of the
  `FactoMineR` extension.
}
\examples{
\dontrun{data(hdv2003)
d <- hdv2003[,c("qualif","sexe", "bricol", "cinema", "sport")]
library(FactoMineR)
mca <- MCA(d, graph=FALSE)
imca(mca)}
}
\author{
  Julien Barnier <julien.barnier@ens-lyon.fr>
}

