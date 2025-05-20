setwd("F:/data science/case_study_1")
getwd()
install.packages("readxl")
install.packages("tidyverse")
library(readxl)
df1<-read_excel("F:/data science/case_study_1/Divvy_Trips_2019_Q1.xlsx")
head(df1)
colnames(df1)
min_value<-min(df1$start_time)
min_value
install.packages("lubridate")
library(lubridate)
str(df1)
install.packages("dplyr")
library(dplyr)
df1<-na.omit(df1)
df2<-df1 %>%
  mutate(duration2=(end_time-start_time)*60) %>%
  group_by(usertype) %>% 
  summarise(avg_duration=mean(tripduration),
            total_duration=sum(tripduration),count_sub=n())
df2
duration<-df1$end_time-df1$start_time
duration
max(duration)
min(duration)
install.packages("ggplot2")
library(ggplot2)
head(df2)
View(df2)
