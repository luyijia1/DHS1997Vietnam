# Since there are six background characteristics discussed, they will be separated into six sections. 
# Section1_Age, Section2_Marital_Status, Section3_Residence, Section4_Project_Province, Section5_Region, Section6_Education
# Pre-requisites:
# -- Have to check the previous procedures about downloading the final report in PDF version, gathering and converting the dataset.
# -- Check ‘scripts/01-gather_data.R’
# Procedures below shows the cleaning and preparing for each section, indicating percentage of women's knowledge of ways to avoid AIDS across different groups. 
# After parcing, there were errors in the data in rows. Specifically, some of them were split into different columns rather than one.
# The data were reviewed and corrected. The dataset is converted into CSV version which can be checked in 'outputs/data'

#### Section1_Age ####

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

#### Section3_Residence ####

# Residence + Convert into a tibble
Residence <- just_page_135_no_header_no_footer[13:15]
Section3_Residence <- tibble(all = Residence)

Section3_Residence <-
    Section3_Residence |>
    mutate(all = str_squish(all)) |>
    mutate(all = str_replace(all, ",", ".")) |>
    separate(col = all,
             into = c("Background Characteristic", "No way to Avoid", "Abstain from Sex", "Use condom", "One sexual partner", "Avoid prostitues", "Avoid injections", "Don't know any way", "Percentage with misinformation"),
             sep = " ", 
             remove = TRUE,
             fill = "right",
             extra = "drop"
    )

Section3_Residence

library(readr)
write.csv(Section3_Residence, file = "Section3_Residence.csv", row.names=FALSE) 








#### Section4_Project_Province ####

# Project_Province + Convert into a tibble
Project_Province <- just_page_135_no_header_no_footer[16:18]
Section4_Project_Province <- tibble(all = Project_Province)

Section4_Project_Province <-
    Section4_Project_Province |>
    mutate(all = str_squish(all)) |>
    mutate(all = str_replace(all, ",", ".")) |>
    separate(col = all,
             into = c("Background Characteristic", "No way to Avoid", "Abstain from Sex", "Use condom", "One sexual partner", "Avoid prostitues", "Avoid injections", "Don't know any way", "Percentage with misinformation"),
             sep = " ", 
             remove = TRUE,
             fill = "right",
             extra = "drop"
    )

Section4_Project_Province[1,1] <- c('Project province')
Section4_Project_Province[1,2] <- c('NA')
Section4_Project_Province[3,5] <- c('74.1')
Section4_Project_Province[3,6] <- c('20.7')
Section4_Project_Province[3,7] <- c('27.9')
Section4_Project_Province[3,8] <- c('11.9')
Section4_Project_Province[3,9] <- c('4.4')

Section4_Project_Province

library(readr)
write.csv(Section4_Project_Province, file = "Section4_Project_Province.csv", row.names=FALSE) 









#### Section5_Region ####

# Project_Province + Convert into a tibble
Region <- just_page_135_no_header_no_footer[19:26]
Section5_Region <- tibble(all = Region)

Section5_Region <-
    Section5_Region |>
    mutate(all = str_squish(all)) |>
    mutate(all = str_replace(all, ",", ".")) |>
    separate(col = all,
             into = c("Background Characteristic", "No way to Avoid", "Abstain from Sex", "Use condom", "One sexual partner", "Avoid prostitues", "Avoid injections", "Don't know any way", "Percentage with misinformation"),
             sep = " ", 
             remove = TRUE,
             fill = "right",
             extra = "drop"
    )

Section5_Region[2,1] <- c('Northern Uplands')
Section5_Region[2,2] <- c('3.5')
Section5_Region[2,3] <- c('1.6')
Section5_Region[2,4] <- c('37.4')
Section5_Region[2,5] <- c('79.6')
Section5_Region[2,6] <- c('12.3')
Section5_Region[2,7] <- c('30.9')
Section5_Region[2,8] <- c('7.9')
Section5_Region[2,9] <- c('3.6')

Section5_Region[3,1] <- c('Red River Delta')
Section5_Region[3,2] <- c('1.2')
Section5_Region[3,3] <- c('1.4')
Section5_Region[3,4] <- c('35.3')
Section5_Region[3,5] <- c('85.3')
Section5_Region[3,6] <- c('20.3')
Section5_Region[3,7] <- c('32.7')
Section5_Region[3,8] <- c('4.2')
Section5_Region[3,9] <- c('8.0')

Section5_Region[4,1] <- c('North Central')
Section5_Region[4,2] <- c('0.3')
Section5_Region[4,3] <- c('6.8')
Section5_Region[4,4] <- c('36.9')
Section5_Region[4,5] <- c('72.3')
Section5_Region[4,6] <- c('14.1')
Section5_Region[4,7] <- c('20.9')
Section5_Region[4,8] <- c('8.1')
Section5_Region[4,9] <- c('1.2')

Section5_Region[5,1] <- c('Central Coast')
Section5_Region[5,2] <- c('7.1')
Section5_Region[5,3] <- c('8.0')
Section5_Region[5,4] <- c('34.6')
Section5_Region[5,5] <- c('55.1')
Section5_Region[5,6] <- c('21.5')
Section5_Region[5,7] <- c('20.0')
Section5_Region[5,8] <- c('20.4')
Section5_Region[5,9] <- c('1.3')

Section5_Region[6,1] <- c('Central Highlands')
Section5_Region[6,2] <- c('16.3')
Section5_Region[6,3] <- c('0.7')
Section5_Region[6,4] <- c('15.0')
Section5_Region[6,5] <- c('53.6')
Section5_Region[6,6] <- c('23.5')
Section5_Region[6,7] <- c('33.0')
Section5_Region[6,8] <- c('27.8')
Section5_Region[6,9] <- c('1.9')

Section5_Region[7,9] <- c('0.2')

Section5_Region[8,1] <- c('Mekong River Delta')
Section5_Region[8,2] <- c('3.9')
Section5_Region[8,3] <- c('3.1')
Section5_Region[8,4] <- c('17.9')
Section5_Region[8,5] <- c('54.2')
Section5_Region[8,6] <- c('28.4')
Section5_Region[8,7] <- c('26.4')
Section5_Region[8,8] <- c('29.8')
Section5_Region[8,9] <- c('2.2')

Section5_Region

library(readr)
write.csv(Section5_Region, file = "Section5_Region.csv", row.names=FALSE) 








#### Section6_Education ####

# Education + Convert into a tibble
Education <- just_page_135_no_header_no_footer[27:32]
Section6_Education <- tibble(all = Education)

Section6_Education <-
    Section6_Education |>
    mutate(all = str_squish(all)) |>
    mutate(all = str_replace(all, ",", ".")) |>
    separate(col = all,
             into = c("Background Characteristic", "No way to Avoid", "Abstain from Sex", "Use condom", "One sexual partner", "Avoid prostitues", "Avoid injections", "Don't know any way", "Percentage with misinformation"),
             sep = " ", 
             remove = TRUE,
             fill = "right",
             extra = "drop"
    )

Section6_Education[2,1] <- c('No education')
Section6_Education[2,2] <- c('11.3')
Section6_Education[2,3] <- c('5.7')
Section6_Education[2,4] <- c('12.6')
Section6_Education[2,5] <- c('35.8')
Section6_Education[2,6] <- c('12.9')
Section6_Education[2,7] <- c('8.9')
Section6_Education[2,8] <- c('47.7')
Section6_Education[2,9] <- c('1.2')

Section6_Education[3,1] <- c('Some primary')
Section6_Education[3,2] <- c('6.0')
Section6_Education[3,3] <- c('3.5')
Section6_Education[3,4] <- c('16.8')
Section6_Education[3,5] <- c('55.0')
Section6_Education[3,6] <- c('16.8')
Section6_Education[3,7] <- c('15.5')
Section6_Education[3,8] <- c('30.4')
Section6_Education[3,9] <- c('1.4')

Section6_Education[4,1] <- c('Completed primary')
Section6_Education[4,2] <- c('5.3')
Section6_Education[4,3] <- c('2.9')
Section6_Education[4,4] <- c('31.1')
Section6_Education[4,5] <- c('64.0')
Section6_Education[4,6] <- c('19.2')
Section6_Education[4,7] <- c('22.4')
Section6_Education[4,8] <- c('18.1')
Section6_Education[4,9] <- c('2.1')

Section6_Education[5,1] <- c('Completed lower secondary')
Section6_Education[5,2] <- c('1.8')
Section6_Education[5,3] <- c('2.6')
Section6_Education[5,4] <- c('4.9')
Section6_Education[5,5] <- c('34.3')
Section6_Education[5,6] <- c('78.6')
Section6_Education[5,7] <- c('21.5')
Section6_Education[5,8] <- c('30.2')
Section6_Education[5,9] <- c('5.7')

Section6_Education[6,1] <- c('Completed higher secondary')
Section6_Education[6,2] <- c('0.9')
Section6_Education[6,3] <- c('4.9')
Section6_Education[6,4] <- c('47.2')
Section6_Education[6,5] <- c('84.9')
Section6_Education[6,6] <- c('29.1')
Section6_Education[6,7] <- c('44.0')
Section6_Education[6,8] <- c('2.6')
Section6_Education[6,9] <- c('6.2')

Section6_Education

library(readr)
write.csv(Section6_Education, file = "Section6_Education.csv", row.names=FALSE) 



