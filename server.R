# Environment preparation -------------------------------------------------
source("run_prep.R")


# server ----------------------------------------------------------------------
function(input, output, session) {
  
  dat_ft <- reactive({filter(dat, diet %in% input$diet)
    ## add here the other filters!!
    })

  }