library(shiny)
library(dplyr)
library(DT)
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
      metricsgraphicsOutput('plot1'),
      
      dataTableOutput("summary")
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
      
      # Generate a summary of the dataset
      output$summary <- renderDataTable({
        sim.dat%>%
          group_by(segment)%>%
          summarise(Age=round(mean(na.omit(age)),0),
                    FemalePct=round(mean(gender=="Female"),2),
                    HouseYes=round(mean(house=="Yes"),2),
                    store_exp=round(mean(na.omit(store_exp),trim=0.1),0),
                    online_exp=round(mean(online_exp),0),
                    store_trans=round(mean(store_trans),1),
                    online_trans=round(mean(online_trans),1))%>%
          data.frame()%>%
        datatable( rownames = FALSE,
                   caption = 'Table 1: Segment Summary Table',
                   options = list(
                     pageLength = 4, 
                     autoWidth = TRUE)
        )
        
      })
      
    }
    
    # Run the application 
    shinyApp(ui = ui, server = server)