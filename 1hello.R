library(gWidgets2)
## Select the RGtk2 toolkit
options(guiToolkit="RGtk2")

## Create a window called "Hello World"
win <- gwindow("Hello World")

## Create a "Hello world" button and make it do something with a
## handler
obj <- gbutton("Hello world", container = win,
               handler=function(h, ...) {
                 gmessage("Hello world")
               })
