
library(shiny)
library(ggplot2)

function(input, output) {
  
  dataset <- reactive({
    iris[sample(nrow(iris), input$sampleSize),]
  })
  
  output$plot <- renderPlot({
   
    require(GGally)
    p1<-ggpairs(iris,upper=list(continuous=input$x),lower=list(continuous=input$x1,combo=input$y1), color='Species', alpha=0.4)
    
    
    print(p1)
    
  }, height=700)
  
 
  
}
