% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7-update-inputs.R
\name{updateF7Fabs}
\alias{updateF7Fabs}
\title{Toggle \link{f7Fabs} on the server side.}
\usage{
updateF7Fabs(session, inputId)
}
\arguments{
\item{session}{The session object passed to function given to the server.}

\item{inputId}{The id of the input object.}
}
\description{
Toggle \link{f7Fabs} on the server side.
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinyMobile)

 shiny::shinyApp(
  ui = f7Page(
    title = "Update f7Fabs",
    init = f7Init(theme = "light", skin = "ios"),
    f7SingleLayout(
      navbar = f7Navbar(title = "Update f7Fabs"),
      f7Button("toggleFabs", "Toggle Fabs"),
      f7Fabs(
        position = "center-center",
        id = "fabs",
        lapply(1:3, function(i) f7Fab(inputId = i, label = i))
      )
    )
  ),
  server = function(input, output, session) {
    observe(print(input$fabs))
    observeEvent(input$toggleFabs, {
      updateF7Fabs(
        session = session,
        inputId = "fabs"
      )
    })
  }
 )
}
}
