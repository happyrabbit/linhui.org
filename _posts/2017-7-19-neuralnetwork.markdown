---
title: Demystify Neural Network
author: "Hui Lin"
date: "Jul 19, 2017"
layout: post
---

<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">Hui Lin </p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">
<a href="https://twitter.com/gossip_rabbit">Follow me on Twitter</a></p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">
<a href="https://github.com/happyrabbit">Github</a></p>
<p style="font-family: serif; margin:0; font-size:14pt; font-style:italic">2017-07-19</p>

# Demystify Neural Network

Neural Network and its derivatives are so far the most hyped models. Those models sound fancy and mysterious, 
but it is no more than a button push in the implementation (thanks to all kinds of software). 
They require nearly no data preprocessing, and the users do not need to understand the reason behind the algorithms.  
People usually react to things they do not understand in two ways: deification and demonization. 
The black box model is the first case.  
This post will illustrate the basic mathematical background of the neural network, 
what need to pay attention when using it and how to use R to train the neural network model. 
Hope it will help to demystify neural network in some degree.  
Many models are like T stage exaggerated clothes, they look fancy but not necessarily practical in real life.

- [Projection Pursuit Regression](http://scientistcafe.com/post/nnet.html#01_projection_pursuit_regression)
- [Neural Networks](http://scientistcafe.com/post/nnet.html#02_neural_networks)
- [Fitting Neural Network](http://scientistcafe.com/post/nnet.html#03_fitting_neural_network)
- [Model Training](http://scientistcafe.com/post/nnet.html#04_model_training)
- [Computation in R](http://scientistcafe.com/post/nnet.html#05_computation_in_r)
    - [General Neural Network](http://scientistcafe.com/post/nnet.html#051_general_neural_network)
    - [Averaged Neural Network](http://scientistcafe.com/post/nnet.html#052_averaged_neural_network)
    - [Model Comparison](http://scientistcafe.com/post/nnet.html#053_model_comparison)

