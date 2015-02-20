# Data Prep
year13 <- read.table("year13.csv", header = TRUE, sep = ",", dec = ".", fill = TRUE)
year14 <- read.table("year14.csv", header = TRUE, sep = ",", dec = ".", fill = TRUE)
year13 <- year13[,1]
year14 <- year14[,1]
year13[365] <- year13[364]
year14[365] <- year14[364]
date13 <- seq(as.Date("2013-01-01"), as.Date("2013-12-31"), by="days")
date14 <- seq(as.Date("2014-01-01"), as.Date("2014-12-31"), by="days")

# Data Preprocessing -> inteprolate those points where there is an Inf
for (j in 1:length(year13)){
  if (year13[j] == Inf){
    year13[j] <- year13[j-1]
  }
  if (year14[j] == Inf){
    year14[j] <- year14[j-1]
  }
}

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x    <- c(year13,year14)
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    par(mfrow=c(2,1))
    hist(year13, breaks = bins, col = 'darkgray', border = 'white', main = "2013")
    hist(year14, breaks = bins, col = 'darkgray', border = 'white', main = "2014")
  })
})