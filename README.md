# Shiny application for statistical analysis of mtcars data

This README file, the supporting documentation required for the application, contains the following two two sections:

- Instructions given for this course project
- Description of the application and how it works

To access to this app, please click [here](https://parmidab.shinyapps.io/FinalProject/).

## Instructions

1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the provided text box
4. Share your server.R and ui.R code on github

The application must include the following:

1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.

## Details of the application

This Shiny application, named `FinalProject`, is aimed to perform some exploratory analysis on the mtcars dataset. 

- We first created an interactive histogram plot of the miles per galon (mpg) data
  - Using the slider on the left, the user can change the number of bins
  - Using the checkbox on the left, the user can also choose whether the mean and the standard deviation range is visible on the histogram
- We also created an interactive plot to show the relationship between the hoursepower (hp) and the miles per galon (MPG)
  - The predicted hoursepower is also printed as text in the output
  - Using the slider on the left, the user can change the value of miler per galon (MPG)
    * The hoursepower value predicted from the linear model is shown based on the MPG value
  - Using the checkbox on the left, the user can choose whether the predicted linear model is shown on the plot

