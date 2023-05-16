#Take a look at the data
View (HW_df)

#load library
library(tidyverse)

#check data types
str (HW_df)

#check for missing values
colSums(is.na(HW_df))

#drop missing data
HW_df<- na.omit(HW_df)

#to check that affected rows have been removed
colSums(is.na(HW_df))


#check for duplicates
dim (HW_df[duplicated(HW_df$film),])[1]

#round off values to 2 places
HW_df$Profitability<- round (HW_df$Profitability, digit =2) 
HW_df$Worldwide.Gross<-round (HW_df$Worldwide.Gross, digit=2)


View (HW_df)

dim (HW_df)

#check for outliers using boxplot
library(ggplot2)

#create a boxplot highlighting outliers 
ggplot(HW_df,aes(x=Profitability, y=Worldwide.Gross))+geom_boxplot(outlier.colour= "purple",outlier.shape= 23)+scale_x_continuous(labels = scales::comma)+coord_cartesian(ylim= c(0,1000))

#remove outliers in 'Profitability'
Q1 <- quantile(HW_df$Profitability, .25)
Q3 <- quantile(HW_df$Profitability, .75)
IQR <- IQR(HW_df$Profitability)

no_outliers <- subset(HW_df, HW_df$Profitability> (Q1 - 1.5*IQR) & HW_df$Profitability< (Q3 + 1.5*IQR))

dim(no_outliers)

# Remove outliers in 'Worldwide.Gross'
Q1 <- quantile(no_outliers$Worldwide.Gross, .25)
Q3 <- quantile(no_outliers$Worldwide.Gross, .75)
IQR <- IQR(no_outliers$Worldwide.Gross)

HW_df1 <- subset(no_outliers, no_outliers$Worldwide.Gross> (Q1 - 1.5*IQR) & no_outliers$Worldwide.Gross< (Q3 + 1.5*IQR))

dim(HW_df1)

#univariate analysis
summary(HW_df1)

#bivariate analysis
#scatterplot
ggplot(HW_df1, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

#bar chart
ggplot(HW_df1, aes(x=Year)) + geom_bar()

#export clean data
write.csv(HW_df1,"clean_HW_df.csv")

#file path
write.csv (HW_df1,"C:\\Users\\Travis Perks\\Downloads\\clean_HW_df.csv")



                                                                                                                    