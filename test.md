Weather in Cologne, Germany
========================================================
author: Viola
date: February 2015

Goal of this presentation
========================================================

This presentation is part of the Coursera assignment. The goal is to briefly explain in a different manner the shiny application, which I created in the first part of the assignment. 


Data
========================================================

The weather is taken from www.wunderground.com. It contains daily historical weather data of Colgone, Germany, for two years. For each day we have chosen the temperature at around lunch time, so the temperature is close to the maximum temperature. As Cologne is rather close to the sea, we expect a mild climate. The average maximum temperatures per year are the following:



```r
mean(year13)
```

```
[1] 12.95342
```

```r
mean(year14)
```

```
[1] 13.87123
```

Distribution of Temperature 2013 and 2014
========================================================

![plot of chunk unnamed-chunk-3](test-figure/unnamed-chunk-3-1.png) 


Daily Development of Temperature 2013 and 2014
========================================================


```r
old.par <- par(mfrow=c(1, 2))
plot(date13,year13,main="2013")
plot(date14,year14,main="2014")
```

![plot of chunk unnamed-chunk-4](test-figure/unnamed-chunk-4-1.png) 


