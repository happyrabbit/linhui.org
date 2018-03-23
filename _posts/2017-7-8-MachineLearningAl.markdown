---
title: Types of Machine Learning Algorithm
author: "Hui Lin"
date: "Jul 8, 2017"
layout: post
---

<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">Hui Lin </p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">
<a href="https://twitter.com/gossip_rabbit">Follow me on Twitter</a></p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">
<a href="https://github.com/happyrabbit">Github</a></p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">2017-07-08</p>


# Types of Machine Learning Algorithm

![](http://scientistcafe.com/book/Figure/AlogrithmTypes.png)

The categorization here is based on the structure (such as tree model, Regularization Methods) or type of question to answer (such as regression).The summary of various algorithms for data science in this section is based on Jason Brownlee's blog "(A Tour of Machine Learning Algorithms)[http://machinelearningmastery.com/a-tour-of-machine-learning-algorithms/]." I added and subtracted some algorithms in each category and gave additional comments. It is far less than perfect but will help to show a bigger map of different algorithms. Some can be legitimately classified into multiple categories, such as support vector machine (SVM) can be a classifier, and can also be used for regression. So you may see other ways of grouping. Also, the following summary does not list all the existing algorithms (there are just too many). 


1. Regression

Regression can refer to the algorithm or a particular type of problem. It is supervised learning. Regression is one of the oldest and most widely used statistical models. It is often called the statistical machine learning method. Standard regression models are:

- Ordinary Least Squares Regression
- Logistic Regression
- Multivariate Adaptive Regression Splines (MARS)
- Locally Estimated Scatterplot Smoothing (LOESS)

The least squares regression and logistic regression are traditional statistical models. Both of them are highly interpretable. MARS is similar to neural networks and partial least squares (PLS) in the respect that they all use surrogate features instead of original predictors.  

They differ in how to create the surrogate features. PLS and neural networks use linear combinations of the original predictors as surrogate features ^[To be clear on neural networks, the linear combinations of predictors are put through non-linear activation functions, deeper neural networks have many layers of non-linear transformation]. MARS creates two contrasted versions of a predictor by a truncation point. And LOESS is a non-parametric model, usually only used in visualization.

2. Similarity-based Algorithms

This type of model is based on a similarity measure. There are three main steps: (1) compare the new sample with the existing ones; (2) search for the closest sample; (3) and let the response of the nearest sample be used as the prediction. 

-   K-Nearest Neighbour [KNN]
-   Learning Vector Quantization [LVQ]
-   Self-Organizing Map [SOM]

The biggest advantage of this type of model is that they are intuitive.  K-Nearest Neighbour is generally the most popular algorithm in this set.  The other two are less common.   The key to similarity-based algorithms is to find an appropriate distance metric for your data.

3. Feature Selection Algorithms

The primary purpose of feature selection is to exclude non-information or redundant variables and also reduce dimension. Although it is possible that all the independent variables are significant for explaining the response. But more often, the response is only related to a portion of the predictors. We will expand the feature selection in detail later. 

- Filter method
- Wrapper method
- Embedded method

Filter method focuses on the relationship between a single feature and a target variable. It evaluates each feature (or an independent variable) before modeling and selects "important" variables. 

Wrapper method removes the variable according to particular law and finds the feature combination that optimizes the model fitting by evaluating a set of feature combinations. In essence, it is a searching algorithm.

Embedding method is part of the machine learning model.  Some model has built-in variable selection function such as lasso, and decision tree. 

4. Regularization Method

This method itself is not a complete model, but rather an add-on to other models (such as regression models). It appends a penalty function on the criteria used by the original model to estimate the variables (such as likelihood function or the sum of squared error). In this way, it penalizes model complexity and contracts the model parameters. That is why people call them "shrinkage method." This approach is advantageous in practice. 

-  Ridge Regression
-  Least Absolute Shrinkage and Selection Operator (LASSO)
-  Elastic Net

5. Decision Tree

Decision trees are no doubt one of the most popular machine learning algorithms. Thanks to all kinds of software, implementation is a no-brainer which requires nearly zero understanding of the mechanism. The followings are some of the common trees: 

-  Classification and Regression Tree (CART)
-  Iterative Dichotomiser 3 (ID3)
-  C4.5
-  Random Forest
-  Gradient Boosting Machines (GBM)

6. Bayesian Models

People usually confuse Bayes theorem with Bayesian models. Bayes theorem is an implication of probability theory which gives Bayesian data analysis its name. 

$$Pr(\theta|y)=\frac{Pr(y|\theta)Pr(\theta)}{Pr(y)}$$

The actual Bayesian model is not identical to Bayes theorem. Given a likelihood, parameters to estimate, and a prior for each parameter, a Bayesian model treats the estimates as a purely logical consequence of those assumptions. The resulting estimates are the posterior distribution which is the relative plausibility of different parameter values, conditional on the observations.
The Bayesian model here is not strictly in the sense of Bayesian but rather model using Bayes theorem. 

- Naïve Bayes
- Averaged One-Dependence Estimators (AODE)
- Bayesian Belief Network (BBN)

7.  Kernel Methods    

The most common kernel method is the support vector machine (SVM). This type of algorithm maps the input data to a higher order vector space where classification or regression problems are easier to solve.

- Support Vector Machine (SVM)
- Radial Basis Function (RBF)
- Linear Discriminate Analysis  (LDA)

8. Clustering Methods

Like regression, when people mention clustering,  sometimes they mean a class of problems, sometimes a class of algorithms. The clustering algorithm usually clusters similar samples to categories in a centroidal or hierarchical manner. The two are the most common clustering methods:

- K-Means
- Hierarchical Clustering

9. Association Rule

The basic idea of an association rule is: when events occur together more often than one would expect from their rates of occurrence, such co-occurrence is an interesting pattern.  The most used algorithms are: 

-  Apriori algorithm
-  Eclat algorithm

10. Artificial Neural Network

The term neural network has evolved to encompass a repertoire of models and learning methods. There has been lots of hype around the model family making them seem magical and mysterious.  A neural network is a two-stage regression or classification model.  The basic idea is that it uses linear combinations of the original predictors as surrogate features, and then the new features are put through non-linear activation functions to get hidden units in the 2nd stage. When there are multiple hidden layers, it is called deep learning, another over hyped term. Among varieties of neural network models, the most widely used "vanilla" net is the single hidden layer back-propagation network. 

- Perceptron Neural Network
- Back Propagation
- Hopield Network
- Self-Organizing Map (SOM)
- Learning Vector Quantization (LVQ)

11. Deep Learning

The name is a little misleading. As mentioned before, it is multilayer neural network. It is hyped tremendously especially after AlphaGO defeated Li Shishi at the board game Go. We don't have too much experience with the application of deep learning and are not in the right position to talk more about it. Here are some of the common algorithms:

<!--Many of the deep learning algorithms are semi-supervised learning algorithms that deal with large datasets with a few unlabeled samples. -->

<!-- Alex's comments:
There are many different types of deep learning applications, some are supervised (computer vision image classification), some are reinforcement learning (I think I read that a lot of game AIs use this, such as bots to beat games like Super Mario), and can also be used to build features in an unsupervised way (autoencoders).  There is a lot of hype in this topic but I think deep learning differentiates itself from earlier ANN because of many recent advancements that make it possible to have very large and very deep networks: backprop, new ways to initialize weights, dropout etc.-->

- Restricted Boltzmann Machine (RBN)
- Deep Belief Networks (DBN)
- Convolutional Network
- Stacked Autoencoders
- Long short-term memory (LSTM)

12. Dimensionality Reduction

Its purpose is to construct new features that have significant physical or statistical characteristics, such as capturing as much of the variance as possible.

- Principle Component Analysis (PCA)
- Partial Least Square Regression (PLS)
- Multi-Dimensional Scaling (MDS)
- Exploratory Factor Analysis (EFA)

PCA attempts to find uncorrelated linear combinations of original variables that can explain the variance to the greatest extent possible. EFA also tries to explain as much variance as possible in a lower dimension. MDS maps the observed similarity to a low dimension, such as a two-dimensional plane.  Instead of extracting underlying components or latent factors, MDS attempts to find a lower-dimensional map that best preserves all the observed similarities between items. So it needs to define a similarity measure as in clustering methods. 

13. Ensemble Methods

Ensemble method made its debut in the 1990s. The idea is to build a prediction model by combining the strengths of a collection of simpler base models.  Bagging, originally proposed by Leo Breiman, is one of the earliest ensemble methods. After that, people developed Random Forest [@Ho1998; @amit1997] and Boosting method [@Valiant1984; @KV1989]. This is a class of powerful and effective algorithms.

- Bootstrapped Aggregation (Bagging)
- Random Forest
- Gradient Boosting Machine (GBM)