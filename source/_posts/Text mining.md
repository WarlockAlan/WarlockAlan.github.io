---
title: Reading notes related to text mining
date: 2022-7-2 23:59:59
tags:
 - Hobbies
 - Statistics and data science
 - Sciences
 - Reading notes
 - Extra curriculum
---

### reading notes-- Further learning in statistics and data science 

I read the book ‘Opinion Mining and Sentiment Analysis’ by Pang and Lee and thus made notes related to statistics and data science. 

#### Text mining
> Text mining (also known as text analysis), is the process of transforming unstructured text into structured data for easy analysis. Text mining uses natural language processing (NLP), allowing machines to understand the human language and process it automatically.
##### Normalisation
>Text normalization is the process of transforming text into a single canonical form that it might not have had before.

Stemming and lemmatisation are two approaches for text normalisation.

1.Lemmatization is a text normalization technique used in Natural Language Processing (NLP), that switches any kind of a word to its base root mode. Lemmatization is responsible for grouping different inflected forms of words into the root form, having the same meaning.

**Lemma: the basic form of a word, for example the singular form of a noun or the infinitive form of a verb, as it is shown at the beginning of a dictionary entry**

2.In linguistic morphology and information retrieval, stemming is the process of reducing inflected (or sometimes derived) words to their word stem, base or root form—generally a written word form.

>notes in Chinese

最常见的词汇规范化的实践有：
 
1. 词干提取（Stemming）：词干提取是一个初级的、基于规则的脱去后缀（如“ing”，“ly”，“es”，“s”等等）的过程

2. 词元化（Lemmatization）：另一方面，词元化，是一个组织好的、一步一步的获取词根的过程。

3. 词汇规范化: 另外一种文本型的噪音与一个词语的多种表达形式有关。例如，“play”，“player”，“played”，“plays”和“playing”都是单词“play”的变种。尽管它们有不同的意思，但是根据上下文来看，它们是意思是相似的。这个步骤是将一个单词的所有不同形式转换为它的规范形式（也被称为词条（lemma））


#### Opinion mining
> Opinion mining, or sentiment analysis, is a text analysis technique that uses computational linguistics and natural language processing to automatically identify and extract sentiment or opinion from within text (positive, negative, neutral, etc.)

In my words, opinion mining is just one part in text mining; text mining involves classical text mining and opinion mining；The former one analyses text which are expressed factually whereas the latter one analyses text which are expressed subjectively.

> Sentiment analysis, also referred to as opinion mining, is an approach to natural language processing (NLP) that identifies the emotional tone behind a body of text. This is a popular way for organizations to determine and categorize opinions about a product, service, or idea. It involves the use of data mining, machine learning (ML) and artificial intelligence (AI) to mine text for sentiment and subjective information.

**Emotional tone refers to positive, negative or neutral attitudes.**

#### Subjectivity polarity score

The polarity score is a float within the range [-1.0, 1.0] . The subjectivity is a float within the range [0.0, 1.0] where 0.0 is very objective and 1.0 is very subjective. 

In short, text polarity is a measure of how negative or how positive a piece of text is.
Most of the time, NLP models can predict simply positive or negative words and phrases quite well. For example, the words “amazing”, “superb”, and “wonderful” can easily be labelled as highly positive. The words “bad”, “sad”, and “mad” can easily be labelled as negative. However, we can’t just look at polarity from the frame of individual words, it’s important to take a larger context for evaluating total polarity. For example, the word “bad” may be negative but what about the phrase “not bad”? Is that neutral? Or is that the opposite of bad? At this point we’re getting into linguistics and semantics rather than natural language processing.

The two biggest open source libraries for NLP in Python are spaCy and NLTK, and both of these libraries measure polarity on a normalized scale of -1 to 1. The Text API measures, combines, and normalizes values on both the polarity of the overall text, individual sentences, and individual phrases.

> Example https://www.ebaina.com/articles/140000005269
> notes in Chinese

> 极性(polarity)指的是一陈述是肯定还是否定的性质，如果某个词只能出现在肯定或者否定的陈述中，那么这个词就是极性项(polarity item)。在英语中at all是一个否定极性项，它只能出现在否定句中。

#### Opinion holders and opinion targets

One of the key subtasks in sentiment analysis is opinion role extraction. It can be divided into the extraction of opinion holders (OH), i.e. entities ex-pressing an opinion, and the extraction of opinion targets (OT), i.e. entities or propositions at which sentiment is directed.

