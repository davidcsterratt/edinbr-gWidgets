library(gWidgets2)
options(guiToolkit="RGtk2")
win <- gwindow("Hello World, ad nauseum")
group <- ggroup(horizontal=FALSE, container=win)

## Add a spinner in a group
g.times <- ggroup(horizontal=TRUE, container=group)
text <- glabel("How many times?", container=g.times)
times <- gspinbutton(from=1, to=5, by=1, value=3, container=g.times)

## The handler function calls the svalue method of the gspinbutton to
## get the number of times
hello <- gbutton("Hello world", container=group,
                 handler=function(h, ...) {
                   gmessage(rep("Hello world", svalue(times)))
                 })


