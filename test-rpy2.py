# this is to call R code
import rpy2.robjects as ro 
# this is to load packages
from rpy2.robjects.packages import importr
# install forecast package
install_status = ro.r('install.packages("forecast", repos = "https://cloud.r-project.org/")')
forecast = importr('forecast')
# import stuff for interop with pandas
import pandas as pd
from rpy2.robjects import pandas2ri
pandas2ri.activate()
# import stats::ts() function into python
ts = ro.r('ts')
# generate some data in R
xdata = ro.r('x = cumsum(rnorm(100))')
tsdata = ts(xdata, frequency = 4)
arima_model = forecast.auto_arima(tsdata)
arima_forecasts = forecast.forecast(arima_model, h = 5)
numerical_forecasts = list(arima_forecasts[3])
print(numerical_forecasts)
