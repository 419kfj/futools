\name{mosaic_jp}
\alias{mosaic_jp}
\title{set up font for using Japanse with vcd::mosaic}
\usage{
mosaic_jp1()
}
\description{
mosaic_jp1
}
\examples{
data(HairEyeColor_jp)

mosaic_jp0(HairEyeColor_jp)

cset <- t(matrix(rep(brewer.pal(4,"Blues"),2),ncol=2))
mosaic_jp2(HairEyeColor_jp,gp=gpar(fill=cset,col=0))
}
