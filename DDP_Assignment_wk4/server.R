library(shiny)
library(datasets)

data <- mtcars

# Define server logic required to draw a histogram
 shinyServer(function(input, output) {
#        formulaText <- reactive({
#                paste("mpg ~", input$variable)
#        })

         output$title <- renderText({
                 paste("mpg versus",input$variable)
         })
         
           
        text <- reactive({
                paste("mpg~",input$variable)
                
        })
        
        model <- reactive({
                lm(as.formula(text()), data=mtcars)
                
        })
       
       
        output$model <- renderPrint({summary(model())
                })
        
        output$plot1 <- renderPlot({
                plot(as.formula(text()), data=mtcars)
                abline(model(), col=3)
                
        })
        
       
})
        

