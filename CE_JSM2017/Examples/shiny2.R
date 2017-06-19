library(shiny)
library(dplyr)
library(metricsgraphics)

sim.dat<-readr::read_csv("https://raw.githubusercontent.com/happyrabbit/DataScientistR/master/Data/SegData.csv")%>%
  filter(!is.na(income) & age<100)

# Define UI for application that draws a histogram
ui <- pageWithSidebar(
  
  headerPanel('Customer Segment'),
  
  sidebarPanel(
    selectInput('seg', 'Segment', unique(sim.dat$segment)),
    selectInput('xcol', 'X Variable', c("age")),
    selectInput('ycol', 'Y Variable', c("store_exp","online_exp","store_trans","online_trans"))
    ),
    
    mainPanel(
      metricsgraphicsOutput('plot1')
    )
    )
    
    # Define server logic required to draw a histogram
    server <-  function(input, output) {
      
      # Combine the selected variables into a new data frame
      selectedData <- reactive({
        dplyr::filter(sim.dat, segment == input$seg)
      })
      
      output$plot1 <- renderMetricsgraphics({
        mjs_plot(selectedData(), x= input$xcol, y=input$ycol) %>%
          mjs_point(color_accessor=income, size_accessor=income) %>%
          mjs_labs(x=input$xcol, y=input$ycol)
      })
      
    }
    
    # Run the application 
    # shinyApp(ui = ui, server = server)
