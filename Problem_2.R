# a) 
xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)

xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

# b)
xmax - xmin 

# c)
avgXmin <- mean(xmin)
avgXmin

avgXmax <- mean(xmax)
avgXmax

# d)
xmin[xmin < mean(xmin)]

# e)
xmin[xmin > mean(xmin)]

# f)
date <- c("03Mon18", "04Tue18", "05Wed18", "04Thu18", "05Fri18", "06Sat18", "07Sun18")
date

## Nice
names(xmin) <- date
names(xmax) <- date

# g) 
temperatures <- data.frame(
  df.xmin = xmin,
  df.xmax = xmax
)

temperatures
# h)

## Less verbose and more clear:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]


Fahrenheit <- xmin #F = 9/5C + 32
temperatures[, 'df.xminFahrenheit'] <- temperatures[, 'df.xmin'] * Fahrenheit 

temperatures[, 'df.xminFahrenheit']

# i)

measurementsInFahrenheit <- data.frame(
  df.date = date,  
  df.xminFahrenheit = temperatures[, 'df.xminFahrenheit']
)

measurementsInFahrenheit

# j)


measurementsInFahrenheit[c(1, 2, 3, 4, 5), ]

## or easier: 1:5 == c(1, 2, 3, 4, 5)

## Exclusion
measurementsInFahrenheit[-(6:7), ]



