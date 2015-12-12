---
title: "神马是数据科学家？"
author: "林荟"
date: "Saturday, December 12, 2015"
output: 
 html_document:
  theme: united
  highlight: tango
  toc: true
  toc_depth: 5
---

## 前言

今天在COS沙龙上介绍了数据科学家这个职业。很感谢所有参加沙龙的小伙伴们：-）下面是关于这个话题的文字内容，除了报告所讲之外这里还有一些补充，以及相关参考资料。

数据科学和数据科学家成为了流行词汇。当有人问你干什么，你回答说数据科学家。对方会恍然大悟，觉得特别高大上，奥，数据科学家啊，听说过。是啊，没听说过数据科学家那就out了。如果接着问，数据科学家具体干什么的？然后就没有然后了。不知道你们有没有听过这样一则轶事，美国最高法院法官Potter Stewart被问到什么是淫秽时，他回答：“看下才知道。”这和数据科学很类似，很多概念，在大而化之的时候都可以存在，大家口耳相传，聊的不亦乐乎，但一追究细节，立即土崩瓦解。在这里我想将数据科学家这个行业具体化，让大家看看数据科学家都干什么，需要哪些技能，目前北美的数据科学家教育背景是什么？哪些行业需要数据科学家？数据科学家在北美的就业形势如何？希望能对各位有启发，还原一个有血有肉的数据科学家。

这个行业定义很模糊。因为看国内很多朋友都用知乎，于是两个月前我也注册了一个知乎帐号，但之后就忘了。直到有一天突然收到一封邮件，说什么点名回答，问题是：“我国CPI是如何计算的？”算CPI、GDP什么的那是神仙干的事，不该问数据科学家。我当时就觉得这个行业的定义真是挺浑的。于是我谷歌了一下数据科学家的定义，下面是其中的一些：

     1. 住在加州的数据分析师 [Data analyst who lives in California]
     2. 数据科学家是商业（数据）分析师的进化版 [A data scientist represents an evolution from the business or data analyst role.]
     3. 比软件学家更懂统计，比统计学家更懂软件科学的人 [Person who is better at statistics than any software engineer and better at software engineering than any statistician.]
     4. 拥有出众数据分析能力的BI咨询师，尤其是能用大量数据增加商业竞争力的人 [A data scientist is a job title for an employee or business intelligence (BI) consultant who excels at analyzing data, particularly large amounts of data, to help a business gain a competitive edge.]
     5. 会编程，懂统计，能通过多种方式从数据中掘金的人 [Data Scientists are people with some mix of coding and statistical skills who work on making data useful in various ways.]
     
此外，很多其它职位其职责都和“从数据中获取信息”有关，比如：数据分析师，BI咨询师，统计学家，金融分析师、商业分析师，预测分析师......这些不同职业有什么区别？即便都是数据科学家，教育背景等等也是千差万别。由于媒体的炒作，现在大部分商业领域所谓的分析，大部分都到不了“科学”的程度，而是加减乘除游戏。这些不同的职位要求有何不同？总的来说：  

     - 金融分析师一般有金融方向的MBA学位。他／她会用电子表格，知道会计软件，分析各部门的预算数据，分析实际经营结果和预测之间的差别，做一些预测，但这里的预测不会涉及复杂的机器学习，统计模型。  
     - 数据分析师一般有MBA学位，有一些计算机背景，很擅长使用电子表格，会用高阶的电子表格编程功能如VBA，自定义函数，宏。根据情况，会使用一些BI的软件，如Tableau，主要都是用鼠标点拖的方式。会用SQL从数据库中读取数据。我所见的商业分析师拥有很少（或没有）统计知识。所以这部分人有处理数据的知识，但是没有统计学的知识，能做的分析非常有限。
     - 统计学家一般多在药厂，生物技术公司，做一些非常传统的混合效应模型，方差分析等生物统计分析。由于行业要求，多用SAS而非开源软件R。
     - BI咨询师，一般也是工商管理专业，有MBA学位，受传统的商学院教育（熟悉4Ps或6Ps,4Cs, 使用SWOT法分析市场），熟练使用电子表格，很少或没有其它技术背景。
     - 数据科学家，多是数学／统计，计算机，工程学专业出身，会使用R,Python等多种编程语言，熟悉数据可视化。大多数在入职前没有太多市场营销知识。掌握高等概率统计，熟悉如下概念：抽样，概率分布，假设检验，方差分析，拟合优度检验，回归，时间序列预测模型，非参数估计，实验设计，决策树，马尔可夫链，贝叶斯统计（很快就能在白板上写下贝叶斯定理）

上面只是一些大致的分析行业状况。下面我会着眼于数据科学家这个职位。

数据科学家都分布在那些行业呢？下图来自Burtch Works Executive Recruiting在2015年4月发布的“Salaries of Data Scientists”报告[之后的调查结果都来自该报告]，展示了各行业雇佣数据科学家的分布：

![](http://hui1987.com/COS_2015_12_12/DataScientistIndustry.png)

其中各个行业定义如下：

- Technology/Telecom: 提供科技服务产品的公司，如电脑，软件，以及提供电子通讯服务的（dropbox, skype, facebook, twitter, microsoft, apple, google）
- Marketing Services: 为其它公司提供商业服务的，比如广告，市场调查，市场分析
- Corporate-Other: 其余公司，如航空公司，娱乐传媒
- Consulting: 咨询公司，波斯顿，麦肯锡等
- Healthcare/Pharmaceuticals: 医疗机构和药厂，如医院
- Financial Services: 提供金融服务的，如借贷，风险管理服务，如银行，保险公司，信用卡组织机构
- Government: 政府部门，如国防部，国家科技实验室
- Academia: 学术界（公立／私立大学，非营利教育机构）
- Retail & CPG: 零售业（如沃尔玛），CPG (consumer packaged goods) 指代那些快速销售低成本产品的行业
- Gaming: 电子游戏公司
     
该结果显示，科技公司（包括互联网）是数据科学家最大的雇主。图中并未显示，但在原报告中有提到2014年创业公司雇佣了29.4%的数据科学家，2015年这个比例降至14.3%，原因不是创业公司招的数据科学家职位少了，而是大公司招入的数据科学家增长迅速，整体基数变大。总体来说数据科学家就业前景是非常好的。

什么时候开始有数据科学家这个职位？

![](http://hui1987.com/COS_2015_12_12/DataScientistYear.png)

大部分数据科学家（70%）工作经验小于10年。数据科学还是个很年轻的行业。到这里，大家对数据科学领域应该有个大致的感觉了。下面试图进一步对其定义。

## 什么是数据科学

> 数据科学=数据+科学
> 数据科学家=数据+科学+艺术家=用数据和科学从事艺术创作的人

科学家需要不断学习，数据科学家是一个需要终身学习职业，很多职业都要求这一点，但我想强度不一样。当然，你进入这个领域之前有一个门槛要跨过去，有些基本的技能需要掌握，其中很重要的是交叉技能。这和科研不一样，要有价值，必须得和某个领域结合。从数据中得到的结果要转化成相关行业的具体知识，用该行业的语言交流分析结果，这就是艺术的部分，需要一点想象力。上面这个定义听起来非常高大上，感觉自己是个文艺女青年。其实也可以用一种很土的方式表达。

> 数据科学=从数据中得到问题答案的科学
> 数据科学家=通过 **科学** 方法从 **数据** 中得到 _**有实际意义**_ 的问题答案的人

这里，要让答案有实际意义就超出科学的范畴了。尤其在市场当中需要和人打交道，你结果交付的对象也基本是一些0技术背景的根正苗红市场营销出身的人，没有一点艺术是不行的。

下面我具体说说数据科学家都解决哪些问题，以及用什么方法，这样大家可以更好的理解数据科学家需要的技能。当然，巧妇难为无米之炊，老古人的话放在那里时刻闪闪发光。艺术源于生活，所以你要有数据，之所以数据科学会火也是因为计算机的发展，使数据的收集更容易。这些背后的科学，是那些数学家，统计学家在近50年勤勤恳恳琢磨出来的。科学是需要时间研究的，不会因为突然可以收集储存数据了就冒出一门科学。数据本身是没有价值的，其价值在于你如何使用数据。David Donoho的论文“50 Years of Data Science”此做了非常精彩的介绍。

##  数据科学家都干些什么？

下面是我根据从业经验总结出的从得到问题到通过数据解决问题的一般过程：

![](http://hui1987.com/COS_2015_12_12/DataAnalysisProcess.png)

数据科学家在组织内要能有价值需要这几步：

1. 从问题到数据
1. 从数据到信息
1. 从信息到知识

业界，尤其是市场营销部门普遍反映数据科学家欠缺将数据中的信息转化为商业知识的能力，大部分数据科学家止于从数据到信息这一步。那什么是从信息到知识呢？这个需要你对所在行业有较深入的了解，具有应用该行业说故事的能力。这是我之前提到的艺术的部分。
数据预处理非常关键，这一步骤占用相当大比例的时间。关于数据处理的常用方法，大家可以参考我之前写的一篇博文。今年11月份在我们州的一个R沙龙上详细的讲过这些方法。这里要提一点，不同模型对数据要求不一样，回归模型，以及带有罚函数的模型通常要求变量度量尺度一致，对缺失值敏感。但是树模型变量的度量和缺失值相当稳健，不受影响。

David Donoho在 "50 Years of Data Science" 还提到“数据科学的科学”，指将数据科学的流程本身当作科学研究。感兴趣的可以去看看这篇论文，很精彩。

- 预测模型
     - 商业问题：预测客户行为，销量
     - 基于罚函数的模型（Lasso，Group Lasso）: 今年在西雅图的统计年会上有个互联网行业的专场，其中来自facebook的一个数据科学家提到什么模型最有用时反复的说：罚函数模型，罚函数模型，罚函数模型......我当时特别想问他是不是周围都是中国同事，所以知道我们现在流行一句话叫做，重要的事情说三遍
     - Step-AIC线性回归/随机森林/支持向量机
     
- 客户分组

这是经典的市场研究问题，市场分组的目标是寻找在产品兴趣，市场参与度或营销反应的重要方面有显著差异的客户群。通过了解组间的不同，市场营销人员可以对机会，产品定义和定位做出更好的策略，并且能够开展更加有效的促销活动。  
客户分组项目中存在的困难：找到商业上可执行的结果。保证数据分析的结果具有价值是非常重要的，需要大量的沟通，从营销人员那里获取反馈，然后修改。

![](http://hui1987.com/COS_2015_12_12/Segmentation.png)

### 商业活动分析

- 哪个促销项目管用？
- 联系消费者能提高转化率和忠诚度么？
- 哪种折扣的认可度最高？

### 品牌认知

- 结构方程模型, IRT (R包：psych, lavann, sem)

结构模型适用于如下情况：需要评估若干观测变量之间的关系，但是划分为预测变量和结果变量的建模方式（如线性回归模型）无法解决问题；希望在模型中加入无法被直接观测的隐变量，如不同的态度以及它们之间的相互关系或它们和可观测变量间的关系；希望评估数据观测和所提出的有隐变量或复杂连结关系的模型之间的总体拟合程度。从该角度上看，结构模型和线性模型（因为其估计变量之间关系和模型拟合度）以及因子分析（因为其使用隐变量）都很相像。

结构模型符合市场分析的需要。例如，可以用模型决定抽样调查的观念和假设是否符合，如评估某项的结果是否和研究者希望的潜在解释相关；这是因子分析的扩展。对隐变量，可以用模型估计结果之间的关联，如购买行为和潜在影响这些行为的购买态度（如满意度、品牌感知）。如果模型再复杂一点可以同时有彼此以不同方式相关的若干隐变量。例如，品牌感知，购买目的，支付意愿和满意度这些隐变量彼此相关的结构，同时它们以不同方式和观测的消费者行为有关（如购买）。


```r
loadings<-matrix(c(
  0.33, 0.60, 0.00, 0.00, # 预定容易度
  0.35, 0.55, 0.00, 0.00, # 座位供给
  0.30, 0.52, 0.00, 0.00, # 航班选项
  0.40, 0.50, 0.00, 0.00, # 票价
  0.50, 0.00, 0.55, 0.00, # 舒适度
  0.41, 0.00, 0.51, 0.00, # 座位空间
  0.45, 0.00, 0.57, 0.00, # 行李存放空间
  0.32, 0.00, 0.54, 0.00, # 机舱卫生
  0.35, 0.00, 0.00, 0.50, # 礼貌度
  0.38, 0.00, 0.00, 0.57, # 友善度
  0.60, 0.00, 0.00, 0.50, # 提供帮助
  0.52, 0.00, 0.00, 0.58, # 服务
  0.43, 0.10, 0.20, 0.30, # 总体满意度
  0.35, 0.50, 0.40, 0.20, # 购买意愿
  0.25, 0.50, 0.50, 0.00),# 推荐度
nrow=15, ncol=4, byrow=T)
# 得到相关矩阵
cor_matrix<-loadings%*%t(loadings)
# 设置对角线值为1
diag(cor_matrix)<-1
library(mvtnorm)
N=1000
set.seed(2015)
std_ratings<-as.data.frame(rmvnorm(N, sigma=cor_matrix))

ratings<-data.frame(matrix(rep(0,15000),nrow=1000))
ratings[1:50,]<-std_ratings[1:50,]*2
ratings[51:1000,]<-std_ratings[51:1000,]*2+7
ratings[1]<-ratings[1]+2.2
ratings[2]<-ratings[2]+0.6
ratings[3]<-ratings[3]+0.3
ratings[4]<-ratings[4]+0.0
ratings[5]<-ratings[5]+1.5
ratings[6]<-ratings[6]+1.0
ratings[7]<-ratings[7]+0.5
ratings[8]<-ratings[8]+1.5
ratings[9]<-ratings[9]+2.4
ratings[10]<-ratings[10]+2.2
ratings[11]<-ratings[11]+2.1
ratings[12]<-ratings[12]+2.0
ratings[13]<-ratings[13]+1.5
ratings[14]<-ratings[14]+1.0
ratings[15]<-ratings[15]+0.5
# 将分值限定在1-9之间
ratings[ratings>9]<-9
ratings[ratings<1]<-1
# 化为整数
ratings<-round(ratings,0)

names(ratings)<-c("Easy_Reservation",
                  "Preferred_Seats",
                  "Flight_Options",
                  "Ticket_Prices",
                  "Seat_Comfort",
                  "Seat_Roominess",
                  "Overhead_Storage",
                  "Clean_Aircraft",
                  "Courtesy",
                  "Friendliness",
                  "Helpfulness",
                  "Service",
                  "Satisfaction",
                  "Fly_Again",
                  "Recommend")
str(ratings)
```

```
## 'data.frame':	1000 obs. of  15 variables:
##  $ Easy_Reservation: num  1 3 3 3 1 3 4 2 1 1 ...
##  $ Preferred_Seats : num  1 1 3 1 3 1 1 1 1 1 ...
##  $ Flight_Options  : num  1 1 1 3 3 1 1 1 1 1 ...
##  $ Ticket_Prices   : num  1 1 1 1 1 2 1 2 1 1 ...
##  $ Seat_Comfort    : num  2 1 2 5 1 1 1 1 1 1 ...
##  $ Seat_Roominess  : num  2 1 2 5 1 4 1 1 1 2 ...
##  $ Overhead_Storage: num  1 1 4 4 1 1 1 1 1 1 ...
##  $ Clean_Aircraft  : num  3 1 4 4 1 1 1 1 1 1 ...
##  $ Courtesy        : num  1 2 4 3 1 1 1 3 2 5 ...
##  $ Friendliness    : num  4 1 1 4 2 1 1 5 2 4 ...
##  $ Helpfulness     : num  3 1 4 5 1 1 1 1 1 3 ...
##  $ Service         : num  1 1 3 4 3 1 1 2 1 5 ...
##  $ Satisfaction    : num  2 1 2 5 2 1 1 1 1 2 ...
##  $ Fly_Again       : num  2 1 1 2 1 2 1 2 1 1 ...
##  $ Recommend       : num  1 4 1 3 1 1 1 1 1 1 ...
```

```r
library(psych)
pa<-fa(ratings[,1:12],nfactors=3,rotate="oblimin",fm="pa")
```

```
## Loading required namespace: GPArotation
```

```r
# Create the diagram with arrows for factors loadings greater than .3
fa.diagram(pa,cut=0.3,digits=2,main="Oblique Factor Model")
```

<img src="WhatIsDataScientist_files/figure-html/unnamed-chunk-1-1.png" title="" alt="" width="672" />

```r
# Runs and creates diagram for a hierarchical factor model
# sl=FALSE overrides default
hier<-omega(ratings[,1:12],nfactors=3,sl=FALSE)
```

<img src="WhatIsDataScientist_files/figure-html/unnamed-chunk-1-2.png" title="" alt="" width="672" />

```r
# runs and creates diagram for bifactors model default is Schmid-Leiman bifactor model
bifactor<-omega(ratings[,1:12],nfactors=3)
```

<img src="WhatIsDataScientist_files/figure-html/unnamed-chunk-1-3.png" title="" alt="" width="672" />

### 用户评论

- Python module: scrapy, pymysql, pony, nltk
- 当前我最感兴趣的方向，关于这个话题我还有很多没有解决的问题，要是有科研是这个方向的小伙伴，很希望能向你们学习。可以给我邮件，期待交流。

### 其它

- 交叉销售：商业购物篮分析 

这样的记录或许有大量的数据点但每个观测包含的信息相对较少。这意味着简单的分析都不起作用，如相关性分析和线性回归。因为这些方法假设每种情况下测量都是完全或近乎完全的。以某特定超市的产品数目为例，有大部分东西不会和其它一些东西在一个交易中同时出现，因为可能的组合太多了。关联法则挖掘关联法则分析试图从大量的稀疏数据中搜寻有信息量的不同模式。


```r
library(arules)
library(arulesViz)
data("Groceries")
#summary(Groceries)
groc.rules <- apriori(Groceries, parameter=list(supp=0.01, conf=0.3, target="rules"))
```

```
## Apriori
## 
## Parameter specification:
##  confidence minval smax arem  aval originalSupport support minlen maxlen
##         0.3    0.1    1 none FALSE            TRUE    0.01      1     10
##  target   ext
##   rules FALSE
## 
## Algorithmic control:
##  filter tree heap memopt load sort verbose
##     0.1 TRUE TRUE  FALSE TRUE    2    TRUE
## 
## Absolute minimum support count: 98 
## 
## set item appearances ...[0 item(s)] done [0.00s].
## set transactions ...[169 item(s), 9835 transaction(s)] done [0.00s].
## sorting and recoding items ... [88 item(s)] done [0.00s].
## creating transaction tree ... done [0.00s].
## checking subsets of size 1 2 3 4 done [0.00s].
## writing ... [125 rule(s)] done [0.00s].
## creating S4 object  ... done [0.00s].
```

```r
hi<-subset(groc.rules, lift > 3)
inspect(hi)
```

```
##   lhs                   rhs                   support confidence     lift
## 1 {beef}             => {root vegetables}  0.01738688  0.3313953 3.040367
## 2 {citrus fruit,                                                         
##    root vegetables}  => {other vegetables} 0.01037112  0.5862069 3.029608
## 3 {citrus fruit,                                                         
##    other vegetables} => {root vegetables}  0.01037112  0.3591549 3.295045
## 4 {tropical fruit,                                                       
##    root vegetables}  => {other vegetables} 0.01230300  0.5845411 3.020999
## 5 {tropical fruit,                                                       
##    other vegetables} => {root vegetables}  0.01230300  0.3427762 3.144780
```

```r
plot(hi, method="graph", control=list(type="items"))
```

<img src="WhatIsDataScientist_files/figure-html/unnamed-chunk-2-1.png" title="" alt="" width="672" />

第一个法则告诉我们如果某个交易包含{beef}（{牛肉}）那么该交易也更可能包含{root vegetables}（{根用蔬菜}）—— 我们假设该类蔬菜包括马铃薯（potatoes）和洋葱（onions）这类元素。该组合在该购物篮中出现频率为1.7% (“支持”)，且对应提升表明该组合出现的概率是预期的{root vegetables}单独出现概率的3倍多。

可以给商店什么具体的建议?

     1. 在牛肉柜台附近设置货架放土豆和洋葱，以鼓励那些选购牛肉的顾客购买这些蔬菜或考虑将其纳入食谱。
     2. 在根用蔬菜区域放置牛肉的优惠券。
     3. 在商店的某个位置特写展示食谱卡片。

- 新产品投放
- 缓冲库存

## 数据科学家需要的技能
 
![](http://hui1987.com/COS_2015_12_12/ModernDataScientist.png)

- 好奇心：有点没事找事的贱（老鼠扛刀，满街找猫，谓之贱）  
- 热爱/激情：有一篇文章在北美很火不知道大家有没有听说过，说数据科学是21世纪最性感的职位。个人觉得数据科学家是舞者，很美很性感的职业。如何发现这门职业的美？答案就是爱。有句话说：美只有爱知道。这对任何一门行业都适用，你要热爱这门行业，不然怎么都性感不起来的。  
－ 抗压能力：传统行业市场部门对数据科学的认识和互联网行业不能比    
要有一种既是别人说你胸小脸大也不在乎的精神，摸着自己的胸口说没关系，我是男孩子，要坚强！

## 北美数据科学家就业情况？

大家猜猜数据科学家从业人中男女比例是多少？

- 猜猜看： 男 v.s 女？
     1. 59% v.s. 41%
     1. 69% v.s. 31%
     1. 79% v.s. 21%
     1. 89% v.s. 11%
     1. 99% v.s.  1%
     
答案是89% v.s. 11%，单身的女子们，犹豫什么，前途无量啊！
     
数据科学家这个职位总体供不应求，下面是一个调查的统计结果，我也参与了该调查  
     - 96% 报告说至少每个月会收到一次猎头公司的消息  
     - 31% 每周被联系好多次。  

虽然由于可得性偏差（那些受到猎头联系的数据科学家更有可能回复），真实的比例应该比调查结果小。但数据科学家的抢手程度还是可见一斑。

## 北美的数据科学教育－现状

大部分数据科学家有硕士以上学位（92%）。其中48%有博士学位。拥有博士学位的一般情况下比硕士本科学位的人薪水高。

![](http://hui1987.com/COS_2015_12_12/DataScientistDegree.png)

当前数据科学家专业背景大多是统计、计算机科学以及工程学。 很吃惊居然有5%毕业与商学院。不过个人感觉越来越多自然科学出生成的人为数据科学家（物理）。

![](http://hui1987.com/COS_2015_12_12/DataScientistArea.jpg)

## 北美的数据科学教育－数据科学学位

- 美国大学启动数据科学教育计划：UC Berkeley, NYU, MIT
- 2015年9月8日，密歇根大学公布10亿美元的“数据科学议题”，计划设置35个教授职位
- 这些项目的教学内容含有许多传统统计学课程，但不完全一样

