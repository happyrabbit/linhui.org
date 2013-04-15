This is the report for Raw Data
========================================================



```
## 'data.frame':	2448 obs. of  7 variables:
##  $ Measurement     : int  1 2 3 1 2 3 1 2 3 1 ...
##  $ Location        : Factor w/ 8 levels "Cd C4","Cr C7",..: 1 1 1 2 2 2 4 4 4 5 ...
##  $ Dog             : int  12149 12149 12149 12149 12149 12149 12149 12149 12149 12149 ...
##  $ Reader          : Factor w/ 3 levels "ER","IK","JW": 1 1 1 1 1 1 1 1 1 1 ...
##  $ Modality        : Factor w/ 2 levels "CT","Fluoro": 2 2 2 2 2 2 2 2 2 2 ...
##  $ Diameter        : num  1.176 1.162 1.389 0.876 0.923 ...
##  $ Average.diameter: num  1.242 NA NA 0.884 NA ...
```





```r
library(ggplot2)
sp <- ggplot(data, aes(x = Measurement, y = Diameter, color = Dog)) + 
    geom_point(shape = 1)
sp + facet_grid(Reader ~ Location)
```

![plot of chunk unnamed-chunk-2](linhui.org/files/figure/unnamed-chunk-2.png) 


