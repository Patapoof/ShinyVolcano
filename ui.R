library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("3D rendering with R"),
  sidebarPanel(
    h4('Point of view'),
    sliderInput('sliderTheta', '<- Left / Right ->', value = 135, min = 0, max = 360, step = 5),
    sliderInput('sliderPhi', '<- Down / Up ->', value = 30, min = 0, max = 90, step = 5),
    h4('Misc'),
    sliderInput('sliderHeightScale', 'Height scale', value = 1, min = 1, max = 5, step = 1),
    sliderInput('sliderShade', 'Shade', value = 75, min = 1, max = 100, step = 1)
    
  ),
  mainPanel(
    plotOutput('ThreeDee')
  )
))