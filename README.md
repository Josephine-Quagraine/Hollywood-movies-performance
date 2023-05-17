# Hollywood-movies-performance
This was one of 4 assignments given during a 3 months course in data analysis by JustIT. This project focused on data cleaning in R by checking for missing values, dropping missing values and removing duplicates. Numeric values were rounded off to 2 decimal places. To create a boxplot in R, used the library(ggplot2) which is an inbuilt package in R. Used code ggplot (HW_df,aes(x=Profitability,y=Worldwide.Gross)) + geom_boxplot (outlier.colour = "purple" ,outlier.shape= 23) + scale_x_continuous (labels = scales::comma) + coord_cartesian(ylim= c(0,1000)) to generated boxplot. Outliers were then removed

![image](https://github.com/Josephine-Quagraine/Hollywood-movies-performance/assets/133653796/29005c2a-0035-4884-94b6-c4292da1444f)

After data cleaning, had 61 obserations and 8 columns of cleaned data for downstream analysis. Exploratory data analysis (EDA) was carried out in R using univariate and bivariate analysis. For bivariate analysis, did a scatterplot comparing rotten tomatoes ratings to lead studios and a bar chart which showed the number of movies produced each year from 2007 to 2011. Analysis indicated that there was a strong correlation between ratings and lead studio with the highest rated movies belonging to Disney, Sony, Universal and also Independent. The cleaned consistent data renamed HW_df1 was exported and used to create visualizations in Power BI.
![image](https://github.com/Josephine-Quagraine/Hollywood-movies-performance/assets/133653796/eac5ef03-1746-4059-b139-9c2016859885)

![image](https://github.com/Josephine-Quagraine/Hollywood-movies-performance/assets/133653796/30494b68-aa88-45d0-9d1d-bc4c90339a8c)


[Link to dataset used for this project](https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv)


![image](https://github.com/Josephine-Quagraine/Hollywood-movies-performance/assets/133653796/b7b92faa-6531-4705-ba5f-7b4769295191)


![image](https://github.com/Josephine-Quagraine/Hollywood-movies-performance/assets/133653796/c4be45cd-d825-44d2-839e-c25e3ac42564)

[Link to my dashboard](https://app.powerbi.com/links/MWd37YbOKE?ctid=6efd0f20-57c8-4447-b53f-00d4992ca50b&pbi_source=linkShare)


