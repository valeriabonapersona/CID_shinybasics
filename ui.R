# Environment preparation -------------------------------------------------
source("run_prep.R")


# UI ----------------------------------------------------------------------
fluidPage(
  
  titlePanel("CIDskills workshop"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Select data of interest"),
      fct_input("diet", "Diet", diet_groups), 
      fct_input("sex", "Sex", c("female", "male")), 
      fct_slider_input("time")
    ), # sidebarPanel
    
    mainPanel(
      tabsetPanel(
        mod_plot_ui("plot_diet", "Lineplot"),
        tabPanel("stats") # change this for table ui
      ) # closes tabsetPanel
    ) # main Panel
  ) # sidebarLayout
)


