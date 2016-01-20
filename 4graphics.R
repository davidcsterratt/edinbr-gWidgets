library(gWidgets2)
options(guiToolkit="RGtk2")
## cairoDevice allows plotting in GTK ggraphics widgets
library(cairoDevice) 

win <- gwindow("Hello World, the next generation")
group <- ggroup(horizontal=FALSE, container=win)

## Create an area for a graphics device
g.d <- ggraphics(container=group, width=600, height=600)

## Create the device in it
d <- dev.cur()

obj <- gbutton("Plot", container = group,
               handler=function(h, ...) {
                 x <- rnorm(50)
                 plot(density(x, adjust=1, kernel="gaussian"))
                 rug(x)
               })
