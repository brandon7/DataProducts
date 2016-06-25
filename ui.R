library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Rig count graph"),

  sidebarLayout(
    sidebarPanel(
      helpText("This application will plot the Baker Hughes' North America Rotary Rig Count by the hydrocarbon target."),
      selectInput("yInput",
                  "Make a selection below",
                  choices = c("Oil", "Gas", "Misc", "Total")),
      hr(),
      helpText("Data from Baker Hughes (2016-06-25).")
    ),
    
    mainPanel(
      plotOutput("rigPlot")
    )
  )
))
