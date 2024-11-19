
# Test "src/1-intro.Rmd"
rmarkdown::render(here::here("slides", "1-intro.Rmd"), params = list(
  author = c("Waylon Howard"),
  date = format(Sys.time(), '%B %d, %Y'),
  location = "Webinar"))

pagedown::chrome_print(here::here("slides", "1-intro.html"), 
                       output = here::here("slides", "1-intro.pdf") )

#devtools::install_github("jirilukavsky/pdf2pptx")
# Convert the PDF to PowerPoint
pdf2pptx::pdf2pptx(here::here("slides", "1-intro.pdf"),
         here::here("slides", "1-intro.pptx") )


# Create zip file
#utils::zip(
#  zipfile = "materials.zip",
#  files = c("prereqs.R",
#            "slide_code.R",
#            "slide_deck.pdf",
#            "tidyverse-tools.Rproj")
#)

rmarkdown::render(here::here("slides", "2-traditional.Rmd"), params = list(
  author = c("Waylon Howard"),
  date = format(Sys.time(), '%B %d, %Y'),
  location = "Webinar"))

pagedown::chrome_print(here::here("slides", "2-traditional.html"), 
                       output = here::here("slides", "2-traditional.pdf") )

#devtools::install_github("jirilukavsky/pdf2pptx")
# Convert the PDF to PowerPoint
pdf2pptx::pdf2pptx(here::here("slides", "2-traditional.pdf"),
                   here::here("slides", "2-traditional.pptx") )

#- section 3

rmarkdown::render(here::here("slides", "3-mi.Rmd"), params = list(
  author = c("Waylon Howard"),
  date = format(Sys.time(), '%B %d, %Y'),
  location = "Webinar"))

pagedown::chrome_print(here::here("slides", "3-mi.html"), 
                       output = here::here("slides", "3-mi.pdf") )

#devtools::install_github("jirilukavsky/pdf2pptx")
# Convert the PDF to PowerPoint
pdf2pptx::pdf2pptx(here::here("slides", "3-mi.pdf"),
                   here::here("slides", "3-mi.pptx") )


#- section 4

rmarkdown::render(here::here("slides", "4-fiml.Rmd"), params = list(
  author = c("Waylon Howard"),
  date = format(Sys.time(), '%B %d, %Y'),
  location = "Webinar"))

pagedown::chrome_print(here::here("slides", "4-fiml.html"), 
                       output = here::here("slides", "4-fiml.pdf") )

#devtools::install_github("jirilukavsky/pdf2pptx")
# Convert the PDF to PowerPoint
pdf2pptx::pdf2pptx(here::here("slides", "4-fiml.pdf"),
                   here::here("slides", "4-fiml.pptx") )