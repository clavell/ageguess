
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
        
        Ageindays <- reactive({
                (as.numeric(input$today)) - as.numeric(input$dob)
                })
        
        Emptiness <- ""
        

        output$Age <- renderText({
                        if(input$goButton == 0){
                                "Enter your date of birth and the date you wish were today"
                        }else{
                                paste(
                                        "You are",
                                floor(Ageindays()/365),
                                "years old!",
                                sep = " "
                                )
                        }
                })
        
})
