# CID_shinybasics
Shiny basics tutorial for CID workshop

## Project organization.

```
.
├── .gitignore
├── CITATION.md
├── LICENSE.md
├── README.md
├── data                  <- All project data, ignored by git. Not used for workshop.
│   ├── final             <- The final, canonical data sets used for analyses. 
│   └── raw               <- The original data.
├── src
│   ├── general.R         <- Contains libraries, paths, other configurations. 
│   ├── preparation       <- Contains any file used to prepare / preprocess the data. Generally this will generate a data/final/ file then used in the app.  
│   ├── functions         <- Contains all functions. Function files start with fct_  
│   └── modules           <- Contains all modules. Module files start with mod_  
├── ui.R                  <- User interface of app
└── server.R              <- Server of app
```
