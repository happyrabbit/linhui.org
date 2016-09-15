---
title: 数据整形和清理：reshape2，tidyr包
author: "林荟"
date: "Sep 15, 2016"
layout: post
---

<h4 class="author"><em>林荟 (Hui Lin)</em></h4>
<h4 class="author"><em>Twitter: @gossip_rabbit</em></h4>
<h4 class="date"><em>2016-09-15</em></h4>



<body>

<style type="text/css">
.main-container {
  max-width: 940px;
  margin-left: auto;
  margin-right: auto;
}
code {
  color: inherit;
  background-color: rgba(0, 0, 0, 0.04);
}
img {
  max-width:100%;
  height: auto;
}
.tabbed-pane {
  padding-top: 12px;
}
button.code-folding-btn:focus {
  outline: none;
}
</style>


<div class="container-fluid main-container">

<!-- tabsets -->
<script src="data:application/x-javascript;base64,Cgp3aW5kb3cuYnVpbGRUYWJzZXRzID0gZnVuY3Rpb24odG9jSUQpIHsKCiAgLy8gYnVpbGQgYSB0YWJzZXQgZnJvbSBhIHNlY3Rpb24gZGl2IHdpdGggdGhlIC50YWJzZXQgY2xhc3MKICBmdW5jdGlvbiBidWlsZFRhYnNldCh0YWJzZXQpIHsKCiAgICAvLyBjaGVjayBmb3IgZmFkZSBhbmQgcGlsbHMgb3B0aW9ucwogICAgdmFyIGZhZGUgPSB0YWJzZXQuaGFzQ2xhc3MoInRhYnNldC1mYWRlIik7CiAgICB2YXIgcGlsbHMgPSB0YWJzZXQuaGFzQ2xhc3MoInRhYnNldC1waWxscyIpOwogICAgdmFyIG5hdkNsYXNzID0gcGlsbHMgPyAibmF2LXBpbGxzIiA6ICJuYXYtdGFicyI7CgogICAgLy8gZGV0ZXJtaW5lIHRoZSBoZWFkaW5nIGxldmVsIG9mIHRoZSB0YWJzZXQgYW5kIHRhYnMKICAgIHZhciBtYXRjaCA9IHRhYnNldC5hdHRyKCdjbGFzcycpLm1hdGNoKC9sZXZlbChcZCkgLyk7CiAgICBpZiAobWF0Y2ggPT09IG51bGwpCiAgICAgIHJldHVybjsKICAgIHZhciB0YWJzZXRMZXZlbCA9IE51bWJlcihtYXRjaFsxXSk7CiAgICB2YXIgdGFiTGV2ZWwgPSB0YWJzZXRMZXZlbCArIDE7CgogICAgLy8gZmluZCBhbGwgc3ViaGVhZGluZ3MgaW1tZWRpYXRlbHkgYmVsb3cKICAgIHZhciB0YWJzID0gdGFic2V0LmZpbmQoImRpdi5zZWN0aW9uLmxldmVsIiArIHRhYkxldmVsKTsKICAgIGlmICghdGFicy5sZW5ndGgpCiAgICAgIHJldHVybjsKCiAgICAvLyBjcmVhdGUgdGFibGlzdCBhbmQgdGFiLWNvbnRlbnQgZWxlbWVudHMKICAgIHZhciB0YWJMaXN0ID0gJCgnPHVsIGNsYXNzPSJuYXYgJyArIG5hdkNsYXNzICsgJyIgcm9sZT0idGFibGlzdCI+PC91bD4nKTsKICAgICQodGFic1swXSkuYmVmb3JlKHRhYkxpc3QpOwogICAgdmFyIHRhYkNvbnRlbnQgPSAkKCc8ZGl2IGNsYXNzPSJ0YWItY29udGVudCI+PC9kaXY+Jyk7CiAgICAkKHRhYnNbMF0pLmJlZm9yZSh0YWJDb250ZW50KTsKCiAgICAvLyBidWlsZCB0aGUgdGFic2V0CiAgICB0YWJzLmVhY2goZnVuY3Rpb24oaSkgewoKICAgICAgLy8gZ2V0IHRoZSB0YWIgZGl2CiAgICAgIHZhciB0YWIgPSAkKHRhYnNbaV0pOwoKICAgICAgLy8gZ2V0IHRoZSBpZCB0aGVuIHNhbml0aXplIGl0IGZvciB1c2Ugd2l0aCBib290c3RyYXAgdGFicwogICAgICB2YXIgaWQgPSB0YWIuYXR0cignaWQnKTsKCiAgICAgIC8vIHJlbW92ZSBhbnkgdGFibGUgb2YgY29udGVudHMgZW50cmllcyBhc3NvY2lhdGVkIHdpdGgKICAgICAgLy8gdGhpcyBJRCAoc2luY2Ugd2UnbGwgYmUgcmVtb3ZpbmcgdGhlIGhlYWRpbmcgZWxlbWVudCkKICAgICAgJCgiZGl2IyIgKyB0b2NJRCArICIgbGkgYVtocmVmPScjIiArIGlkICsgIiddIikucGFyZW50KCkucmVtb3ZlKCk7CgogICAgICAvLyBzYW5pdGl6ZSB0aGUgaWQgZm9yIHVzZSB3aXRoIGJvb3RzdHJhcCB0YWJzCiAgICAgIGlkID0gaWQucmVwbGFjZSgvWy5cLz8mISM8Pl0vZywgJycpLnJlcGxhY2UoL1xzL2csICdfJyk7CiAgICAgIHRhYi5hdHRyKCdpZCcsIGlkKTsKCiAgICAgIC8vIGdldCB0aGUgaGVhZGluZyBlbGVtZW50IHdpdGhpbiBpdCwgZ3JhYiBpdCdzIHRleHQsIHRoZW4gcmVtb3ZlIGl0CiAgICAgIHZhciBoZWFkaW5nID0gdGFiLmZpbmQoJ2gnICsgdGFiTGV2ZWwgKyAnOmZpcnN0Jyk7CiAgICAgIHZhciBoZWFkaW5nVGV4dCA9IGhlYWRpbmcuaHRtbCgpOwogICAgICBoZWFkaW5nLnJlbW92ZSgpOwoKICAgICAgLy8gYnVpbGQgYW5kIGFwcGVuZCB0aGUgdGFiIGxpc3QgaXRlbQogICAgICB2YXIgYSA9ICQoJzxhIHJvbGU9InRhYiIgZGF0YS10b2dnbGU9InRhYiI+JyArIGhlYWRpbmdUZXh0ICsgJzwvYT4nKTsKICAgICAgYS5hdHRyKCdocmVmJywgJyMnICsgaWQpOwogICAgICBhLmF0dHIoJ2FyaWEtY29udHJvbHMnLCBpZCk7CiAgICAgIHZhciBsaSA9ICQoJzxsaSByb2xlPSJwcmVzZW50YXRpb24iPjwvbGk+Jyk7CiAgICAgIGxpLmFwcGVuZChhKTsKICAgICAgaWYgKGkgPT09IDApCiAgICAgICAgbGkuYXR0cignY2xhc3MnLCAnYWN0aXZlJyk7CiAgICAgIHRhYkxpc3QuYXBwZW5kKGxpKTsKCiAgICAgIC8vIHNldCBpdCdzIGF0dHJpYnV0ZXMKICAgICAgdGFiLmF0dHIoJ3JvbGUnLCAndGFicGFuZWwnKTsKICAgICAgdGFiLmFkZENsYXNzKCd0YWItcGFuZScpOwogICAgICB0YWIuYWRkQ2xhc3MoJ3RhYmJlZC1wYW5lJyk7CiAgICAgIGlmIChmYWRlKQogICAgICAgIHRhYi5hZGRDbGFzcygnZmFkZScpOwogICAgICBpZiAoaSA9PT0gMCkgewogICAgICAgIHRhYi5hZGRDbGFzcygnYWN0aXZlJyk7CiAgICAgICAgaWYgKGZhZGUpCiAgICAgICAgICB0YWIuYWRkQ2xhc3MoJ2luJyk7CiAgICAgIH0KCiAgICAgIC8vIG1vdmUgaXQgaW50byB0aGUgdGFiIGNvbnRlbnQgZGl2CiAgICAgIHRhYi5kZXRhY2goKS5hcHBlbmRUbyh0YWJDb250ZW50KTsKICAgIH0pOwogIH0KCiAgLy8gY29udmVydCBzZWN0aW9uIGRpdnMgd2l0aCB0aGUgLnRhYnNldCBjbGFzcyB0byB0YWJzZXRzCiAgdmFyIHRhYnNldHMgPSAkKCJkaXYuc2VjdGlvbi50YWJzZXQiKTsKICB0YWJzZXRzLmVhY2goZnVuY3Rpb24oaSkgewogICAgYnVpbGRUYWJzZXQoJCh0YWJzZXRzW2ldKSk7CiAgfSk7Cn07Cgo="></script>
<script>
$(document).ready(function () {
  window.buildTabsets("TOC");
});
</script>

<!-- code folding -->




<h2>数据整形和清理：reshape2，tidyr包</h2>

<p align="center">
  <img src="http://scientistcafe.com/images/Data_Analysis_and_Cleaning.png"  width="80%" />
</p>


<h3><code>reshape2</code>包</h3>
<p>在“<a href="http://scientistcafe.com/2016/09/14/plyr.html">数据整合介绍：plyr，dplyr包</a>”中介绍了如何用<code>plyr</code>和<code>dplyr</code>包进行数据整合。这里我们接下来介绍数据整形。我们沿用之前的服装消费者数据来展示这些函数的实际应用。先载入数据，关于数据的描述可以参考<a href="http://scientistcafe.com/2016/09/14/plyr.html">之前的文章</a>。</p>
<pre class="r"><code># 载入需要的包
library(dplyr)
library(plyr)
library(reshape2)
library(tidyr)
# 读入数据
sim.dat&lt;-read.csv(&quot;/Users/happyrabbit/Documents/GitHub/DataScientistR/Data/SegData.csv&quot;)</code></pre>
<p>如果我们希望有一个新的变量指示购买的渠道（是在线还是实体店），并且将这个变量用于建模，这时就需要对数据进行整形（也称作数据整理，或者揉数据），将在线购买的记录和实体店购买的记录逐行排列而非现在的逐列。我们可以用<code>reshape2</code>包中的相关函数实现这些操作。可能有的读者知道有个包叫做<code>reshape</code>，这是初版，后面的<code>reshape2</code>是重写升级版。这个数据整形的过程确实和揉面团有些类似，先将数据通过<code>melt()</code>函数将数据揉开，然后再通过<code>dcast()</code>函数将数据重塑成想要的形状，为了更清晰的展示函数对数据结构的影响，我们选取其中小部分列，和前5行：</p>
<pre class="r"><code>(sdat&lt;-sim.dat[1:5,1:6])</code></pre>
<pre><code>##   age gender   income house store_exp online_exp
## 1  57 Female 120963.4   Yes  529.1344   303.5125
## 2  63 Female 122008.1   Yes  478.0058   109.5297
## 3  59   Male 114202.3   Yes  490.8107   279.2496
## 4  60   Male 113616.3   Yes  347.8090   141.6698
## 5  51   Male 124252.6   Yes  379.6259   112.2372</code></pre>
<p>我们截取的子数据框一共5行，6列。</p>
<pre class="r"><code>(mdat &lt;- melt(sdat, measure.vars=c(&quot;store_exp&quot;,&quot;online_exp&quot;)))</code></pre>
<pre><code>##    age gender   income house   variable    value
## 1   57 Female 120963.4   Yes  store_exp 529.1344
## 2   63 Female 122008.1   Yes  store_exp 478.0058
## 3   59   Male 114202.3   Yes  store_exp 490.8107
## 4   60   Male 113616.3   Yes  store_exp 347.8090
## 5   51   Male 124252.6   Yes  store_exp 379.6259
## 6   57 Female 120963.4   Yes online_exp 303.5125
## 7   63 Female 122008.1   Yes online_exp 109.5297
## 8   59   Male 114202.3   Yes online_exp 279.2496
## 9   60   Male 113616.3   Yes online_exp 141.6698
## 10  51   Male 124252.6   Yes online_exp 112.2372</code></pre>
<p>我们将变量<code>store_exp</code>和<code>online_exp</code>揉合在一起，结果产生了新的两列，一列是变量<code>variable</code>，指代是哪个揉合变量，另外一列是取值<code>value</code>，即变量对应的值。我们也称这样逐行排列的方式称为长数据格式。由于这里我们并没有指定除了要揉合的变量外的id变量，于是函数默认将所有剩下的变量都当作id变量。对于这些变量保留原来对应的观测，只是对<code>store_exp</code>和<code>online_exp</code>分别重复一次。所以得到的结果有10行。如果我们要对消费量（value）建立线性模型，并且考虑购买渠道的效应的话就可以利用揉合后的数据：</p>
<pre class="r"><code># 这里为了展示回归需要更多的数据，所以用原数据框的所有行
mdat&lt;-melt(sim.dat[,1:6], measure.vars=c(&quot;store_exp&quot;,&quot;online_exp&quot;))
fit&lt;-lm(value~gender+house+income+variable+age,data=mdat)
summary(fit)</code></pre>
<pre><code>## 
## Call:
## lm(formula = value ~ gender + house + income + variable + age, 
##     data = mdat)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
##  -4208   -821   -275    533  44353 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(&gt;|t|)    
## (Intercept)        -9.132e+02  1.560e+02  -5.855 5.76e-09 ***
## genderMale          3.572e+02  1.028e+02   3.475 0.000524 ***
## houseYes           -5.687e+01  1.138e+02  -0.500 0.617275    
## income              2.834e-02  1.079e-03  26.268  &lt; 2e-16 ***
## variableonline_exp  8.296e+02  9.772e+01   8.489  &lt; 2e-16 ***
## age                -2.793e+01  3.356e+00  -8.321  &lt; 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1974 on 1626 degrees of freedom
##   (368 observations deleted due to missingness)
## Multiple R-squared:  0.348,  Adjusted R-squared:  0.346 
## F-statistic: 173.5 on 5 and 1626 DF,  p-value: &lt; 2.2e-16</code></pre>
<p>这里<code>lm()</code>函数自动将实体店消费<code>store_exp</code>设置成基准水平，只看对应的系数估计表明，在其它条件不变的情况下，在线购买的人比商店购买的人平均消费高出830元，而且购买渠道的效应非常显著。看到这样的结果，分析师需要考虑建议商家提高网上商城的购物体验，采取一些手段改变那些实体店为主的消费者改变消费习惯。当然，当靠一个线性回归系数就作出这样的建议有些仓促，还需要对模型的可靠性进行进一步检查。之后有时间再介绍模型选择和评估。</p>
<p>如果我们将<code>house</code>和<code>gender</code>指定为id变量，结果为：</p>
<pre class="r"><code># 这里用所用的数据
# 缺失值填补
library(imputeMissings)</code></pre>
<pre><code>## 
## Attaching package: 'imputeMissings'</code></pre>
<pre><code>## The following object is masked from 'package:dplyr':
## 
##     compute</code></pre>
<pre class="r"><code>demo_imp&lt;-impute(sim.dat,method=&quot;median/mode&quot;)
mdat &lt;- melt(demo_imp, measure.vars=c(&quot;store_exp&quot;,&quot;online_exp&quot;),id.vars=c(&quot;house&quot;,&quot;gender&quot;))
head(mdat)</code></pre>
<pre><code>##   house gender  variable    value
## 1   Yes Female store_exp 529.1344
## 2   Yes Female store_exp 478.0058
## 3   Yes   Male store_exp 490.8107
## 4   Yes   Male store_exp 347.8090
## 5   Yes   Male store_exp 379.6259
## 6   Yes   Male store_exp 338.3154</code></pre>
<p><code>melt()</code>函数不仅能揉合数据框，还能揉合列表，矩阵，表格等。感兴趣的小伙伴可以自己在网上找相关的介绍，很容易找到案例代码，自己一步一步跟着运行一遍就很清楚了。这里揉合数据是为了建模需要，有的时候是为了进一步重塑数据结构。好比把一个积木房子拆开重新盖一个新的造型。这就要用到该包的第二个重要函数<code>dcast()</code>（这是升级版中的函数，初级版本的<code>reshape</code>包对应的是<code>cast()</code>函数）。比如，如果想知道对于有房和没有房的男性和女性，在线消费和实体店消费的总额分别是多少：</p>
<pre class="r"><code>dcast(mdat, house+gender~ variable, sum)</code></pre>
<pre><code>##   house gender store_exp online_exp
## 1    No Female  171102.2   583492.4
## 2    No   Male  133130.8   332499.9
## 3   Yes Female  355320.2   500856.9
## 4   Yes   Male  697297.3   703332.0</code></pre>
<p>上面代码中<code>~</code>左边是你用来划分数据框的id变量，这里是<code>house</code>和<code>gender</code>，右边是你计算根据的变量（也必须是分类变量），真正用于计算的数值是你之前揉合过程中生成的<code>value</code>那列值。这两个函数确实不太好理解，大家需要对一个数据框自己实际操作才能真正理解。</p>
</div>
<div id="tidyr" class="section level3">
<h3><code>tidyr</code>包</h3>
<p>R中还有一个能够用于数据整形的包<code>tidyr</code>。下面我们截取一个小数据框(<code>sdat</code>)展示包中一些主要函数的功能。</p>
<pre class="r"><code>sdat&lt;-sim.dat[1:5,]%&gt;%
  dplyr::select(age,gender,store_exp,store_trans)
sdat %&gt;% tbl_df()</code></pre>
<pre><code>## # A tibble: 5 x 4
##     age gender store_exp store_trans
## * &lt;int&gt; &lt;fctr&gt;     &lt;dbl&gt;       &lt;int&gt;
## 1    57 Female  529.1344           2
## 2    63 Female  478.0058           4
## 3    59   Male  490.8107           7
## 4    60   Male  347.8090          10
## 5    51   Male  379.6259           4</code></pre>
<p>首先是<code>gather()</code>函数。它的作用类似于<code>reshape2</code>中的<code>melt()</code>。下面这条命令的结果和<code>melt(sdat, measure.vars=c(&quot;store_exp&quot;,&quot;store_trans&quot;))</code>是一样的。其中<code>variable</code>和<code>value</code>是自定义的揉合生成的两列新变量的名字。<code>variable</code>列对应原数据中参与揉合的变量名，<code>value</code>列是参与揉合的变量的取值。<code>store_exp,store_trans</code>告诉R对那些变量进行揉合。</p>
<pre class="r"><code>msdat&lt;-tidyr::gather(sdat,&quot;variable&quot;,&quot;value&quot;,store_exp,store_trans)
msdat %&gt;% tbl_df()</code></pre>
<pre><code>## # A tibble: 10 x 4
##      age gender    variable    value
##    &lt;int&gt; &lt;fctr&gt;       &lt;chr&gt;    &lt;dbl&gt;
## 1     57 Female   store_exp 529.1344
## 2     63 Female   store_exp 478.0058
## 3     59   Male   store_exp 490.8107
## 4     60   Male   store_exp 347.8090
## 5     51   Male   store_exp 379.6259
## 6     57 Female store_trans   2.0000
## 7     63 Female store_trans   4.0000
## 8     59   Male store_trans   7.0000
## 9     60   Male store_trans  10.0000
## 10    51   Male store_trans   4.0000</code></pre>
<p>如果用我们之前讲到的管道操作，上面代码可以等价的写成：</p>
<pre class="r"><code># 这里不显示输出结果
sdat%&gt;%gather(&quot;variable&quot;,&quot;value&quot;,store_exp,store_trans)</code></pre>
<p>和<code>gather()</code>相反的是<code>spread()</code>，前者将不同的列堆叠起来，后者将同一列分开。</p>
<pre class="r"><code>msdat %&gt;% spread(variable,value)</code></pre>
<pre><code>##   age gender store_exp store_trans
## 1  51   Male  379.6259           4
## 2  57 Female  529.1344           2
## 3  59   Male  490.8107           7
## 4  60   Male  347.8090          10
## 5  63 Female  478.0058           4</code></pre>
<p><code>tidyr</code>包中还有另外两个互补的函数，<code>separate()</code>和<code>unite()</code>。<code>separate()</code>函数可以将不同列分开成为多列。</p>
<pre class="r"><code>sepdat&lt;- msdat %&gt;% separate(variable,c(&quot;Source&quot;,&quot;Type&quot;))
sepdat %&gt;% tbl_df()</code></pre>
<pre><code>## # A tibble: 10 x 5
##      age gender Source  Type    value
## *  &lt;int&gt; &lt;fctr&gt;  &lt;chr&gt; &lt;chr&gt;    &lt;dbl&gt;
## 1     57 Female  store   exp 529.1344
## 2     63 Female  store   exp 478.0058
## 3     59   Male  store   exp 490.8107
## 4     60   Male  store   exp 347.8090
## 5     51   Male  store   exp 379.6259
## 6     57 Female  store trans   2.0000
## 7     63 Female  store trans   4.0000
## 8     59   Male  store trans   7.0000
## 9     60   Male  store trans  10.0000
## 10    51   Male  store trans   4.0000</code></pre>
<p>可以看到，原来的变量<code>variable</code>被分成了两部分：<code>Source</code>和<code>Type</code>。你可以通过设置<code>sep=</code>来自定义用于划分字符的正则表达，默认是所有非字母和数字的字符。比如这里的“_”。</p>
<p>与<code>separate()</code>相反的函数是<code>unite()</code>， 它能将不同的列合并在一起。类似于<code>paste()</code>函数的数据框版本。</p>
<pre class="r"><code>sepdat %&gt;% unite(&quot;variable&quot;,Source,Type,sep=&quot;_&quot;)</code></pre>
<pre><code>##    age gender    variable    value
## 1   57 Female   store_exp 529.1344
## 2   63 Female   store_exp 478.0058
## 3   59   Male   store_exp 490.8107
## 4   60   Male   store_exp 347.8090
## 5   51   Male   store_exp 379.6259
## 6   57 Female store_trans   2.0000
## 7   63 Female store_trans   4.0000
## 8   59   Male store_trans   7.0000
## 9   60   Male store_trans  10.0000
## 10  51   Male store_trans   4.0000</code></pre>
<p>上面的代码将原先分开的两列又合并回去了，并赋予的和之前一样的列名<code>&quot;variable&quot;</code>。</p>
<p>整形这部分可能是数据处理变换中最复杂的，这种复杂和证明数学定理不同，主要是需要时间熟悉。更像一门手艺，所以大家要发扬手艺人精神，多使用这些函数，把数据当面团一样揉来揉去的，也挺好玩的，不是么？觉得R太难有些犹豫需不需要学习的小伙伴们，<strong>磨刀不误砍柴工</strong>，再一次中国的老古话放在那里闪闪发光的有木有？</p>
</div>
</div>
<div class="section level2">
<h2>总结</h2>
<p>之前讲了数据的整合，这里介绍了数据整形和清理，这都是数据分析从业人员必须熟练掌握的基本技能。这里展示了R中能够进行相应高效数据操作包的使用方法，文章中所有的代码都是可重复的，希望大家能够自己实践下，这样对学习很有帮助。除了文章之外，我在统计之都北美沙龙上讲过相应的话题，感兴趣的可以看之前的讲课视频：</p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/fsHgJhOYOTM" frameborder="0" allowfullscreen>
</iframe>
<p>整合方法类似于excel中的透视表格，R中有一些功能强大的函数能够有效的进行各种数据整合。我介绍了<code>base</code>包中的<code>apply()</code>函数，还有更加高级灵活的<code>plyr</code>包中<code>ddply()</code>函数的各种用法。由于实际工作中大部分时间是处理数据框，所以这里我们介绍了<code>plyr</code>包的一个专门针对数据框的强化包<code>dplyr</code>。该包对于数据的整合非常高效。对于数据的整形（长型数据和宽型数据的转换），举例说明了由于模型需要将数据从宽型转化成长型的情况，并且用<code>reshape2</code>包实现了该过程。此外还介绍了另外一个数据整形的包<code>tidyr</code>，该包可以进行数据变量揉合，拆分，合并；还可以进行数据框的各种合并。这些包的使用需要一些时间学习，实践尤其重要，大家需要多花功夫熟悉这些的操作，这是数据科学家的基本技能。这里说的“熟悉”是指成为第二天性，再应用时不需要占用大脑的工作记忆。</p>
<p>大家要是有什么问题或者感兴趣的有关数据科学的话题，可以给我邮件：<a href="mailto:longqiman@gmail.com">longqiman@gmail.com</a>。学习愉快！</p>
</div>




</div>

<script>

// add bootstrap table styles to pandoc tables
$(document).ready(function () {
  $('tr.header').parent('thead').parent('table').addClass('table table-condensed');
});

</script>

<!-- dynamically load mathjax for compatibility with self-contained -->
<script>
  (function () {
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src  = "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML";
    document.getElementsByTagName("head")[0].appendChild(script);
  })();
</script>

</body>
</html>
