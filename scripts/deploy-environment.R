# Packages
packages <- c(
  "shiny",
  "shinydashboard",
  "plotly",
  "devtools",
  "MedBrewer",
  "DT",
  "openxlsx",
  "tidyverse"
)

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())

if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

if (!require("MedBrewer")) {
  devtools::install_github("GuillaumeInALab/MedBrewer")
}

invisible(
  lapply(
    packages,
    library,
    character.only = TRUE,
    warn.conflicts = FALSE
  )
)