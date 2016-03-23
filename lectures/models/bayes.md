Bayes' Rule
====
author: Rafael A. Irizarry
transition: none


Cystic Fibrosis Test
====

* A test for cystic fibrosis has an accuracy of 99%: 

$$\mbox{Prob}(+\mid D)=0.99, \mbox{Prob}(-\mid \mbox{no } D)=0.99,$$


* If we select a random person and they test positive, what is the probability that they have disease? 

* We write this as $\mbox{Prob}(D\mid+)?$

* Cystic fibrosis rate is $\mbox{Prob}(D) \approx 0.00025$

Bayes Rule
====

<br>
<br>

$$
\mbox{Pr}(A|B)  =  \frac{\mbox{Pr}(B|A)\mbox{Pr}(A)}{\mbox{Pr}(B)} 
$$


Bayes Rule Applied to Cystic Fibrosis Test
====
<br>

$$
\begin{eqnarray*}
\mbox{Prob}(D|+) & = & \frac{ P(+|D) \cdot P(D)} {\mbox{Prob}(+)} \\
& = & \frac{\mbox{Prob}(+|D)\cdot P(D)} {\mbox{Prob}(+|D) \cdot P(D) + \mbox{Prob}(+|\mbox{no } D) \mbox{Prob}(\mbox{no } D)} \\
\end{eqnarray*}
$$


Bayes Rule
====

$$
\begin{eqnarray*}
\mbox{Prob}(D|+) & = & \frac{ P(+|D) \cdot P(D)} {\mbox{Prob}(+)} \\
& = & \frac{\mbox{Prob}(+|D)\cdot P(D)} {\mbox{Prob}(+|D) \cdot P(D) + \mbox{Prob}(+|\mbox{no } D) \mbox{Prob}(\mbox{no } D)} \\
& = & \frac{0.99 \cdot 0.00025}{0.99 \cdot 0.00025 + 0.01 \cdot (.99975)} \\
& = & 0.02 \;\;\; \mbox{not} \; \; \; 0.99
\end{eqnarray*}
$$


Monte Carlo Simulation
====

Assessment: Write a Monte Carlo simulation that shows this. Let's go step-by-step. http://goo.gl/forms/JPFdaptfkv  

* Define a population with 1 in 4000 people with CF.
* Take one at random
* Give them the test that is 99% accurate.
* Return one of four: TP, FP, TN, FN
* Repeat 10,000
* Compute TP / P = TP / (TP +FP)

Simulation
===












```
Error in loadNamespace(name) : there is no package called 'rafalib'
```
