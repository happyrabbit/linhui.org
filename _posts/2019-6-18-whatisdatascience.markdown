---
title: What is data science?
layout: post
time: '9:38'
---

<p align="center">
  <img src="/images/quoteDeming.png"  width="80%" />
</p>


Interest in data science is at an all-time high and has exploded in popularity in the last couple of years. Data scientists today are from various backgrounds. If someone ran into you ask what data science is all about, what would you tell them? It is not an easy question to answer. Data science is one of the areas that everyone is talking about, but no one can define.

Media has been hyping about “Data Science” “Big Data” and “[Artificial Intelligence](https://en.wikipedia.org/wiki/Artificial_intelligence)” over the fast few years. I like this amusing statement from the internet:

> **"When you’re fundraising, it’s AI. When you’re hiring, it’s ML. When you’re implementing, it’s logistic regression."**

For outsiders, data science is whatever magic that can get useful information out of data. Everyone should have heard about big data. Data science trainees now need the skills to cope with such big data sets. What are those skills? You may hear about: Hadoop, a system using Map/Reduce to process large data sets distributed across a cluster of computers or about Spark, a system build atop Hadoop for speeding up the same by loading huge datasets into shared memory(RAM) across clusters. The new skills are for dealing with organizational artifacts of large-scale cluster computing but not for better solving the real problem. A lot of data means more tinkering with computers. After all, it isn’t the size of the data that’s important. It’s what you do with it. Your first reaction to all of this might be some combination of skepticism and confusion. We want to address this up front that: we had that exact reaction. Now data science is everywhere. But what is today's data science?

## Blind men and an elephant

There is a widely diffused [Chinese parable](https://en.wikipedia.org/wiki/Blind_men_and_an_elephant) (depending on where you are from, you may think it is a Japanese parable) which is about a group of blind men conceptualizing what the elephant is like by touching it:

> "[...In the case of the first person, whose hand landed on the trunk, said: 'This being is like a thick snake'. For another one whose hand reached its ear, it seemed like a kind of fan. As for another person, whose hand was upon its leg, said, the elephant is a pillar like a tree-trunk. The blind man who placed his hand upon its side said, 'elephant is a wall'. Another who felt its tail described it as a rope. The last felt its tusk, stating the elephant is that which is hard, smooth and like a spear." [wikipedia](https://en.wikipedia.org/wiki/Blind_men_and_an_elephant)

Data science is the elephant. With the data science hype picking up stream, many professionals changed their titles to be “Data Scientist” without any of the necessary qualifications. Today's data scientists have vastly different backgrounds, yet each one conceptualizes what the elephant is based on his/her own professional training and application area. And to make matters worse, most of us are not even fully aware of our own conceptualizations, much less the uniqueness of the experience from which they are derived. Here is a list of somewhat whimsical definitions for a “data scientist”:

- “A data scientist is a data analyst who lives in California”
- “A data scientist is someone who is better at statistics than any software engineer and better at software engineering than any statistician.”
- “A data scientist is a statistician who lives in San Francisco.”
- “Data Science is statistics on a Mac.”

**"We don’t see things as they are, we see them as we are. [by Anais Nin]"**

It is annoying but true. So the answer to the question "what is data science?" depends on who you are talking to. Who you may be talking to then? Data science has three main skill tracks: engineering, analysis, and modeling (and yes, the order matters!). Here are some representative skills in each track. Different tracks and combinations of tracks will define different roles in data science.

## Data science role/skill tracks

### 1 Engineering: the process of making everything else possible

You need to have the ability to get data with reasonable quality before making sense of it. If you only deal with a small dataset, you may be able to get by with entering some numbers into a spreadsheet. As the data increasing in size, data engineering becomes a sophisticated discipline in its own right.

(1) Data environment

Design and set up the environment to support data science workflow. It may include setting up data storage in the cloud, Kafka platform, Hadoop and Spark cluster etc. Each company has its unique data condition and needs. So the environment will be different depending on size of the data, update frequency, complexity of analytics, compatibility with the backend infrastructure and (of course) budget.

(2) Data management

Automated data collection is a common task which includes parsing the logs (depending on the stage of the company and the type of industry you are in), web scraping, API queries, and interrogating data streams. Determine and construct data schema to support analytical and modeling need. Use tools, processes, guidelines to ensure data is correct, standardized and documented.

(3) Production

If you want to integrate the model or analysis into the production system, then you have to automate all data handling steps. It involves the whole pipeline from data access to preprocessing, modeling and final deployment. It is necessary to make the system work smoothly with all existing stacks. So it requires to monitor the system through some sort of robust measures, such as rigorous error handling, fault tolerance, and graceful degradation to make sure the system is running smoothly and the users are happy.

### **2 Analysis – the process of turning raw information into insights in a fast way**

(1) Domain knowledge

Domain knowledge is the understanding of the organization or industry where you apply data science. You can't make sense of data without context, such as what are the important metric for this kind of business, what are the business questions, what type of data they have and what do the data represent, how to translate a business need to data problem, what has been tried before and with what results, what are the accuracy-cost-time trade-offs, how can things fail, what other factors are not accounted, what are the reasonable assumptions and what are faulty. In the end, domain knowledge helps you to deliver the results in an audience-friendly way.

(2) Exploratory analysis

This type of analysis is about exploration and discovery. Rigor conclusion is not a concern which means the goal is to get insights driven by [**correlation** not **causation**](https://www.iperceptions.com/blog/causation-vs-correlation). The later requires statistical skills and hence more expensive. Instead this role will help your team look at as much data as possible so that the decision-makers can get a sense of what's worth further pursuing. It often involves different ways to slice and aggregate data. An important thing to note here is that you should be careful not to get conclusion beyond the data. You don't need to write gorgeous, robust code to perform well in this role.

(3) Story telling

Storytelling with data is key to deliver the insights and drive better decision making. It is the art of telling people what the numbers actually signify. It usually requires data summarization, aggregation and visualization. It is important to answer the following questions before you begin down the path of creating a data story:

- Who are your audience?
- What do you want your audience to know or do?
- How can you use data to help make your point?

### 3 Modeling – the process of diving deeper into the data to discover the pattern we don't easily see

Even fancy machine learning model is the first thing comes to mind when people think about data science, unfortunately, in industry, it occupies the smallest part of data scientist's time. Nevertheless, it is a powerful set of tools.

(1) [Supervised learning](https://en.wikipedia.org/wiki/Supervised_learning)

In supervised learning, each observation of the predictor measurement(s) corresponds to a response measurement. There are two flavors of supervised learning: regression and classification. In regression, the response is a real number such as the total net sales in 2017, or the yield of corn next year. The goal is to approximate the response measurement as much as possible. In classification, the response is a class label, such as dichotomous response such as yes/no. The response can also have more than two categories, such as four segments of customers. A supervised learning model is a function that maps some input variables with corresponding parameters to a response y. Modeling tuning is to adjust the value of parameters to make the mapping fit the given response. In other words, it is to minimize the discrepancy between given responses and the model output. When the response y is a real value, it is intuitive to define discrepancy as the squared difference between model output and given the response. When y is categorical, there are other ways to measure the difference, such as AUC or information gain.

(2) [Unsupervised learning](https://en.wikipedia.org/wiki/Unsupervised_learning)

In unsupervised learning, there is no response variable. For a long time, the machine learning community overlooked unsupervised learning except for one called clustering. Moreover, many researchers thought that clustering was the only form of unsupervised learning. One reason is that it is hard to define the goal of unsupervised learning explicitly. Unsupervised learning can be used to do the following:

- Identify a good internal representation or pattern of the input that is useful for subsequent supervised or reinforcement learning, such as finding clusters.
- It is a dimension reduction tool that is to provide compact, low dimensional representations of the input, such as factor analysis.
- Provide a reduced number of uncorrelated learned features from original variables, such as principal component regression.

(3) Customized model development

In most of the cases, you just need to use the out of the box algorithms to solve the problem. But in some situations, there isn't enough data to use machine learning model, or the question doesn't fit neatly in the specifications of existing tools, or the model needs to incorporate some prior domain knowledge . You may need to develop new models to accommodate the subtleties of the problem at hand. For example, people use bayesian models to include domain knowledge as prior distribution.

## What others?

There are some common skills to have regardless the role people have in data science.

### Data Preprocessing: the process nobody wants to go through yet nobody can avoid

No matter what role you hold in data science team, you will have to do some data cleaning which tend not to be the favorite part of anyone's job. Data preprocessing is the process of converting raw data into clean data that is proper for use.

(1) Data preprocessing for data engineer

Getting data together from different sources and dumping them to a [Data Lake](https://en.wikipedia.org/wiki/Data_lake), a dumping ground of amorphous data, is far from the data schema analyst and scientist would use. A data lake is a storage repository that stores a vast amount of raw data in its native format, including XML, JSON, CSV, Parquet, etc. It is a data cesspool rather than data lake. It is data engineer's job to get a clean schema out of the data lake by transforming and formatting the data. Some common problems to resolve are:

- Enforce new tables' schema to be the desired one
- Repair broken records in newly inserted data
- Aggregate the data to form the tables with a proper granularity

(2) Data preprocessing for data analyst and scientist

Not just for data engineer, it also occupies a large fraction of data analyst and scientist's working hours too. A facility and a willingness to do these tasks are a prerequisite for a strong data scientist. If you are lucky as a data scientist, you may end up spending 50% of your time doing this. If you are like most of us, you will spend over 80% of your working hours wrangling data.

The data you get can still be very rough even it is from a nice and clean database that engineers set up. Dates and times are notorious for having many representations and time zone ambiguity. You may also get market survey responds from your clients in an excel file where the table title could be multi-line, or the format does not meet the requirements, such as using 50% to represent the percentage rather than 0.5. So in many cases, you need to set the data to be the right format before moving on to analysis.

Even the data is in the right format, there are other issues to solve before or during analysis. For example, variables can have missing values. Knowledge about the data collection process and what it will be used for is necessary to decide a way to handle the missing. Also, different models have different requirements on the data. For example, some model may require the variables are of consistent scale; some may be susceptible to outliers or collinearity, some may not be able to handle categorical variables and so on. The modeler has to preprocess the data to make it proper for the specific model.

# What kind of questions can data science solve?

Prerequisites

Data science is not a panacea and there are problems data science can't help. It is best to make a judgment as early in the analytical cycle as possible. Tell your clients honestly and clearly when you think data analytics can't give the answer they want. What kind of questions can data science solve?

1. Your question needs to be specific enough

    Look at two examples:
    
    - Question 1: How can I increase product sales?
    - Question 2: Is the new promotional tool introduced at the beginning of this year boosting the annual sales of P1197 in Iowa and Wisconsin? (P1197 is an impressive corn seed product from DuPont Pioneer)
    
    It is easy to see the difference between the two questions. Question 1 is a grammatically correct question, but it is proper for data analysis to answer. Why? It is too general. What is the response variable here? Product sales? Which product? Is it annual sales or monthly sales? What are the candidate predictors? You nearly can't get any useful information from the questions. In contrast, question 2 is much more specific. From the analysis point of view, the response variable is clearly "annual sales of P1197 in Iowa and Wisconsin". Even we don't know all the predictors, but the variable of interest is "the new promotional tool introduced early this year." We want to study the impact of the promotion of sales. You can start from there and move on to figure out other variables need to include in the model by further communication.
    
    As a data scientist, you may start with something general and unspecific like question 1 and eventually get to question 2. Effective communication and in-depth domain knowledge about the business problem are essential to convert a general business question into a solvable analytical problem. Domain knowledge helps data scientist communicate with the language the other people can understand and obtain the required information.
    
    However, defining the question and variables involved won't guarantee that you can answer it. For example, I encountered this situation with a well-defined supply chain problem. My client asked me to estimate the stock needed for a product in a particular area. Why can't this question be answered? I tried fitting a [Multivariate Adaptive Regression Spline](https://en.wikipedia.org/wiki/Multivariate_adaptive_regression_spline) (MARS) model and thought I found a reasonable solution. But it turned out later that the data my client gave me was inaccurate. In this case, only estimates rather than actual values of past supply figures were available and there was no way to get accurate data. The lesson lends itself to the next point.

2. You need to have sound and relevant data

    One cannot make a silk purse out of a sow's ear. Data scientists need data, sound and relevant data. The supply problem is a case in point. There was relevant data, but not sound. All the later analytics based on that data was a building on sand. Of course, data nearly almost have noise, but it has to be in a certain range. Generally speaking, the accuracy requirement for the independent variables of interest and response variable is higher than others. In question 2, it is data related to the "new promotion" and "sales of P1197".
    
    The data has to be helpful for the question. If you want to predict which product consumers are most likely to buy in the next three months, you need to have historical purchasing data: the last buying time, the amount of invoice, coupons and so on. Information about customers' credit card number, ID number, the email address is not going to help.
    
    Often the quality of the data is more important than the quantity, but the quantity cannot be overlooked. In the premise of guaranteeing quality, usually the more data, the better. If you have a specific and reasonable question, also sound and relevant data, then congratulations, you can start playing data science!

## Problem type

Many of the data science books classify the various models from a technical point of view. Such as supervised vs. unsupervised models, linear vs. nonlinear models, parametric models vs. non-parametric models, and so on. Here we will continue on "problem-oriented" track. We first introduce different groups of real problems and then present which models can be used to answer the corresponding category of questions.

1. Description

    The basic analytic problem is to summarize and explore a data set with descriptive statistics (mean, standard deviation, and so forth) and visualization methods. It is the simplest problem and yet the most crucial and common one. You will need to describe and explore the dataset before moving on to more complex analysis. In the problem such as customer segmentation, after you cluster the sample, the next step is to figure out the profile of each class by comparing the descriptive statistics of the various variables. Questions of this kind are:
    
    - How does the annual income distribute?
    - Are there outliers?
    - What are the mean active days of different accounts?
    
    Data description is often used to check data, find the appropriate data preprocessing method, and demonstrate the model results.

2. Comparison

    The first common problem is to compare different groups. Such as: Is A better in some way than B? Or more comparisons: Is there any difference among A, B, and C in a particular aspect? Here are some examples:
    
    - Are males more inclined to buy our products than females?
    - Are there any differences in customer satisfaction in different business districts?
    - Do soybean carrying a particular gene have higher oil content?
    
    For those problems, it is usually to start exploring from the summary statistics and visualization by groups. After a preliminary visualization, you can test the differences between treatment and control group statistically. The commonly used statistical tests are chi-square test, t-test, and ANOVA. There are also methods using Bayesian methods. In biology industry, such as new drug development, crop breeding, mixed effect models are the dominant technique.

3. [Clustering](https://en.wikipedia.org/wiki/Cluster_analysis)

    Clustering is a widespread problem, which is usually related to classification. Clustering answers questions like:
    
    - Which customers have similar product preference?
    - Which printer performs a similar pattern to the broken ones?
    - How many different themes are there in the corpus?
    
    Note that clustering is unsupervised learning. The most common clustering algorithms include K-Means and Hierarchical Clustering.

4. [Classification](https://en.wikipedia.org/wiki/Statistical_classification)

    Usually, a labeled sample set is used as a training set to train the classifier. Then the classifier is used to predict the category of a future sample. Here are some example questions:
    
    - Who is more likely to buy our product?
    - Is the borrower going to pay back?
    - Is it spam?
    
    There are hundreds of classifiers. In practice, we do not need to try all the models but several models that perform well generally.

5. [Regression](https://en.wikipedia.org/wiki/Regression_analysis)

    In general, regression deals with the problem of "how much is it?" and return a numerical answer. In some cases, it is necessary to coerce the model results to be 0, or round the result to the nearest integer. It is the most common problem.
    
    - What will be the temperature tomorrow?
    - What is the projected net income for the next season?
    - How much inventory should we have?