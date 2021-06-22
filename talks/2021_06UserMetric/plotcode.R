library(dplyr)
library(plotly)
bad_dat <- read.csv("Data/BadGrow.csv")
good_dat <- read.csv("Data/GoodGrow.csv")

dat = dat %>%
  dplyr::mutate(time = month)%>%
  dplyr::select(-month)

plot_ly(good_dat) %>%
  add_trace(x = ~Month, y= ~MAU, type = 'bar', name = 'New') %>%
  layout(xaxis = list(title = "" , tickangle = -30), 
         yaxis = list(title = 'MAU'), barmode = 'stack')


plot_ly(bad_dat) %>%
  add_trace(x = ~Month, y= ~New, type = 'bar', name = 'New') %>%
  add_trace(x = ~Month, y= ~Resurrect, type = 'bar', name = 'Resurrect') %>%
  add_trace(x = ~Month, y= ~Retain, type = 'bar', name = 'Retain') %>%
  layout(xaxis = list(title = "" , tickangle = -30), 
         yaxis = list(title = 'MAU'), barmode = 'stack')


plot_ly(good_dat) %>%
  add_trace(x = ~Month, y= ~New, type = 'bar', name = 'New') %>%
  add_trace(x = ~Month, y= ~Resurrect, type = 'bar', name = 'Resurrect') %>%
  add_trace(x = ~Month, y= ~Retain, type = 'bar', name = 'Retain') %>%
  layout(xaxis = list(title = "" , tickangle = -30), 
         yaxis = list(title = 'MAU'), barmode = 'stack')

plot_ly(bad_dat, x = ~Month, y=  ~MoM.Ret) %>% 
 add_lines(name = "Retention Rate",hoverinfo = "text",text = ~paste(round(MoM.Ret* 100, 0), '%'))%>%
  layout(xaxis = list(title = "", tickangle = -30),
         yaxis = list(title = "Retention Rate")
  )

plot_ly(good_dat, x = ~Month, y=  ~MoM.Ret) %>% 
  add_lines(name = "Retention Rate",hoverinfo = "text",text = ~paste(round(MoM.Ret* 100, 0), '%'))%>%
  layout(xaxis = list(title = "", tickangle = -30),
         yaxis = list(title = "Retention Rate")
  )
