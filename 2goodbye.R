library(gWidgets2)
options(guiToolkit="RGtk2")
win <- gwindow("Hello World, Goodbye world")

## We want to put more than one Widget in, so we create a group
    group <- ggroup(horizontal=FALSE, container=win)

    ## Create a "Hello world" button within the group we've just made
hello <- gbutton("Hello world", container=group,
               handler=function(h, ...) {
                 gmessage("Hello world")
               })

## Add another button
goodbye <- gbutton("Goodbye world", container=group,
                   handler=function(h, ...) {
                     gmessage("Goodbye world")
               })
