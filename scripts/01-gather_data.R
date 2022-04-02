# Purpose: Parse the PDF in order to get a dataset from DHS Program 'Final Report'.
# Parts of the downloading procedures have already been in the 'scripts/00-simulation.R'.
# The section chosen to analyze is about AIDS prevention in Chapter 10. (Table 10.2 AIDS prevention)
# Because the final report is in PDF, pdf_text() from pdftools (Ooms 2019b) is useful to help read the content into R.
# Below is an overall parsing process, including the downloading process (Doesn't have to be repeated in R!)

library(janitor)
library(pdftools)
library(purrr)
library(tidyverse)
library(stringi)

download.file(
  "https://dhsprogram.com/pubs/pdf/FR104/FR104.pdf", 
  "1997_Vietnam_DHS.pdf",
  mode="wb")

# Using pdftools 
all_content <- pdf_text("1997_Vietnam_DHS.pdf")
```

```{r}
# select Table 10.2 AIDS prevention on p135 
just_page_135 <- stri_split_lines(all_content[[135]])[[1]] 
# Grab the type of table
type_of_table <- just_page_135[1] |> str_squish()
# Get rid of the top matter
just_page_135_no_header <- just_page_135[8:length(just_page_135)] 
# Get rid of the bottom matter
just_page_135_no_header_no_footer <- just_page_135_no_header[1:30] 
