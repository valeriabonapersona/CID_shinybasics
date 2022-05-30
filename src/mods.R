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


mod_table_server <- function(id, df) {
  
  moduleServer(id, function(input, output, session) {
    
    table <- reactive({df() %>% group_by(sex, diet, time) %>% 
        summarize(mean = mean(weight), sd = sd(weight), n = length(unique(chick)))})
    output$table <- renderDataTable({table()})
    
  })
  
}

