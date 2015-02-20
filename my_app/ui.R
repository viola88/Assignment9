library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Weather in Cologne, Germany"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 40,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      p("The weather is taken from wunderground.com. It contains daily historical weather data of Colgone, Germany for three years. For each day we have chosen temperature at around lunch time, so it's quite warm in total. The idea is to see that 2014 was a warmer year than 2013 was."),
      plotOutput("distPlot")
    )
  )
))

