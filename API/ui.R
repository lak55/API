# ui.R

library(shiny)
library(lubridate)
library(ggplot2)

ui <- fluidPage(
  titlePanel("Banting Air Pollutant Index 2013-2015"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "datayear",label = "Select Year",
                  choices = c(2013,2014,2015), selected = 2014),
      selectInput(inputId = "datamonth",label = "Select Month",
                  choices = c(1,2,3,4,5,6,7,8,9,10,11,12), selected = 1)),
    mainPanel(
      h3("API Air Pollution Index for Banting"),
      plotOutput("plot1")
    ))
)