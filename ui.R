#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

fluidPage(

    dashboardPage(
      dashboardHeader( title = "Self Care App"),
      dashboardSidebar(),
      dashboardBody(
        
        
        tabsetPanel(type = "tab",
                    
                    tabPanel("Sleep Data", h3("Enter the time you woke up: "),
                             selectInput("hour", "Hour:", c("1","2","3","4","5","6","7","8","9","10","11","12"),selected = "1"),
                             selectInput("minute", "Minute:", c("00","05","10","15","20","25","30","35","40","45","50","55",""),selected = "00"),
                             selectInput("MorN", "", c("","AM","PM"),selected = "AM"),
                             submitButton("Submit"), 
                             h2(""),
                             
                             h3("Enter the time you went to sleep: "),
                             selectInput("hourNight", "Hour:", c("1","2","3","4","5","6","7","8","9","10","11","12",""),selected = "1"),
                             selectInput("minuteNight", "Minute:", c("00","05","10","15","20","25","30","35","40","45","50","55",""),selected = "00"),
                             selectInput("MorNNight", "", c("AM","PM"),selected = "PM"),
                             submitButton("Submit"),
                             
                             h2(""),
                             h4(textOutput("time")),
                             h4(textOutput("timeNight"))
                    ),
                    
                    tabPanel("To Do ",
                             h2("Add a Task for the day!")
                    )
        ),
        
      ),
    ),
 
   
        
      
    
)
