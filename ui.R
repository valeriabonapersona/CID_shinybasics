# Environment preparation -------------------------------------------------
source("run_prep.R")


# UI ----------------------------------------------------------------------
fluidPage(
  
  titlePanel("CIDskills workshop"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Select data of interest"),
      fct_input("diet", "Diet", diet_groups) 
          # "diet" is the id for input (ie, it becomes input$diet)
          # "Diet" is the label that will appear on the app interface
          # diet_groups is a variable containing the choices. This was defined in src/general.R
      ## do here the same for sex
      ## fct_slider_input() for "time"
      ## all fct_input() need to be separated by a comma.
    ), # sidebarPanel
    
    mainPanel(
      tabsetPanel(
        tabPanel("plot"), 
        tabPanel("stats")
      ) # closes tabsetPanel
    ) # main Panel
  ) # sidebarLayout
)


