library(shiny)
library(tidyverse)
library(labeling)

# Define server logic required to draw a histogram
function(input, output, session) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        x <- seq(0, 1, length = 100) #datos a usar
        a = input$alpha #Valores para el alpha
        b = input$beta #Valores para el beta
        
        densidad <- dbeta(x, shape1 = a, shape2 = b)
        
        ggplot(data.frame(x = x, densidad = densidad)) +
          geom_line(aes(x = x, y = densidad), color = 'blue') +
          labs(x = "x", y = "Densidad", title = "Distribución beta")
    })

}
