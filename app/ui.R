library(shiny)

shinyUI(fluidPage(
  titlePanel("stockInfo"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Project For Programming Lab IV"),
      helpText("Made by R.Varun 331COE13 m. 8130821270"),
      helpText("Select a stock to examine. 
        Information will be collected from yahoo finance."),
      
      textInput("symb", "Symbol", "AAPL"),
    
      dateRangeInput("dates", 
        "Date range",
        start = "2013-01-01", 
        end = as.character(Sys.Date())),
      
      br(),
      br()
    ),
    
    mainPanel(plotOutput("plot"))
  )
))