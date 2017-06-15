
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Accurate age guesser"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        h5("This application will guess your age based on your date of birth"),
        h5("Please enter your date of birth and push submit"),
      dateInput("dob",label="Date of birth"),
      submitButton("Submit")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      textOutput("dateofbirth")
   
    )
  )
))
