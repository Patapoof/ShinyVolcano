library(shiny)

shinyServer(
  function(input, output) {
    output$ThreeDee <- renderPlot({
      localHeight <- input$sliderHeightScale
      localTheta <- input$sliderTheta
      localPhi <- input$sliderPhi
      localShade <- input$sliderShade
      z <- (localHeight + 1) * volcano
      x <- 10 * (1:nrow(z))
      y <- 10 * (1:ncol(z))
      par(bg = "white")
      persp(x, y, z, theta = localTheta, phi = localPhi, col = "green3", scale = FALSE, ltheta = -120, shade = localShade / 100, border = NA, box = FALSE)
    })
  }
)