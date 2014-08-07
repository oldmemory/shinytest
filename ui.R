sidebarPanel(
  selectInput(
    "plotType", "Plot Type",
    c(Scatter = "scatter",
      Histogram = "hist")),
  uiOutput("moreControls"),
  
  
  # Only show this panel if the plot type is a histogram
  conditionalPanel(
    condition = "input.plotType == 'hist'",
    selectInput(
      "breaks", "Breaks",
      c("Sturges",
        "Scott",
        "Freedman-Diaconis",
        "[Custom]" = "custom")),
    
    # Only show this panel if Custom is selected
    conditionalPanel(
      condition = "input.breaks == 'custom'",
      sliderInput("breakCount", "Break Count", min=1, max=1000, value=10)
    )
  )
  
)
