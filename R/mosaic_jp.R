# Package futools
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'
# Package として作成：GitHubに登録
# GitHubに登録
# やりなおし


#library(grid)
my.largs <- list(gp_labels = gpar(fontsize =10, fontfamily = "sans"),
                 gp_varnames = gpar(fontsize = 12, fontfamily = "sans"),
                 gp_text=gpar(fontsize =10, fontfamily = "sans"))
my.main <- gpar(fontsize = 14,fontfamily = "sans")
# main title  my.sub <- gpar(fontsize = 10,fontfamily = "sans"")
# sub title  text_gp <- gpar(fontsize = 12,fontfamily = “sans”)# facet   TR
# mosaic_jp     L

mosaic_jp0 <- function(.tbl){
  mosaic(.tbl,
         labeling_args=my.largs,
         main_gp = my.main,
         sub_gp = my.sub,)
}

mosaic_jp1 <- function(.tbl,mtitle="mosaic_jp",colset="Set3"){
  nc <- rev(dim(.tbl))[1]
  mosaic(.tbl,gp=gpar(fill=brewer.pal(nc,colset),col=0),
         margins = c(left = 5,top = 4), labeling_args=my.largs,
         main_gp = my.main,
         sub_gp = my.sub,
         rot_labels = c(left = 0, top = 45,right=0),
         keep_aspect_ratio=FALSE,
         main=mtitle,
         labeling = labeling_values)
}
