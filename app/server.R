# server.R

library(quantmod)

shinyServer(function(input, output) {

  output$plot <- renderPlot({
    data <- getSymbols(input$symb, src = "yahoo", 
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE)
                 
    chartSeries(data, theme = chartTheme("white"), 
      type = "line", TA = NULL)
  })
  
})