#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

function(input, output) {
  
   output$time <- renderText({
      paste("Time you woke up: ",input$hour,":",input$minute, " ", input$MorN,sep = "")
     })
   output$timeNight <- renderText({
     paste("Time went to sleep: ", input$hourNight,":",input$minuteNight, " ", input$MorNNight,sep = "")
   })
  

}
