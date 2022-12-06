---
layout: post
title: Top 5 Python Tricks to Learn
author: Ezpie
---

Python is one of the most popular programming languages that everyone knows and uses.

But Like any other language, python also is useless without it's cool tricks!

So in this article I will show you the **Top 10 Python Tricks you missed out!**

---

## 1. Zip your lists

Say, you have two list, which you want to combine together. How will you do that?
Simple, just use the _zip_ function!

```python
list1 = [1,2,3,4,5]
list2 = [6,7,8,9,10]
for x, y in zip(list1, list2):
    print(x,y)
```

Output:

```console
ezpie@kali:~# python main.py
1 6
2 7
3 8
4 9
5 10
```

---

## 2. Grab the most occurring

This is trick is same as using the **mode method** of the **scipy module**.
But just a bit more less moduless

```python
list1 = [1,2,5,9,4,5,2,8,4,6,1,5]
print(max(set(list1), key = list1.count))
```

Output:

```console
ezpie@kali:~# python main.py
5
```

---

## 3. Check whether the words are Anagrams or Not

If you want to test whether some words are anagrams or not, then just use the **Counter method**

```python
from collections import Counter

def is_anagram(str1, str2):
    return Counter(str1) == Counter(str2)

print(is_anagram('brush', 'shrub'))
print(is_anagram('add', 'glad'))
```

Output:

```console
ezpie@kali:~# python main.py
true
false
```

---

## 4. Function over normal code writing

It's no joke that you need to use the same line of code again and again multiple times. So to prevent over coding just use function over normal code writing.

```python
def add(a, b):
    return a + b

sum = add(2, 4)
print(sum)
```

This is a lot liking then the code below, as there maybe chances of writing the same code again

```python
sum = 2 + 4
print(sum)
```

**NOTE**: We are programmers, got to think the lazest way possible!!

---

## 5. Make string with list of words

If you have a list of words then you can just combine them to form one sentence

```python
data = ['Your', 'in', 'ezpie']
sentence = "Where am I? "
print(sentence.join(data))
```

Output:

```console
ezpie@kali:~# python main.py
Where am I? Your in ezpie
```

---

## Concultion

Speed and, most of all, efficiency, are the key to coding better. By using the tips given in this post, you can quite improve your Python programming skills. Give them a try in your Python projects and note the difference they make and share them with us at [discord](https://discord.gg/FGGEqQzTFq)!
