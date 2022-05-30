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


