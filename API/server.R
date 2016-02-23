# server.R

library(shiny)
library(lubridate)
library(ggplot2)

server <- function(input, output) {
  banting <- read.csv("Banting.csv")
  
  output$plot1 <- renderPlot({
    filter.data <- banting[year(banting$Date)==input$datayear & month(banting$Date)==input$datamonth,]
    ggplot(data=filter.data, aes(x=filter.data$Hour, y=filter.data$API)) + geom_smooth() + labs(x="Hour", y="AP")
  }) 
}
