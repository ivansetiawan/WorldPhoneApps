Documentation
========================================================
author: Ivan Setiawan
date: Sun Feb 22 11:40:22 2015

Project Introduction
========================================================

 1. This is a simple project about the world phone adoption from 1951-1961 
 2. The data is already pre-loaded inside the R studio
 3. The presentation includes all of the histogram representation of world phone based on region
 4. The user can select the region from the drop down menu
 5. The user then can select the color of the histogram from the radio button
 6. The data presentation is separated into three tabs: data summary, data table, and the histogram
 7. Finally, there is a function to download the histogram either in PDF or PNG format
 
 
Sidebar Panel and Main Panel
========================================================

1. The sidebar panel consists of drop down menu to select the region
2. Radio buttons are then added in order to select the color and the download file
3. The main panel are created in the tab format to give more user interface experiences regarding the data
4. The Summary tab contains all of the information regarding min and max value, median, mean, and 1st and 3rd percentile
5. The Show Data Table tab contains all of the data table information
6. The Show Histogram Tab contains the data representation using the reactive function


Summary of World Phones Data Adoption
========================================================


```r
summary(WorldPhones)
```

```
     N.Amer          Europe           Asia          S.Amer    
 Min.   :45939   Min.   :21574   Min.   :2876   Min.   :1815  
 1st Qu.:62572   1st Qu.:31250   1st Qu.:4969   1st Qu.:2632  
 Median :68484   Median :35218   Median :6662   Median :2845  
 Mean   :66748   Mean   :34343   Mean   :6229   Mean   :2772  
 3rd Qu.:73918   3rd Qu.:38970   3rd Qu.:7538   3rd Qu.:3072  
 Max.   :79831   Max.   :43173   Max.   :9053   Max.   :3338  
    Oceania         Africa        Mid.Amer     
 Min.   :1646   Min.   :  89   Min.   : 555.0  
 1st Qu.:2446   1st Qu.:1478   1st Qu.: 753.0  
 Median :2691   Median :1663   Median : 836.0  
 Mean   :2625   Mean   :1484   Mean   : 841.7  
 3rd Qu.:2961   3rd Qu.:1837   3rd Qu.: 959.5  
 Max.   :3224   Max.   :2005   Max.   :1076.0  
```

Reactive Function
========================================================

1. The reactive function is based on the user selected input: the region and the histogram color
2. The renderPlot() function is used to create the plot histogram
3. The next slide will contains the R embedded code for the histogram

Histogram
========================================================




```
Error in eval(expr, envir, enclos) : could not find function "shinyApp"
```
