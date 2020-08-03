#

library(shiny)

# Define server logic required to create confetti cannon
shinyServer(function(input, output) {
    output$plot1 = renderPlot({
        set.seed(123123)
        confetti<- input$numeric
        minx<- input$sliderx[1]
        maxx<- input$sliderx[2]
        miny<- input$slidery[1]
        maxy<- input$slidery[2]
        datax<-runif(confetti,minx,maxx)
        datay<-runif(confetti,miny,maxy)
        if(input$shape=="circle")
        {shape<-19}
        else if(input$shape=="square")
        {shape<-15}
        else if(input$shape=="triangle")
        {shape<-17}
        else if(input$shape=="star")
        {shape<-8}
        if(input$size=="small")
        {size<-.75}
        else if(input$size=="medium")
        {size<-1}
        else if(input$size=="large")
        {size<-1.5}
        plot(datax,datay,pch=shape,
             col=input$colors,cex=size, main=input$title, cex.main=3,
             axes=F, xlab="",ylab="", xlim=c(-100,100),ylim=c(-100,100))
    })
        
    
} ) 