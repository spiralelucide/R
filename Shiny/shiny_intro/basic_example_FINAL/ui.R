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
                    choices = list(50, 100)
        ),  # select input for dose
        
        sliderInput("WT",
                    "Weight (kg):",
                    min = 40,
                    max = 200,
                    value = 70,
                    step = 1
        ),  # slider input for weight
        
        numericInput("CRCL",
                     "Creatinine Clearance (mL/min):",
                     min = 0,
                     max = 200,
                     value = 90
        ),  # numeric input for creatinine clearance
        
        checkboxInput("log",
                      "Plot concentrations on a log-scale"
        )  # checkbox input for log scale
        
      ),  # sidebarPanel
      
      mainPanel(
        
        plotOutput("concPlot", width = 600)  # Concentration-time profile output
        
      )  # mainPanel
      
    )  # sidebarLayout

  )  # fluiddPage
