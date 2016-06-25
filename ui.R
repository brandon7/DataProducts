library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Rig count graph"),

  sidebarLayout(
    sidebarPanel(
      helpText("This application will plot the Baker Hughes' North America Rotary Rig Count by the hydrocarbon target."),

      selectInput("yInput",
                  "Make a selection below",
                  choices = c("Oil", "Gas", "Misc", "Total")),
      tags$ol(
        tags$li("The app contains a form of input"), 
        tags$li("The input is passed to the server.R file"), 
        tags$li("The reactive output (the graph) is then displayed"),
        tags$li("Ample documentation to use the application is provided"),
        tags$li("More info can be found at http://rpubs.com/brandonr/DataProductsProject")
      ),
      hr(),
      helpText("Data from Baker Hughes (2016-06-25).")
    ),
    
    mainPanel(
      plotOutput("rigPlot")
    )
  )
))
