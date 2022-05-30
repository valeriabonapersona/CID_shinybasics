# Environment preparation -------------------------------------------------
source("run_prep.R")


# UI ----------------------------------------------------------------------
fluidPage(
  
  titlePanel("CIDskills workshop"),
  
  sidebarLayout(
    sidebarPanel(
    ), # sidebarPanel
    
    mainPanel(
      tabsetPanel(
        tabPanel("plot"),
        tabPanel("stats")
      )
    ) # main Panel
  ) # sidebarLayout
)


