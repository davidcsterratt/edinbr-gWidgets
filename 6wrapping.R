library(gWidgets2)
## Select the RGtk2 toolkit
options(guiToolkit="RGtk2")
myapp <- function() {
  ## This function is essentially the constructor for a class. The
  ## environment 'this' contains all member variables and functions of
  ## the class. We do not need to refer to 'this' in the code, but we
  ## will return it to facilitate debugging. 
  this <- environment()
  win <- gwindow("Hello World")
  obj <- gbutton("Hello world", container = win,
               handler=function(h, ...) {
                 gmessage("Goodbye world")
               })
  return(invisible(list(env=this)))
}
