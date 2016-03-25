---
layout: post
title: Modeling Dependence with Copulas Using R
---

h1. {{ page.title }}

p(meta).  Ames, Iowa, USA


The word ”copula” as a grammatical term for a word or expression that links a subject and predicate, Sklar felt that this would make an appropriate name for a function that links a multidimensional distribution to its one-dimensional margins, and used it as such. The history of copulas may be said to begin with Frechet (1951). Frechet’s problem: given the distribution fuctions Fj with j = 1, ..., d of d r.v’s X1 , X2 , ..., Xd defined on the same probability space (Ω, F, P), what can be said about the set Γ(F1, F2, ..., Fd) of the d−dimensional distribution functions whose marginals are the given Fj?
<span class="math">\[ H ∈ Γ(F1,...,Fd) ⇔ H(+∞,...,+∞,t,+∞,...,+∞) = Fj(t)	<]</span> <span class="math">

The set Γ(F1, ..., Fd) is called the Frechet class of the Fj′s. Notice Γ(F1, ..., Fd) IS NOT ∅ since, if X1, X2, ..., Xd are independent, then  $H (x_1 , x_2, ..., x_d)=F_1(x_1) * F_2(x_2)* ... *F_d(x_d)$. 

 But, it was not clear which the other elements of Γ(F1,...,Fd) were. Dall’ Aglio (1972) studied the conditions under which there is just one distribution function belonging to Γ(F1,F2). At the end of the nineties, the notion of copulas became increasingly popular due to an explosive development of quantitative risk management methodology within finance and insurance. Two papers more than any others put the fire to the fuse: Embrechts et al.(2002) and Li credit portfolio model(Li2001).

When a random vector X = (X1, X2, . . . , Xd)T	is given, two problems are of interest: 

<li>1. the probabilistic behaviour of each one of its components; </li>
<li>2. the relationship among them.</li>

The main goal of the report is to show how copulas allow to answer the second question. 
The outline is as follows. In section 2 we introduced some definitons and classical copula models where we performed several simulation studies and presented the densities of some copula in graphic. Then we talked about some possible ways to estimate copula in section 3. For bivariate case, we illustrated a parametric method using piesewise linear approximation which is explained in section 4. At last, in section 5, we applied the methods introduced in previous sections to dietary intake and compared the results.

The PDF version of the report can be found <a href="http://scientistcafe.com/works/ModelingDependence_with_Copulas_TheoryApplications.pdf" target="_blank">"Modeling Dependence with Copulas: Theory and Applications, Quo Vadis?"</a>. The last update is on December 3, 2012.
