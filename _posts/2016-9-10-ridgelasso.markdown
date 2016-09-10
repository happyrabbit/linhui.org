---
title: "为什么lasso有变量选择功能而ridge没有？"
author: "Hui Lin"
date: "September 10, 2016"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

可能有人会问从岭回归到lasso，只是罚函数从二阶范数变成一阶范数，为什么lasso就能够将参数估计收缩成0而岭回归不能呢？要回答这个问题，我们先看下lasso和岭回归分别对应的另一版本的等价优化方程。对于lasso而言，优化下面两个方程是等价的：

$$\Sigma_{i=1}^{n}(y_{i}-\beta_{0}-\Sigma_{j=1}^{p}\beta_{j}x_{ij})^{2}+\lambda\Sigma_{j=1}^{p}|\beta_{j}|=RSS+\lambda\Sigma_{j=1}^{p}|\beta_{j}|$$

$$\underset{\beta}{min}\left\{ \Sigma_{i=1}^{n}\left(y_{i}-\beta_{0}-\Sigma_{j=1}^{p}\beta_{j}x_{ij}\right)^{2}\right\} ,\ \Sigma_{j=1}^{p}|\beta_{j}|\leq s$$

也就是说，对每个调优参数$\lambda$的取值，都存在相应的$s$值，使得上面两个方程优化后得到的参数估计相同。类似的，对于岭回归，下面两个方程等价：

$$\Sigma_{i=1}^{n}(y_{i}-\beta_{0}-\Sigma_{j=1}^{p}\beta_{j}x_{ij})^{2}+\lambda\Sigma_{j=1}^{p}\beta_{j}^{2}=RSS+\lambda\Sigma_{j=1}^{p}\beta_{j}^{2}$$

$$\underset{\beta}{min}\left\{ \Sigma_{i=1}^{n}\left(y_{i}-\beta_{0}-\Sigma_{j=1}^{p}\beta_{j}x_{ij}\right)^{2}\right\} ,\ \Sigma_{j=1}^{p}\beta_{j}^{2}\leq s$$

当p＝2时，lasso的参数估计是所有满足$|\beta_{1}|+|\beta_{2}|\leq s$的$\beta_{1}$和$\beta_{2}$取值中最小化$RSS$的。岭回归是估计所有满足$\beta_{1}^{2}+\beta_{2}^{2}\leq s$的参数取值中最小化$RSS$的。当s很大时，相应的限制条件几乎是无效的，只要参数估计能够最小化$RSS$即使绝对值很大也没有问题。只要s所定义的区域包含最小二乘解，那么收缩方法得出的参数估计和一般最小二乘回归就相同。相反，如果s很小，那么可能的参数取值范围就很有限。

了解这样的等价表达之后，我们再看看岭回归和lasso的不同之处。

![左边是lasso对应的误差等位线和正方形限制区域，右边是岭回归对应的等位线和圆形限制区域](/Users/happyrabbit/Documents/GitHub/linhui.org/book/Figure/LassoRidge.png)

上面图中围绕在$\hat{\beta}$周围的椭圆表示有相同RSS的参数估计。随着椭圆的扩大，对应的RSS增加。lasso和岭回归的估计值就是在一定的限制区域下，椭圆不断扩张的过程中和限制区域的第一个接触点。大家想想看，如果有某个参数的估计是0的话，那么这个接触点该在哪里？一定在某条坐标轴上。由于岭回归的限制区域是圆形，所以真正的触点无法落在坐标轴上，可能无限接近，但就是到不了。这就是求之而不可得的数学诠释。所以岭回归无法将参数收缩成0，而lasso可以。

上面是2个参数的情况。如果参数个数是3的话，那么lasso的限制区域就是一个三位空间的多面体，而岭回归的限制区域就是个球。参数个数再增加的话，就得让科幻小说家来描述了。希望大家理解lasso可以进行变量选择，而岭回归不行的几何解释。