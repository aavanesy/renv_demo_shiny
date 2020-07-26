#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(data.table)
library(ggplot2)
library(lubridate)
library(shinydashboard)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Test app renv"),
  
  # Sidebar with a slider input for number of bins 
  # sidebarLayout(
  #   sidebarPanel(
  #   ),
  # 
  #   
  #   # Show a plot of the generated distribution
  #   mainPanel(
      tableOutput('t')
    #)
 # )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$t = renderTable({
    rbind('data table version',
    packageDescription("data.table")$Version,
    'ggplot version',
    packageDescription("ggplot2")$Version
    )
  })

}

# Run the application 
shinyApp(ui = ui, server = server)
