library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Relationships between 'miles per gallons' (mpg) and different variables"),
  
  # Selection of Parameters 
  sidebarLayout(
    sidebarPanel(
                 selectInput("variable", "Variable:",
                                c("Number of cylinders" = "cyl",
                                  "Displacement" = "disp",
                                  "Horsepower" = "hp",
                                  "Rear axle ratio" = "drat",
                                  "Weight (lb/1000)" = "wt",
                                  "1/4 mile time" = "qsec",
                                  "V/S" = "vs",
                                  "Transmission" = "am",
                                  "Number of forward gears" = "gear",
                                  "Number of carburetors" = "carb")
                             )


                ),
      
  # Show box plot of mpg for each parameter
    mainPanel(
             h3(textOutput("title"),
             plotOutput("plot1"),
             verbatimTextOutput("model")
             )
  )
  )
))
