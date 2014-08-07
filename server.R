shinyServer(function(input, output) {
  output$moreControls <- renderUI({
  list(helpText(paste("just a little test",input$plotType)),
       checkboxGroupInput(inputId = "check",choices = c(input$plotType),label = "what"))    
}
)
})
