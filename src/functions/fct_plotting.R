'
  Script: funs for my plots
  Author: Valeria, CID workshop
'

scatter_plot_fun <- function(df, 
                             var_sample = "chick", 
                             var_group = "sex") {

    df %>%
      
      # visualization
      ggplot(aes(time, weight)) +
      
      # scatterplot
      geom_point(colour = "grey") +
      geom_line(aes_string(group = var_sample), colour = "grey") +
      
      # median line
      stat_summary(fun = "median", geom = "line", 
                   aes_string(group = var_group, colour = var_group),
                   size = 2) +
    
      # divide by sex
      facet_wrap(~diet) + 
      # beautify
      my_theme
  
  }
