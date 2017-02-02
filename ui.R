#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

ui <- fluidPage(
  title = 'DataTables Information',
  h1('ShinyTemplate'),
  h6("A template for sorter apps. Made by Harrison Crane. Based from Yihui's reactive output sample."),
  mainPanel(
    tableOutput('contents')
  ),
  fluidRow(
    h3(textOutput("overallStats"))
  ),
  ## Access file as input$upload_file$datapath inside a reactive element in server.R
  fileInput("upload_file", "Upload CSV file"),
  selectizeInput('tableFilter', "Omit BrCrCodes", choices = NULL, multiple = TRUE),
  actionButton('clearOmission', "Clear omissions"),
  h2('Combination data output'),
  fluidRow(
    column(6, DT::dataTableOutput('x1'))
  ),
  fluidRow(
    p(class = 'text-center', downloadButton('x5', 'Download Data (Parents)'))
  ),
  h2('Mother overall data output'),
  fluidRow(
    column(6, DT::dataTableOutput('x2'))
  ),
  fluidRow(
    p(class = 'text-center', downloadButton('x6', 'Download Data (Mothers)'))
  ),
  h2('Father overall data output'),
  fluidRow(
    column(6, DT::dataTableOutput('x3'))
  ),
  fluidRow(
    p(class = 'text-center', downloadButton('x7', 'Download Data (Fathers)'))
  ),
  h2('2D matrix output'),
  fluidRow(
    column(6, DT::dataTableOutput('x4'))
  ),
  fluidRow(
    p(class = 'text-center', downloadButton('x8', 'Download Data (2D Matrix)'))
  )
)