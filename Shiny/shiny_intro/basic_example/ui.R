# PAGANZ 2017 - Introduction to the Shiny Framework for Pharmacometricians
# ui.R script for theory_basic_example application
# Defines widgets for reactive input for server.R and calls output objects from
# server.R and presents them in the user-interface
# ----------------------------------------------------------------------------------
# All user-interface elements need to be bound within a page formatting function
# i.e., "fixedPage"
# This application places each element below the previous one in order from
# top to bottom

  fluidPage(
    h3("1-compartment, first-order oral absorption kinetics"),  # Application title
    
    hr(),  # Horizontal separating line
    sidebarLayout(
      sidebarPanel(
        
        selectInput("DOSE",
          "Dose (mg):",
          choices = c(
           "50mg" = 50,
          "100mg" = 100
          )),
        
        sliderInput("WT",
                    "Weight:",
                    min = 10,
                    max = 300,
                    step = 5,
                    value = 100),
        numericInput("CREATINE_CLEARANCE",
                     "Creatine Clearance",
                     value = 90),
        checkboxInput("CONCENTRATION",
                      "Plot concentrations on log scale")
      ),
    mainPanel(
      plotOutput("concPlot", width = 600)  # Concentration-time profile output
    )
  ),
  align = "center"  # Align all elements in the centre of the application
  )

