# Environment preparation -------------------------------------------------
source("run_prep.R")


# server ----------------------------------------------------------------------
function(input, output, session) {
  
  dat_ft <- reactive({filter(dat, diet %in% input$diet,
                             sex %in% input$sex,
                             time >= input$time[[1]] & time <= input$time[[2]])})
  
  mod_plot_server("plot_diet", scatter_plot_fun, dat_ft)
  mod_table_server("table_summ", dat_ft)
}