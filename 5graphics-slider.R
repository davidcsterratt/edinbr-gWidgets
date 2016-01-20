library(gWidgets2)
## Select the RGtk2 toolkit
options(guiToolkit="RGtk2")
library(cairoDevice)

## Function to plot a density. We are referring to the widgets
## "sampleSize" that is yet to be defined

updatePlot <- function(h,...) {
  x <- rnorm(50)
  plot(density(x, adjust = svalue(bandwidthAdjust),
               kernel = "gaussian"),main="Density plot")
  rug(x)
}

## Create a window
win <- gwindow("Hello World, the next generation1")

## We want to put more than one Widget in, so we create a container
group <- ggroup(horizontal=FALSE, container=win)

## Create an area for a graphics device
g.d1 <- ggraphics(container=group)

## Create the device in it
d1 <- dev.cur()

## Add a slider to store a value
bandwidthAdjust <- gslider(from=0,to=2,by=.01, value=1, handler=updatePlot, container=group)

## Now make the button do something
# obj <- gbutton("Plot", container = group, handler=updatePlot)

