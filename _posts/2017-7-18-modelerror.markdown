---
title: Model Error
author: "Hui Lin"
date: "Jul 18, 2017"
layout: post
---

<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">Hui Lin </p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">
<a href="https://twitter.com/gossip_rabbit">Follow me on Twitter</a></p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">
<a href="https://github.com/happyrabbit">Github</a></p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">2017-07-18</p>

# Model Error

![](http://scientistcafe.com/book/Figure/ModelError.png)

The model error consists of two parts:  (1) systematic error, it is the part of "systematic relation" between X and y that model fails to capture.  This part of the error can be improved by improving the model; (2) random error, it is the part of the response that can not be explained by current inputs. A more complex model does not reduce the error. The biggest problem with black-box models is to fit random error as well, i.e., over-fitting. The notable feature of random error is that it can not be repeated on different samples. So a way to determine whether there is overfitting is to reserve a part of the sample as a test set and then check the performance of the trained model on the test data. Note that overfitting is a general problem, and any model may be overly fitted. Because black-box model usually has a large number of parameters,  it is more suspectable to over-fitting. 

We will delve deeper into model error and study the impact of measurement error in response variable and independent variables. 

-  [Systematic Error and Random Error](http://scientistcafe.com/post/ModelError.html)
    - [Measurement Error in the Response](http://scientistcafe.com/post/ModelError.html#011_measurement_error_in_the_response)
    - [Measurement Error in the Independent Variables](http://scientistcafe.com/post/ModelError.html#012_measurement_error_in_the_independent_variables)