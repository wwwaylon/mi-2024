pagedown::chrome_print(
  "slide_deck.html", 
  output = "slide_deck.pdf"
)

# To R script
knitr::purl(
  "slide_deck.Rmd", 
  "slide_code.R", 
  documentation = 2L
)

# Create zip file
utils::zip(
  zipfile = "materials.zip",
  files = c("prereqs.R",
            "slide_code.R",
            "slide_deck.pdf",
            "tidyverse-tools.Rproj")
  )



pagedown::chrome_print(
  "C:/Users/whowar/Documents/SCRI/Presentations/lgm-2025/src/slides/1_aim_lgm.html", 
  output = "C:/Users/whowar/Documents/SCRI/Presentations/lgm-2025/src/slides/slide_deck.pdf"
)

# Install and load the pdf2pptx package
#devtools::install_github("jirilukavsky/pdf2pptx")
library(pdf2pptx)

# Convert the PDF to PowerPoint
pdf2pptx("C:/Users/whowar/Documents/SCRI/Presentations/lgm-2025/src/slides/slide_deck.pdf",
         "C:/Users/whowar/Documents/SCRI/Presentations/lgm-2025/src/slides/slide_deck.pptx"
)