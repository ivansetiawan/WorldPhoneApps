library(shiny)
library(shinyapps)

shinyUI(fluidPage(
  titlePanel(title = h1("Telephones Data by Region", align = "center")),
  sidebarLayout(
    sidebarPanel(
      helpText("Please read documentation that is provided in the slidify presentation format for more details about this app"),
      helpText("Data from AT&T (1961) The World's Telephones."),
      selectInput("Region", "1. Select the region that you want to inspect", 
                  choices = c("N.Amer", "Europe", "Asia", "S.Amer", "Oceania", "Africa", "Mid.Amer"),
                  selected = "Asia"),
      br(),
      
      radioButtons("color", "2. Select the color of the histogram", choices = 
                     c("Red", "Green", "Blue", "Yellow", "Black", "Orange", "Pink"),
                  selected = "Orange"),
      
      radioButtons("File", "3. Select the download format: ", choices = c("PNG", "PDF"))
      ),
    
    mainPanel(
      tabsetPanel(type="tab",
                  tabPanel("Summary", verbatimTextOutput("conclusion")),
                  tabPanel("Show Data Table", tableOutput("data")),
                  tabPanel("Show Histogram", plotOutput("phonePlot"),
                           downloadButton(outputId = "down", label = "Download the Histogram"))
               )
      )
    )
  )
)