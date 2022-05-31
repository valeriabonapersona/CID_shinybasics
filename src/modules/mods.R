# Module plots
mod_plot_ui <- function(id, title) {
 
  tabPanel(
    title,
    plotOutput(NS(id, "plot"))
  )
  
}

mod_plot_server <- function(id, fun, df) {
  
  moduleServer(id, function(input, output, session) {

    plot <- reactive({fun(df())})
    output$plot <- renderPlot({plot()})
    
  })
  
}


# Module Tables
mod_table_ui <- function(id, title) {
  
  tabPanel(
    title,
    dataTableOutput(NS(id, "table"))
  )
  
}


mod_table_server <- function(id, fun, df) {
  
  moduleServer(id, function(input, output, session) {
    
    table <- reactive({fun(df())})
    output$table <- renderDataTable({table()})
    
  })
  
}

