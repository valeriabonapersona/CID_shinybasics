'
  Script: funs for filtering data
  Author: Valeria, CID workshop
'

fct_input <- function(id, lab, var) {
  
  selectizeInput(
    inputId = id,
    label = lab,
    choices = var, 
    selected = var,
    multiple = TRUE
  ) 
  
}

fct_slider_input <- function(id) {
  sliderInput(
    inputId = id, 
    label = "Time", 
    min = 0, 
    max = 22,
    step = 2,
    value = c(0, 22)
    )
}
