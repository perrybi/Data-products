#
# This is a shiny app to do some analysis on the mtcars data.
# We first create an interactive histogram plot of the miles per galon data
#   The user can change the number of bins using the slider on the left
#   The user can choose whether the mean and standard deviation range is visible on the histogram or not
# We also create and interactive linear model to predict the hoursepower from miles per galon
#   The user can choose whether the predicted linear model is shown on the plot
#   The predicted hoursepower is also printed as text in the output

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("mtcars dataset"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 35,
                   value = 12),
       checkboxInput("showmeanstd", 'Show/hide the mean value', value = TRUE),
       sliderInput("sliderMPG",
                   "MPG of a car?",
                   min = 10,
                   max = 35,
                   value = 20),
       checkboxInput("showmodel", 'Show/hide the predicted model', value = TRUE)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      tabsetPanel(
        tabPanel("Plot",
                 fluidRow(
                   column(8, plotOutput("histPlot")),
                   column(8,  h3("Predicted hoursepower from the model:"), textOutput("pred")),
                   column(8, plotOutput("lmplot"))
                 ))
      )
       #plotOutput("histPlot")
    )
  )
))
