#
# more info in the ui header..

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$histPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- mtcars$mpg  #faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'green', border = 'black', xlab = "MPG")
    
    if (input$showmeanstd){
      abline(v = mean(x), col = "red", lwd = 2)
      abline(v = c(mean(x) - sd(x), mean(x) + sd(x)), col = "orange", lwd = 3, lty = 2)
    }
    
  })
  
    model_lm <- lm(hp~mpg, data = mtcars)
    model_lm_pred <- reactive({
      mpgInput <- input$sliderMPG
      predict(model_lm, newdata = data.frame(mpg = mpgInput))
    })
    
    output$lmplot <- renderPlot({
      mpgInput <- input$sliderMPG
      # plot
      plot(mtcars$mpg, mtcars$hp, xlab = "MPG", ylab = "Hoursepower")
      if (input$showmodel){
        abline(model_lm, col = "red", lwd = 2)
      }
      points(mpgInput, model_lm_pred(), col = "blue", pch = 16, cex = 2)
    
  })
    
    output$pred <- renderText({
      model_lm_pred()
      })
  
})
