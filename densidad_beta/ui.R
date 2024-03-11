library(shiny)

# Definir la interfax de usuario
fluidPage(

    # Titulo de la aplicación
    titlePanel("Distribución Beta"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("alpha",
                        "alpha:",
                        min = 1,
                        max = 10,
                        value = 5),
          sliderInput("beta",
                      "beta:",
                      min = 1,
                      max = 10,
                      value = 5)
        ),
        
        

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
)
