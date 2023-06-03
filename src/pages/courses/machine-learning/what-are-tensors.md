---
layout: ../../../layout/CourseLayout.astro
title: "What and how to make Tensors"
permalink: /courses/machine-learning/what-are-tensors
---

In the last chapter, I gave you a question, **What are Tensors?**

If you google it good, if not don't worry I will explain it.

# What are Tensors

If you like a video... will here you go:

<!-- Video -->
<div class="aspect-w-16 aspect-h-9">
    <iframe src="https://www.youtube.com/embed/f5liqUk0ZTw" frameborder="0" allowfullscreen
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" loading="lazy">
    </iframe>
</div>

Assume you have a toy box full of colorful bricks of all shapes and sizes. Each block is allocated a distinct value. You can now build a tower by stacking these bricks together. The tower can have numerous tiers, each of which has a collection of blocks stacked on top of one another.

Consider each layer of the tower to be a dimension. Each block within a layer has its own position, which we can refer to as a coordinate. The coordinates pinpoint the exact location of the block within the tower.

These block towers are known as tensors in machine learning. Tensors are just fancy words for multidimensional arrays. It's like a mystical container that, like our toy blocks, can hold a multitude of numbers. However, unlike blocks, the numbers in a tensor can represent anything you want, such as image pixel values, temperature readings, or even the possibility of a cat chasing a laser pointer.

Assume we have a tensor that represents a colorful image. It might come in three sizes: width, height, and color channels. The width and height indicate the image's dimensions, while the color channels indicate how many colors are utilized to represent each pixel. Consider it a colorful edifice made up of thousands of tiny blocks, each representing a pixel in the image.

Also here's a nice <a href="https://towardsdatascience.com/what-are-tensors-in-machine-learning-5671814646ff" class="text-blue-600 hover:text-blue-400 hover:underline">blog about tensors</a>. You can read it for your extra info.

# Creating Tensors

Though pytorch focus mainly on Tensors more then any other type of tensors, it's important to know all of them.
So there are 4 types of tensors which are:

1. Scalar
2. Vector
3. Matrix
4. Tensor

## Scalar

So in order to create a scalar or any tensor, we have to use the **tensor()** method in order to make any tensor.

But what exactly is a scalar? Now Imagine you have a box filled with your favorite chocolate bars (I hate chocolate!). Even if every chocolate bar has a mouthwatering flavor, there is something unusual about them because they each have a different sweetness level. Imagine arranging all of these chocolate bars in a row and giving each one a number to indicate how sweet it is. These figures could be zero, positive, or even negative.

A scalar is simply a single number, like one of those sweetness ratings. It doesn't have any direction or fancy dimensions. It's just a humble value that can be used to describe something, like the temperature outside, the age of a dinosaur, or the number of donuts in your belly after a wild breakfast adventure.

Now lets create some scalar with code!

```python
scalar = torch.tensor(4) # any number you like
scalar # This will return what scalar is. notebook feature, not colab
```

If you see we get an output of `tensor(4)` here `tensor` is a `data type`. But say we want to know what torch.tensor is, to know about it google **torch.tensor pytorch documentation**.

So pytorch says _A torch.Tensor is a multi-dimensional matrix containing elements of a single data type._ So that means... You can give the <a href="https://pytorch.org/docs/stable/tensors.html" class="text-blue-600 hover:text-blue-400 hover:underline">documentation a read!</a>

Now let's check what is the dimensional of our scalar using:

```python
scalar.ndim # 0 what?
```

So... why is the dimension 0? well you see for this we need to check one more thing:

```python
scalar.shape # empty array
```

OK so that provided why we got a 0, the array is empty! But why? Well stop asking me question and google it for once! I will explain it in the end with a good image.

## Vector

So to vectors. Consider yourself a treasure hunter examining a huge treasure map. You have a reliable compass that informs you which way is north, south, east, and west to aid with your navigation. Consider each direction as a distinct arrow that has a particular length and is pointing in a single direction.

A vector in mathematics resembles one of those arrows exactly. It has both direction and magnitude (length). It works like a magical compass, showing us where to go and how far to travel in a specific direction.

However, the fact that vectors may represent a wide range of values and ideas is what makes them so fascinating. A vector, for instance, might depict a race car's speed, an object's force, or a spacecraft's motion across the cosmos.

Consider a vector that represents the speed of a race car. The car's speed may be determined by the vector's magnitude, and its direction can be determined by its direction of travel, such as whether it is speeding north or east.

Now to creating a vector:

```python
vector = torch.tensor([1, 2, 3])
vector
```

So that's a simple vector, but let's check it's dimension as well

```python
vector.ndim # 1
```

So why 1? let's check that why it's 1

```python
vector.shape
```

So the output is a simple array why the value of 3. But wait, the array is value is 3, but the dimension is 1, why? Well because the array has only one value! So ya, number of values equals dimension!

## Matrix

This is a different matrix, not the one from the movie The Matrix. So picture yourself as a professional chef preparing a lavish feast. You have a magical kitchen notebook with pages and columns to keep track of all your recipes. Each page is a representation of a distinct dish, and each column is an ingredient. You should note the amount of each item required for the recipe at the intersection of each page and column.

A matrix is analogous to your kitchen notebook in mathematics. It consists of a grid of integers set out in columns and rows. Each number in the matrix is referred to as an element and can stand in for whatever you'd like, including scores, temperatures, or even the quantity of sprinkles on a cupcake!

Now let's create a matrix

```python
matrix = torch.tensor([[1, 2, 3],
                       [4, 5, 6],
                       [7, 8, 9]])
matrix
```

OK? So lets just do what we will do, what's the dimension... will try finding it out yourself, that's you task for this chapter.

So, got what the dimension is? OK, tried finding why it's that? No? OK let's find it together

```python
matrix.shape
```

**output**

```
torch.size([3, 3])
```

So yeah, 2 values so 2 is the dimension(ops! gave away the answer).

## Tensors

So I have already explained what they are, now let's see how to make one.

```python
tensor = torch.tensor([[[1, 2, 3],
                        [4, 5, 6],
                        [7, 8, 9]]])

tensor
```

So yeah, simple and easy tensor, now let's see what's this guy's dimension is

```python
tensor.ndim
```

Well so now we know that it has 3 dimensions, but what are they is going to be interesting

```python
tensor.shape
```

**output**

```
torch.shape([1, 3, 3])
```

hum? what's this? Well this image will explain it cause we are getting a bit over time.

![why the dimension of the tensor is like this](/images/courses/ml/tensor-dimensions.svg)

So, doubt cleared! Good, now I have a task for you, create a nice looking **tensor**, not anyone type of tensor the tensor tensor, give it as many values you can, check what it's dimension is and why. On solving it make a tweet about it with the **#ezpiePytorchCourse** or you can also join the discord server and go to the answers channel, for now have a good day!
