library(shiny)
library(shiny)
library(ggplot2)

dataset <- iris



fluidPage(
  navbarPage("Coursera Developing Data Products MOOC" ),
  
  titlePanel("Iris Correlation Explorer"),
  sidebarLayout(  
  sidebarPanel(
    h4('Tweek the Plot'),
    sliderInput('sampleSize', 'Sample Size', min=1, max=nrow(dataset),
                value=min(1000, nrow(dataset)), step=2, round=0),
    h4('Select the Types of Upper and Lower Plots'),
    selectInput('x', 'Upper Plot',c('points', 'smooth', 'density','cor','blank')),
    selectInput('x1', 'Lower Plot',c('points', 'smooth', 'density','cor','blank')),
    selectInput('y', 'Discrete', c("facetbar", "ratio", "blank")),
    selectInput('y1', 'Combo', c("box", "dot", "facethist","facetdensity", "denstrip", "blank")),
    tags$br(),
    tags$br(),
    strong('SPECIAL NOTES:'),
    p(' we have represented the data from the three flower species in different colors.'),
    p('The variable names are represented along the diagonals of the matrix and the relationship between variables is described in the
      various subplots.'),
    p('The plot matrix can be divided into two areas, a lower and an upper part, respectively, below and above the diagonal containing the variables. For
      continuous variables, such as Sepal.Length, Sepal.Width, Petal.Length, and Petal.Width,
      it represents the correlation between each combination of variables.'),
    p('In the lower part,the data is represented as points, while in the upper part, the data is represented
      as details of the correlation coefficient.')
  
  ),
  
  mainPanel(
    h2('Scatterplot matrix with GGally'),
    p('A scatterplot matrix is a series of scatterplots organized in a grid and often used to describe the relationship between different variables'),
    p('These plots can range over different degrees of complexity, from merely plotting correlations between variables
      up to histograms and kernel density plots of distributions that incorporate other
      variable metadata .'),
    p('The following is a table summarizing the available plot options depending on the variable combination:'),
    tags$ul(
      tags$li('continuous: "points", "smooth", "density","cor","blank" '),
      tags$li('discrete: "facetbar", "ratio", "blank" '),
      tags$li('combo: "box", "dot", "facethist","facetdensity", "denstrip", "blank"')
    ),
    
    plotOutput('plot'),
    
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$br()
  )
)
)