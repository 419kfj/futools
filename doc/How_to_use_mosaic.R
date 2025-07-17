## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 4, fig.height = 4, dpi = 150
)


## ----setup--------------------------------------------------------------------
library(futools)
library(tidyverse)
library(vcd)
library(RColorBrewer)
library(showtext)
showtext_auto(TRUE)

## -----------------------------------------------------------------------------
data("HairEyeColor") # 髪の色と目の色の対応関係を集計した３元クロス表

## -----------------------------------------------------------------------------
HairEyeColor

## -----------------------------------------------------------------------------
ftable(HairEyeColor,row.vars = c("Sex","Hair"))

## -----------------------------------------------------------------------------
HairEyeColor %>% mosaic()

## -----------------------------------------------------------------------------
HairEyeColor %>% mosaic(shade = TRUE)

## -----------------------------------------------------------------------------
HairEyeColor %>% mosaic(rot_labels = c(left = 0, top = 0, right = 0),)

## -----------------------------------------------------------------------------
HairEyeColor %>% mosaic(Eye ~ Sex + Hair,.,
                        rot_labels = c(left = 0, top = 0, right = 0))

## -----------------------------------------------------------------------------
# data set
data(HairEyeColor_jp)

## -----------------------------------------------------------------------------
mosaic(HairEyeColor,shade = TRUE)

## -----------------------------------------------------------------------------
# plain mosaic_jp
mosaic_jp(HairEyeColor_jp)

## -----------------------------------------------------------------------------
# without cell color
mosaic_jp2(HairEyeColor_jp)

## -----------------------------------------------------------------------------
# set cell color by color matrix
cset <- t(matrix(rep(brewer.pal(4,"Blues"),2),ncol=2))
mosaic_jp2(HairEyeColor_jp,gp=gpar(fill=cset,col=0))

## -----------------------------------------------------------------------------
# Pearson residulas
mosaic_jp2(HairEyeColor_jp,shade=TRUE)

