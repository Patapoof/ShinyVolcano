# ShinyVolcano
## 3D Rendering in R

### Purpose
This project aims at rendering Volcano in a Shiny application. Volcano is a dataset included in R, and reproduces the topology of Mount Eden (Maunga Whau), a volcano located in Auckland, New Zealand, on a 10x10m grid.

The files load the dataset and plots it using the *persp* function. The user can then modify the vertical scale and the point of view. Calculations and rendering being done in software mode (i.e., not using any hardware-acceleration technique), there is a serious lag of 1-2 seconds between user interaction and screen update. This shouldn't be a problem as the exercise was about the interaction itself and not the end result.

If you want to experiment further with topological data in R, take a look at:
* [this PDF](http://cran.r-project.org/web/packages/plot3D/vignettes/volcano.pdf) listing various ways to have fun with R and the Volcano dataset
* [Shiny-RGL](https://github.com/trestletech/shinyRGL) which is a Shiny wrapper for the [RGL package](https://r-forge.r-project.org/projects/rgl/). It allows you to use RGL, an openGL package for R, in ShinyApps. Using it would allow you to directly move the volcano with the mouse, instead of relying on sliders to move the point of view.
* [GeoTheory](http://geotheory.co.uk/blog/2014/02/07/visualising-topography/) also has some nice experiments with maps and R.

*This is by no means a list of definitive reference on this topic, I just wanted to share some fun links :)*

### How to use this Shiny App
* Grab the files or clone the repo
* Fire up R (or better, RStudio), load the ui.R and server.R files
* Set your working directory to where the files are located
* Make sure you have the Shiny package (if not, `install.packages('shiny')`)
* Issue the runApp() command (note that the latest RStudio, v.0.98.932, has new commands to launch directly ShinyApps)
* From there, just interact with the Volcano using the inputs located in the left panel