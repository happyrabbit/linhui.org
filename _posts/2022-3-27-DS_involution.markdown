---
title: 科学家咖啡馆5：数据内卷，数据科学劝退指南？
layout: post
time: '9:38'
---

# 科学家咖啡馆5：数据内卷，数据科学劝退指南？

我的分享对你有用吗？请我喝杯咖啡？

<style>.bmc-button img{width: 27px !important;margin-bottom: 1px !important;box-shadow: none !important;border: none !important;vertical-align: middle !important;}.bmc-button{line-height: 36px !important;height:37px !important;text-decoration: none !important;display:inline-flex !important;color:#ffffff !important;background-color:#000000 !important;border-radius: 3px !important;border: 1px solid transparent !important;padding: 1px 9px !important;font-size: 22px !important;letter-spacing: 0.6px !important;box-shadow: 0px 1px 2px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;margin: 0 auto !important;font-family:'Cookie', cursive !important;-webkit-box-sizing: border-box !important;box-sizing: border-box !important;-o-transition: 0.3s all linear !important;-webkit-transition: 0.3s all linear !important;-moz-transition: 0.3s all linear !important;-ms-transition: 0.3s all linear !important;transition: 0.3s all linear !important;}.bmc-button:hover, .bmc-button:active, .bmc-button:focus {-webkit-box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;text-decoration: none !important;box-shadow: 0px 1px 2px 2px rgba(190, 190, 190, 0.5) !important;opacity: 0.85 !important;color:#ffffff !important;}</style><link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet"><a class="bmc-button" target="_blank" href="https://www.buymeacoffee.com/scientistcafe"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/BMC-btn-logo.svg" alt="Buy me a coffee"><span style="margin-left:5px">Buy me a coffee</span></a>

<center><iframe width="560" height="315" src="https://www.youtube.com/embed/WCP1jzNKv0A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>

今天给大家聊一聊数据行业内卷的问题。我当时毕业后的第一份工作就是数据科学家，那个时候面试基本不考编程，那个时候我都没有听说过leetcode，也没有要刷题。我最近这些年换工作的时候，也开始刷题，挺痛苦的。

1. 数据科学卷不卷？

和我刚工作的时候比，我觉得数据现在真的挺卷的，尤其对于数据的新人而言，卷的更厉害😖。我之前在创业公司建立数据科学团队招初级的数据工程师和分析师，不到一天就收到100多份简历，很多都是去一些bootcamp培训过，或者是某些数据科学硕士项目刚毕业的学生。这还是3，4年前，当时我在的那个创业公司不到50人，很多职位都很难招人，没有猎头， 所以简历都是我自己筛选，数据分析师和数据工程师申请的人数已经让我忙不过来了。

**为什么数据科学现在这么卷呢？**因为数据科学的供给在过去几年快速增长。很多高校这些年都纷纷开设了数据科学专业，市场上的数据科学的培训机构兴起，模型自动化，所有这些都给市场提供了大量数据科学人才。同时，数据科学这个行业也在工程化，大方向上是往我们之前说的工程轨道发展，偏分析和建模的职位在很多公司里并不在数据科学部门里面。所以相应的数理统计的部分在逐年弱化，伴随这个趋势的是学位门槛降低。

我有一个也是统计背景的朋友最早加入亚马逊的时候是**数据科学家**，几年以后亚马逊发现这个职位名称太模糊了，所以就进行了细分，现在他的职位变成了**研究科学家**，一部分其它职位变成了**应用科学家**，**机器学习工程师**等等。我们之前讲过[数据科学不同职业名称](https://www.youtube.com/watch?v=W6iXs5z_EIE)的区别。分流加上大量的新人加入以后，数据科学的学位门槛现在不高了([成为数据科学家需要读博士吗？](https://www.youtube.com/watch?v=XBPApl6X6WI))，2015年48%的数据科学家有博士学位，2020 年不到20%，现在可能已经不到10%了。我个人觉得这是一个很合理的发展方向，因为当前的数据科学其实不是科学，而是一个职业领域。

当然我们不能只看供给，还得看需求。总体而言，现在互联网上大部分的声音还是在说数据科学需求在增长，尤其是疫情推动数字化之后，增长的尤其迅速。这确实也符合我的经验，需求是在增长的。但是这里有个供需不匹配的问题，对分析人才的需求是需要能够解决实际问题的数据人才，这就意味着需要一些有工作经验和产品感的人。所以**需求的增长是对于有经验的数据科学人才，而供给的增长是初入职场的应届毕业生**，所以新人的经历确实是数据科学这个行业开始内卷🥐‼️。

2.  数据科学的技能还值不值得学？

这里我觉得需要区分数据科学技能和数据科学学位。我个人是不建议大家去学数据科学的学位，在学校是打理论基础的时候，我更建议大家去学数学，统计或者计算机这样的基础学科，然后根据目标的职业去补充薄弱的那块，比如计算机专业的人可以选修一些统计学的课程，统计学的人可以加强计算机的技能，这些额外的技能提升其实网上有很多免费的学习资源，不需要去拿什么学位。真正关于应用的方面，不管是学校还是培训机构，都教不出来，最后还是要靠实践。但是理论基础很大部分都是你在学校的时候打下的，真正毕业如果不在学术界，很难再去扎扎实实心无旁骛的学习理论。

对于数据科学的技能，我觉得是非常必要的掌握的，不管你是不是在数据行业里。因为分析数据的能力渐渐成为了大部分职业都要用到的基本核心技能。在数字化的时代，很多大家眼里的非技术岗位，比如产品经理，销售，营销，如果想要真正脱颖而出，都需要有一些基础的数据分析能力。

卷的本质就是竞争，就是行业的红海化。这个过程不仅限于数据科学这一个行业，每个行业都有红海化的过程。就好比开奶茶点赚钱，大家都去卖奶茶，太多人卖奶茶的话单靠卖珍珠奶茶就很难胜出了，后来就有了奶盖茶，还有各种体验升级，包装，设计，品牌形象，故事，后来就有了大家熟悉的网红奶茶。在信息传播加快的互联网时代，各个职业蓝海的红海化周期都在变短。不局限于自己当前的领域，做一个跨学科人才，才会有核心竞争力。能成为纯技术大牛的人实在是凤毛鳞角，而且从定义上看也不可能多，多了就不是大牛了。所以对大部分像我这样的芸芸众生来说，在职业发展到某个阶段的时候，通常是需要横向拓展。

1. 数据科学的下一片蓝海在哪里？

在数据科学的基础上横向拓展，根据自己的兴趣学习一些相关领域也可以拓宽自己的职业轨道。比如说：

数据科学 + 心理学 + 社会学 + 产品设计 = 量化用户体验研究

数据科学 + 心理学 + 社会学 + 市场营销 = 量化市场研究

数据科学 + 产品 + 营销 = 数据产品运营

数据科学 + 产品 + 项目管理= 数据产品经理 

职业选择和很多其他人生选择一样，是个人的决定，考虑的参数类似，但是每个人给的权重不一样。我个人现在是决定逐渐的向广义的量化研究的方向发展，也就是包括了用户也就和市场研究，我也还在学习和探索的过程中，我可以在之后频给大家分享一下我选择这个方向的理由和心得。