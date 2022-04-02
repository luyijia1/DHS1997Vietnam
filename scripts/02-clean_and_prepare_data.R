# Since there are six background characteristics discussed, they will be separated into six sections. 
# Pre-requisites:
# -- Have to check the previous procedures about downloading the final report in PDF version, gathering and converting the dataset.
# -- Check ‘scripts/01-gather_data.R’
# Procedures below shows the cleaning and preparing for Section1_Age, indicating women's knowledge of ways to avoid AIDS across different age groups. 
# After parcing, there were errors in the data in row 6 which is the Age group of "40-49". 
# The data were reviewed and corrected. The dataset is converted into CSV version which can be checked in 'outputs/data/Section1_Age.csv'

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

# Write and export the csv version 
library(readr)
write.csv(Section1_Age, file = "Section1_Age.csv", row.names=FALSE)



# Procedures below shows the cleaning and preparing for Section2_Marital_Status, indicating women's knowledge of ways to avoid AIDS based on their . 
# After parcing, there were errors in the data in column1 and column2. The group names were splited into two columns rather than one. 
# The data were reviewed and corrected. The dataset is converted into CSV version which can be checked in 'outputs/data/Section2_Marital_Status.csv'

#### Section2_Marital_Status ####

# Marital_Status + Convert into a tibble
Marital_Status <- just_page_135_no_header_no_footer[10:12]
Section2_Marital_Status <- tibble(all = Marital_Status)

Section2_Marital_Status <-
    Section2_Marital_Status |>
    mutate(all = str_squish(all)) |>
    mutate(all = str_replace(all, ",", ".")) |>
    separate(col = all,
             into = c("Background Characteristic", "No way to Avoid", "Abstain from Sex", "Use condom", "One sexual partner", "Avoid prostitues", "Avoid injections", "Don't know any way", "Percentage with misinformation"),
             sep = " ", 
             remove = TRUE,
             fill = "right",
             extra = "drop"
    )

Section2_Marital_Status[1,1] <- c('Marital Status')
Section2_Marital_Status[2,1] <- c('Currently married')
Section2_Marital_Status[3,1] <- c('Formerly married')
Section2_Marital_Status[1,2] <- c('NA')
Section2_Marital_Status[2,2] <- c('3.7')
Section2_Marital_Status[3,2] <- c('4.2')
Section2_Marital_Status[2,3] <- c('3.4')
Section2_Marital_Status[3,3] <- c('0.9')
Section2_Marital_Status[2,4] <- c('32.0')
Section2_Marital_Status[3,4] <- c('25.2')
Section2_Marital_Status[2,5] <- c('70.5')
Section2_Marital_Status[3,5] <- c('59.3')
Section2_Marital_Status[2,6] <- c('20.8')
Section2_Marital_Status[3,6] <- c('23.6')
Section2_Marital_Status[2,7] <- c('26.9')
Section2_Marital_Status[3,7] <- c('25.1')
Section2_Marital_Status[2,8] <- c('14.0')
Section2_Marital_Status[3,8] <- c('21.0')
Section2_Marital_Status[2,9] <- c('3.3')
Section2_Marital_Status[3,9] <- c('3.4')

Section2_Marital_Status
```
# Write and export the csv version 
```{r}
library(readr)
write.csv(Section2_Marital_Status, file = "Section2_Marital_Status.csv", row.names=FALSE) 
```





