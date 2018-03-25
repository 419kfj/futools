\name{mosaic_jp}
\alias{mosaic_jp}
\title{set up font for using Japanese with vcd::mosaic}
\usage{
mosaic_jp1()
}
\description{
mosaic_jp*
}
\examples{

# data set
data(HairEyeColor_jp)

# plain mosaic_jp
mosaic_jp0(HairEyeColor_jp)

# without cell color
mosaic_jp2(HairEyeColor_jp)

# set cell color by color matrix
cset <- t(matrix(rep(brewer.pal(4,"Blues"),2),ncol=2))
mosaic_jp2(HairEyeColor_jp,gp=gpar(fill=cset,col=0))

# Pearson residulas
mosaic_jp2(HairEyeColor_jp,shade=TRUE)

}

\references{
- The Strucplot Framework: Visualizing Multi-way Contingency Tables with vcd:
https://www.jstatsoft.org/index.php/jss/article/view/v017i03/v17i03.pdf
}
