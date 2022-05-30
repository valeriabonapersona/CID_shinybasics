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
        tabPanel(),
        tabPanel()
      )
    ) # main Panel
  ) # sidebarLayout
)


