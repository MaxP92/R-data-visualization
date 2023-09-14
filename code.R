# #library(plyr, quietly = T)
# library(dplyr, quietly = T) # Pour le %>% etc
# library(tidyr, quietly = T)
# #library(ggplot2, quietly = T)
# #library(patchwork, quietly = T)
# library(readxl, quietly = T)
# #library(mosaic, quietly = T)
# library(RColorBrewer, quietly = T)
# library(shiny, quietly = T)
# library(shinyjs, quietly = T)
# library(shinyFiles, quietly = T)
# library(viridis, quietly = T)
# library(emmeans, quietly = T) # pour calculer les moyennes par groupe et faire des comparaisons 2 à 2
# library(multcomp, quietly = T)
# #library(RVAideMemoire, quietly = T)
# library(rcompanion, quietly = T)
# library(multcompView, quietly = T)
# library(DT, quietly = T)
# library(scales, quietly = T)

packages <- c("dplyr","tidyr","RColorBrewer", "shiny", "shinyjs", "shinyFiles", "readxl", "emmeans", "fuzzyjoin", "viridis", "DT", "multcomp", "rcompanion", "multcompView", "scales") # , "ggExtra"

# Loop through each package
for (package in packages) {
  
  # Install package
  # Note: `installed.packages()` returns a vector of all the installed packages
  if (!package %in% installed.packages()) {
    # Install it
    install.packages(
      package,
      dependencies = TRUE #, repos = "http://cran.us.r-project.org"
    )
  }
  # Load package
  # Note: `.packages()` returns a vector of all the loaded packages
  if (!package %in% .packages()) {
    # Load it
    library( package, character.only = TRUE, quietly = T  )
  }
}

# ASK FOR CODE ! (see readme)