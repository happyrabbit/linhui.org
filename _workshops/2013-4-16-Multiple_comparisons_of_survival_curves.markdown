---
layout: post
title: Multiple comparisons of survival curves
---

h1. {{ page.title }}

p(meta).  Ames, Iowa, USA


When you compare three or more survival curves at once, test of equality over strata reports a single p-value testing the null hypothesis that all the samples come from populations with identical survival, and that all differences are due to chance. You may also want to drill down and compare curves two at a time.
If we set α=0.05 for the first test, that means that:

<pre>0.05 = α = P[reject H0 for test one | H0 is true for test one]</pre>

If all the null hypotheses are true, you’d expect 5% of the comparisons to have uncorrected rejection (i.e p-values<0.05). In other words, you will increase the risk for type I error. 

If you only make a few planned comparisons, corrections for multiple comparisons may not be needed. But if the number of comparisons is large and you don't adjust for multiple comparisons, it is easy to fool yourself. You must be honest about the number of comparisons you are making. Say there are 7 treatment groups (including control). You then go back and compare the group with the longest survival with the group with the shortest survival. It is not fair to say that you are only making one comparison, since you couldn't decide which comparison to make without looking at all the data. With 7 groups, there are 21 pairwise comparisons you could make. You have implicitly made all these comparisons, so you should take the number of comparisons as 21. If you were only interested in comparing each of 6  treatments to the control, and weren't interested in comparing the treatments with each other, then you would be making three comparisons, so should set K equal to 6. Now, if 21 groups are being tested, then you should expect one of them to exceed the 95% confidence bound due to chance. since 95% means around 20 times out of 21. You can no longer conclude that the difference if due to the testing parameters. The 95% confidence is based on one test. When there are multiple comparisons, that confidence does not hold anymore. 

There have been some methods to account for multiple comparisons such as Bonferroni, Tukey, Sidak and other corrections, or by the approach of calculating the False Discover Rate. The following is a samply output from SAS include an over all test and multiple comparisons for logrank test with Sidak correction. 

<pre>           Test of Equality over Strata

                                Pr >
Test      Chi-Square      DF    Chi-Square

Log-Rank      4.6015       2      0.1002
----------------------------------------------------------------------------
    Adjustment for Multiple Comparisons for the Logrank Test
         Strata Comparison                                p-Values
  V1                  V1                  Chi-Square       Raw     Sidak
  Depop/Repop         Herd closure            0.6356    0.4253    0.8102
  Depop/Repop         Startup                 2.1446    0.1431    0.3707
  Herd closure        Startup                 4.3056    0.0380    0.1097
</pre>



Here is the SAS code.

<pre><code>%macro create(number);
%do i=1 %to &number;
 ods graphics on;
 proc lifetest data=data_select plots=survival;
 time time*cen(1);
 strata V&i/test=logrank adjust=sidak;
 run;
 ods graphics off;
%end;
%mend create;
%create(96)</code></pre>

<p>

<h4>Sidak’s adjustment </h4>

I am going to have a brief description of how the Sidak’s adjustment works. If we are concerned about all k comparisons, we might be more interested in the probability that we reject a true null hypothesis at all. That is,
<pre>α_t = P[reject H0 for one of the k tests | H0 is true for all tests]</pre>
We call this quantity the family-wise (or experiment-wise) error rate. The α for each individual test is called the comparison-wise error rate. The family (or experiment), in this case, is made up of the k individual comparisons.
Using the rules of probability, and the fact that we assumed the tests were independent for this example, we can calculate what α_t would be if we used α=0.05 for the comparison-wise rate.

<pre>α_t=1−(1−α)(1−α)...(1−α)=1-(1−α)^k</pre>

if we choose α=0.05 and k=20, we can calculate α_t=0.64 (i.e the chance of making at least one error is 64%)

The Sidak’s formula is to use α = 1 − (1−α_t)^(1/k) given a desired α_t. In the above situation, if we wanted  α_t= 0.05, this formula would show us that we need to use an α=0.00256.

<h4>Bonferroni's Correction</h4>

The Italian mathematician Carlo Bonferroni developed a correction method. Consider the following two tests:
<li>X is in the interval [a,b] with probability of 95%;</li>
<li>Y is in the interval [c,d] with probability of 95%.</li>

The probability that both of them are true is 0.95*0.95=0.9025 (about 90%). Bonferroni applied this observation in reverse. If we want an overall 0.05 confidence level, the level for each test is  adjusted to be 0.05/2=0.025 (the overall probability is then 0.975*0.975=0.9506). In a nutshell,   the Bonferroni correction is to divide the desired  overall α by the number of comparisons (say k) being made (i.e. α/k).


-------------------------------------------------------
References:

1. Brian Habing, University of South Carolina, http://www.stat.sc.edu/~habing/courses/516cmcsup.pdf
2. MA Seaman, JR Levin and RC Serlin, New Developments in pairwise multiple comparisons: Some powerful and practicable procedures, Psychological Bulletin 110:577-586, 1991.
3. SA Glantz, Primer of Biostatistics, 2005, ISBN=978-0071435093.