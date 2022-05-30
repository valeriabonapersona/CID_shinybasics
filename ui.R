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
        tab(),
        tab()
      )
    ) # main Panel
  ) # sidebarLayout
)


