---
title: Reading notes related to Naive Bayes classifiers and Markov Chain
date: 2022-7-3 23:59:59
tags:
 - Statistics and data science
 - Hobbies
 - Mathematics
 - Reading notes
 - Sciences
 - Extra curriculum
---

### reading notes- Further learning in statistics and data science

I read the book ‘Reinforcement Learning’ by S. Sutton and thus made reading notes about markov chain and also I learned knowledge about Bayes classifiers.

#### Classifier

>"An algorithm that implements classification, especially in a concrete implementation, is known as a classifier. The term "classifier" sometimes also refers to the mathematical function, implemented by a classification algorithm, that maps input data to a category."

#### Bayes classifier

Classifiers based on Bayes’ Theorem.

#### Bayes’ Theorem

![3.png](https://s2.loli.net/2022/10/18/SkhXpHdMur1abLe.png)

![1.png](https://s2.loli.net/2022/10/18/wOSQCAHdnJNIevY.png)

![2.png](https://s2.loli.net/2022/10/18/rKnV4ILX8Yj6Rl2.png)

#### Naive Bayes classifier

Classifiers based on Bayes’ Theorem **with an assumption of independence among predictors**.

####What are the Pros and Cons of Naive Bayes?

Pros:

1. It is easy and fast to predict class of test data set. It also perform well in multi class prediction

2. When assumption of independence holds, a Naive Bayes classifier performs better compare to other models like logistic regression and you need less training data.

3. It perform well in case of categorical input variables compared to numerical variable(s). For numerical variable, normal distribution is assumed (bell curve, which is a strong assumption).

Cons:

1. If categorical variable has a category (in test data set), which was not observed in training data set, then model will assign a 0 (zero) probability and will be unable to make a prediction. This is often known as “Zero Frequency”. To solve this, we can use the smoothing technique. One of the simplest smoothing techniques is called Laplace estimation.

>https://www.zhihu.com/question/21134457 (useful linkage to Naive Bayes classifiers)

#### Markov chain and laplace smoothing

It is a pretty tough section so i only made notes in Chinese to help me understand this section better.

![1.jpg](https://s2.loli.net/2022/10/18/fKgv9LOt1IpoHT6.jpg)

这个矩阵就是转移概率矩阵P，并且它是保持不变的，就是说第一天到第二天的转移概率矩阵跟第二天到第三天的转移概率矩阵是一样的。

![2.jpg](https://s2.loli.net/2022/10/18/Kq5BHvs6wCuJ2Fp.jpg)

> #### One application
> For example, consider a hypothetical market with Markov properties where historical data has given us the following patterns: After a week characterized by a bull market trend there is a 90% chance that another bullish week will follow. Additionally, there is a 7.5% chance that the bull week instead will be followed by a bearish one, or a 2.5% chance that it will be a stagnant one. After a bearish week there’s an 80% chance that the upcoming week also will be bearish, and so on. This data is compiled to form a matrix and then the results are drawn thereof.

拉普拉斯平滑（Laplace Smoothing）又被称为加 1 平滑，是比较常用的平滑方法。平滑方法的存在时为了解决零概率问题。

>背景:为什么要做平滑处理?

零概率问题，就是在计算实例的概率时，如果某个量x，在观察样本库（训练集）中没有出现过，会导致整个实例的概率结果是0。在文本分类的问题中，当一个词语没有在训练样本中出现，该词语调概率为0，使用连乘计算文本出现概率时也为0。这是不合理的，不能因为一个事件没有观察到就武断的认为该事件的概率是0。

> 拉普拉斯的理论支撑

为了解决零概率的问题，法国数学家拉普拉斯最早提出用加1的方法估计没有出现过的现象的概率，所以加法平滑也叫做拉普拉斯平滑。
假定训练样本很大时，每个分量x的计数加1造成的估计概率变化可以忽略不计，但可以方便有效的避免零概率问题。

