library(shiny)
library(shinyapps)
data(WorldPhones)

shinyServer(function(input, output){
  output$conclusion <- renderPrint({
    summary(WorldPhones)
  })
  
  output$data <- renderTable({
    WorldPhones
  })
  
  output$phonePlot <- renderPlot({
    barplot(WorldPhones[,input$Region]*1000, 
            main = input$Region,
            ylab = "Number of Telephones",
            xlab = "Year",
            col = input$color)
  })
  
  #Download the Histogram
  output$down <- downloadHandler(
    #Specify the file name
    filename = function(){
      paste("World Phone Histogram", input$File, sep=".")
    },
    content = function(file){
      #Open the device based on the selected file
      #Create the plot and close the plot
      if(input$File == "png"){
        png(file)
      }
      else{
        pdf(file)
      }
      barplot(WorldPhones[,input$Region]*1000, 
              main = input$Region,
              ylab = "Number of Telephones",
              xlab = "Year",
              col = input$color)
      dev.off()
    }
    )
})
