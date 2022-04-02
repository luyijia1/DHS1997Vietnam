# Since there are six background characteristics discussed, they will be separated into six sections. 
# Pre-requisites:
# -- Have to check the previous procedures about downloading the final report in PDF version, gathering and converting the dataset into CSV version.
# -- Check ‘scripts/01-gather_data.R’
# Procedures below shows the cleaning and preparing for Section1_Age, indicating women's knowledge of ways to avoid AIDS across different age groups. 

#### SECTION1_AGE ####

# Age + Convert into a tibble
Age <- just_page_135_no_header_no_footer[4:9]
Section1_Age <- tibble(all = Age)

Section1_Age <-
    Section1_Age |>
    mutate(all = str_squish(all)) |>
    mutate(all = str_replace(all, "6g.8", "68.8")) |>
    mutate(all = str_replace(all, ",", ".")) |>
    separate(col = all,
             into = c("Background Characteristic", "No way to Avoid", "Abstain from Sex", "Use condom", "One sexual partner", "Avoid prostitues", "Avoid injections", "Don't know any way", "Percentage with misinformation"),
             sep = " ", 
             remove = TRUE,
             fill = "right",
             extra = "drop"
    )

  Section1_Age[6,2] <- c('3.1')
  Section1_Age[6,3] <- c('3.1')
  Section1_Age[6,3] <- c('3.1')
  Section1_Age[6,4] <- c('29.0')
  Section1_Age[6,5] <- c('68.2')
  Section1_Age[6,6] <- c('24.0')
  Section1_Age[6,7] <- c('29.7')
  Section1_Age[6,8] <- c('15.2')
  Section1_Age[6,9] <- c('4.6')
  Section1_Age[2,6] <- c('11.6')
  Section1_Age[2,7] <- c('17.0')
  Section1_Age[2,8] <- c('14.7')
  Section1_Age[2,9] <- c('1.9')

Section1_Age

