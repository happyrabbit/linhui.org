---
title: The Art and Science of Data—Data Wrangling
author: "Hui Lin"
date: "Apr 30, 2017"
layout: post
---

<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">Hui Lin; </p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">
<a href="https://twitter.com/gossip_rabbit">
Follow me on Twitter;</a></p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">2017-04-30 ; </p>


This blog focuses on some of the most frequently used data manipulations and shows how to implement them in R. It is important to explore the data set with descriptive statistics (mean, standard deviation, etc.) and data visualization prior to analysis. Transform data so that the data structure is in line with the requirements of the model. You also need to summarize the results after analysis.

Here we assume the readers are already familiar with some of the traditional R data operations, such as subsetting data frame, deleting variables, read and write functions (read.csv (), write.csv (), etc.) in base R. We will also skip some basic descriptive functions in R. For example, for discrete variables, we often use the frequency table to look at the frequency (table ()) of the variable at various levels as needed, or a crosstab of two variables. You can also draw a bar chart for discrete variables (bar()). For continuous variables, we need to look at the mean (mean ()), standard deviation (sd()), quantile (quantile()) of a variable from time to time. There are also functions like summary(), str() and describe() (a functions in the ‘psych’ package) that give a summary of a data frame.

The focus here is to introduce some of the more efficient data wrangling methods in R.

- [Read and write data](http://scientistcafe.com/post/DataWrangling.html#11_read_and_write_data)
    - [readr](http://scientistcafe.com/post/DataWrangling.html#111_readr)
    - [data.table— enhanced data.frame](http://scientistcafe.com/post/DataWrangling.html#112_datatable—_enhanced_dataframe)
- [Summarize data](http://scientistcafe.com/post/DataWrangling.html#12_summarize_data)
    - [apply(), lapply() and sapply() in base R](http://scientistcafe.com/post/DataWrangling.html#12_summarize_data)
    - [ddply() in plyr package](http://scientistcafe.com/post/DataWrangling.html#12_summarize_data)
    - [dplyr package](http://scientistcafe.com/post/DataWrangling.html#12_summarize_data)
- [Tidy and Reshape Data](http://scientistcafe.com/post/DataWrangling.html#13_tidy_and_reshape_data)
    - [reshape2 package](http://scientistcafe.com/post/DataWrangling.html#13_tidy_and_reshape_data)
    - [tidyr package](http://scientistcafe.com/post/DataWrangling.html#13_tidy_and_reshape_data)