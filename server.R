library(shiny)

rigdata <- read.csv(file='rigdata.csv',header=TRUE)
rigdata$Date <- as.Date(rigdata$Date,format="%m/%d/%Y")

shinyServer(function(input, output) {
    
  output$rigPlot <- renderPlot({
    i <- which(colnames(rigdata)==input$yInput)
    y <- as.numeric(rigdata[,i])
    x <- rigdata$Date
    
    plot(y~x,type='l',xlab='',ylab='Number of rigs',main=paste('North America Rotary Rig Count - ',input$yInput,sep=""))
  })
  
})
