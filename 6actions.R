library(gWidgets2)
options(guiToolkit="RGtk2")
fileChoose <- function(action="print", text = "Select a file...",
                       type="open", ...) {
  gfile(text=text, type=type, ...,
        action = action,
        handler =
          function(h,...) {
            do.call(h$action, list(h$file))
          })
}
