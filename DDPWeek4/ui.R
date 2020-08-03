#
# This is the ui.R script for my shiny app
#

library(shiny)

# Define UI for application that creates a confetti cannon
shinyUI(fluidPage(
    # Application title
    titlePanel("Create Your Own Confetti Cannon"),

    # Sidebar with customizable features
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric","Choose number of confetti pieces",
                         value=1000, min=1,max=1000,step=1),
            sliderInput("sliderx","Set explosion length", 
                        -100,100,value=c(-50,50)),
            sliderInput("slidery","set explosion height", 
                        -100,100,value=c(-50,50)),
            selectInput("colors", "Choose confetti colors", c("pink", "blue", "red", "green", "gold", "purple"), selected = "pink", multiple = T),
            selectInput("shape", "Choose confetti shape", c("circle", "square", "triangle", "star"), selected = "circle", multiple = F),
            selectInput("size", "Choose confetti size", c("small", "medium", "large"), selected = "medium", multiple = F),
            selectInput("title", "Choose title", c("Congratulations!", "Happy Birthday!", "Great Job!"), selected = "Congratulations!", multiple = F),
        ),
        mainPanel(plotOutput("plot1"))
        )
    ))