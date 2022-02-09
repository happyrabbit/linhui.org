---
title: 科学家咖啡馆2：什么是数据科学？
layout: post
time: '9:38'
---

# 科学家咖啡馆2：什么是数据科学？

我的分享对你有用吗？请我喝杯咖啡？

<style>.bmc-button img{width: 27px !important;margin-bottom: 1px !important;box-shadow: none !important;border: none !important;vertical-align: middle !important;}.bmc-button{line-height: 36px !important;height:37px !important;text-decoration: none !important;display:inline-flex !important;color:#ffffff !important;background-color:#000000 !important;border-radius: 3px !important;border: 1px solid transparent !important;padding: 1px 9px !important;font-size: 22px !important;letter-spacing: 0.6px !important;box-shadow: 0px 1px 2px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;margin: 0 auto !important;font-family:'Cookie', cursive !important;-webkit-box-sizing: border-box !important;box-sizing: border-box !important;-o-transition: 0.3s all linear !important;-webkit-transition: 0.3s all linear !important;-moz-transition: 0.3s all linear !important;-ms-transition: 0.3s all linear !important;transition: 0.3s all linear !important;}.bmc-button:hover, .bmc-button:active, .bmc-button:focus {-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;text-decoration: none !important;box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;opacity: 0.85 !important;color:#ffffff !important;}</style><link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet"><a class="bmc-button" target="_blank" href="https://www.buymeacoffee.com/scientistcafe"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/BMC-btn-logo.svg" alt="Buy me a coffee"><span style="margin-left:5px">Buy me a coffee</span></a>

<center><iframe width="560" height="315" src="https://www.youtube.com/embed/cmWMXd6IoLg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>

从[2012年10月哈佛商业评论](https://hbr.org/2012/10/data-scientist-the-sexiest-job-of-the-21st-century)第一次将数据科学家称为21世纪最性感的职业以来，到2022年，已经快十年。数据科学在这10年里发生了很大的变化。我在之前关于[数据科学家要不要读博士](https://www.youtube.com/watch?v=XBPApl6X6WI)的那期视频里讲到过，随着各种教育培训机构的兴起，以及模型工具的成熟，数据科学家的**学位门槛**在逐年降低，数据科学家这个职位名称也不再像原来那样高大上。我记得在2019年参加硅谷这边的一个活动，主办方把参加的人随机分成6个人的小组，我们那个组里有3个数据科学家。

在数据科学普及的同时，这个领域也更加成熟，有比较清晰的职业轨道和职位定义。可以说现在的数据科学和10年前那个哈佛商业周刊里说的性感的数据科学感觉已经不是同一物种。

现在的数据科学有3条轨道，数据工程，数据分析，和数据建模推断。让我来看下它们各自都是什么

1）数据工程

数据工程是让数据科学其余的一切皆有可能的基础。它主要涉及构建数据管道基础设施。随着云服务的发展，在云上存储和计算数据成为新的规范。今天的数据工程，其核心是以数据流为重点的软件工程。自动化的基本构建块是通过模块化、注释良好的代码和版本控制来维护数据管道。

总的说来，数据工程主要包括1）数据环境设置2）数据管理和3）数据产品化。

2） 数据分析

**分析以快速且通常是探索性的方式将原始信息转化为洞**。一般来说，分析师需要具备良好的领域知识，有效地进行探索性分析，并使用讲故事的方式呈现结果。数据分析有三个重要的方面：1）领域知识2）探索性分析3）数据洞见

**领域知识是对应用数据科学的组织或行业的理解，也是培养产品感不可缺的一个环节。**没有上下文，你就无法理解数据，给出商业洞见。要了解相应领域知识，可以问下面的一些常见问题：

- 业务问题是什么？
- 这种业务的关键指标是什么？
- 他们拥有什么类型的数据，这些数据代表什么？
- 如何将业务需求转化为数据问题？
- 以前尝试过什么，结果如何？
- 准确性-成本-时间的权衡是什么？
- 还有哪些因素没有考虑？
- 什么是合理的假设，什么是错误的

用讲故事的方式呈现分析结果对于提供洞察力和推动更好的决策至关重要。这是告诉人们数字代表什么的艺术。在讲数据故事之前，回答以下问题至关重要。

- 谁是你的听众？
- 你想让你的听众知道什么或做什么？
- 你如何使用数据来帮助阐明自己的观点？

3）建模和推断

建模和推断是一个深入研究数据发现不容易看到的模式的过程。吃瓜群众想到数据科学时，首先想到的都是高大上的的机器学习或者深度学习模型。事实上，这些模型只占数据科学家日常工作的一小部分，大部分是时间花在定义问题，读取和清理数据上。一般说来，模型解决的问题有3类：预测，解释和推断。

对于预测类问题，建模的目标是对新样本预测结果，大部分深度学习模型和机器学习模型都用于处理这类问题。这里通常不要求解释变量，所以会用到复杂的黑箱模型。

对于解释类的问题，建模的目标通常是解释变量，支持决策。所以我们需要知道变量在模型中扮演的角色。常见的一些分析有用户画像聚类，还有通过也就是最大化差异度量分析进行产品功能优先级排序，等等。

对于推断问题，常见的有实验设计 (如在互联网公司常做的A/B 测试，这个技术上相对简单。在传统基因研究相关的生物公司，制药公司用到的实验设计通常是混合效应模型，技术上要复杂很多。)贝叶斯网络常常用来做因果推断。还有一个常用的方法是倾向评分匹配 (PSM)，处理观察研究（Observational Study）的数据。因为有很多问题可能是很难做实验的。比如说，你想知道重点大学毕业和非重点大学毕业，毕业之后10年的收入差距有多少？你的朋友小王，是重点大学毕业的，可是怎么知道如果小王没有读重点大学，现在收入会有多少呢？这样的问题是很难做实验对照研究的，所以我们只能从观察数据当中尽量优化提取信息。我们可以找一些没有上重点大学的人，然后在这里面找和小王非常类似的人，比如说邻居小明，小明的高中成绩，性格特质，家庭出身等等都很类似，唯一的不同就是出于某种原因，没有考上重点大学，比如高考那天身体不适导致考试发挥失常。作为小王的对照，然后再来看他们的区别。当样本中的每个上重点大学的”小王“都找到了匹配的没有上重点大学的”小明“，我们便能对这两组样本进行比较研究了。

**这三条轨道有共性么？**

上面讲的是这三个轨道的不同之处，但他们之间其实有很多共性，无论你是做工程，还是分析或者建模，都需要花很多时间读取，清理，变换数据。这也是为什么sql是数据工作者需要的基本技能。如果你把所有上面讲到的数据科学的轨道放在一起，可以概括为这样一个数据科学的金字塔。

<p align="center">
  <img src="/images/dspyramid.png"  width="80%" />
</p>

建立数据团队需要从最基础的数据工程开始，构建数据科学的基础设施。然后是通过数据提供决策，分析师，科学家，和一些定量研究人员大多都是在这个应用方向上。最后有的过程可以自动化，于是又回到原始的工程问题，自动化或者产品化模型，也就是制造机器的数据科学。

今天就分享到这里，希望大家了解数据科学的轨道。