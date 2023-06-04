---
layout: ../../../layout/CourseLayout.astro
title: "Introduction of PyTorch Machine Learning Crash Course"
permalink: /courses/machine-learning
---

In the last chapter I left you with a question of creating a tensor with random numbers and finding it's dimensions and shape. If gave it a try good and not then I would recommend giving it a try.

So now it's a good time to discuss about one small thing which you will ran into when making a machine learning model.

# Reshaping

Consider having a big box packed with vibrant blocks. A number is represented by each block. Let's imagine you want to arrange these blocks in creative patterns using a variety of shapes and sizes. Machine learning reshaping is similar to arranging these blocks to create new shapes without altering the numbers that are written on the blocks.

These are the main reasons why you should even consider reshaping:

1. **Input compatibility:** Let's say you have a machine learning algorithm that takes in images of different fruits and tries to classify them. But the algorithm expects the images to have a specific size, like 64 pixels by 64 pixels. However, your fruit images are of various sizes. Reshaping allows you to resize these images, like stretching or squeezing, so that they all become the same size. This way, you can feed them into the algorithm without any issues.

2. **Data manipulation:** Imagine you have a long list of numbers in a single row, like [1, 2, 3, 4, 5, 6]. But you want to analyze the numbers in a table format, with rows and columns. Reshaping helps you transform this list into a table-like structure, like [[1, 2], [3, 4], [5, 6]]. Now you have rows and columns, and you can perform various calculations or operations more easily.

3. **Model architecture:** Let's say you're building a model to recognize handwritten digits. To process the images effectively, you need to reshape the input data. Think of the images as jigsaw puzzles. Each puzzle piece represents a pixel, and the final image is made up of all these pieces. Reshaping here involves arranging the puzzle pieces in the right order and making sure they fit together properly. By reshaping the image into a 2D grid, you're allowing the model to analyze and understand the pixel patterns better.

4. **Error handling:** Imagine you're using a pre-trained model that expects input images to have three color channels (red, green, and blue). However, the image you want to use has only one color channel (grayscale). Reshaping comes to the rescue! You can reshape the image to add the missing color channel dimension, making it compatible with the model's requirements. It's like putting on a pair of magical glasses that can see colors where there were none before!

Let's try doing this with some code. Let's first create a tensor with random value

```python
# We can create random tensors with arange - torch method

x = torch.arange(1, 10) # tensor of 1 to 9(index order)

x, x.shape
```

So as you can see we have a tensor of shape 9, let's try converting this tensor into a tensor of 1 X 6.

Now if you now maths, I hope you like maths, you may know that 1 X 6 gives a 6, which is not 9, so that means we are left with 3 numbers that can't be used in the tensor. So does it means that pytorch will give us an error? Let's find out!

```python
reshaped = x.reshape(1, 6) # reshape into 1 X 6 dimension tensor
```

And yeah, we got the error message, and it's to good to not display:

```
RuntimeError                              Traceback (most recent call last)
<ipython-input-17-c4743996fb54> in <cell line: 3>()
      1 # Reshaping the tensor(1D) to a 1 X 6 dimension
      2
----> 3 reshaped = x.reshape(1, 6) # Reshape into a 1 X 6 dimension
      4
      5 reshaped # Output: error!

RuntimeError: shape '[1, 6]' is invalid for input of size 9
```

So yeah, I guess you got what should be done right not right? Just use factors of 9 instead.

So Let's try with the 3 factors of 9 that are... well you know

```python
first_combo = x.reshape(1, 9) # 1 X 9 gives 9
print(f'First combo: {first_combo}')

second_combo = x.reshape(3, 3) # 3 X 3 gives 9
print(f'Second combo: {second_combo}')

third_combo = x.reshape(9, 1) # 9 X 1 gives 9
print(f'Third combo: {third_combo}')
```

And yeah the output:

```
First combo: tensor([[1, 2, 3, 4, 5, 6, 7, 8, 9]])

Second combo: tensor([[1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]])

Third combo: tensor([[1],
        [2],
        [3],
        [4],
        [5],
        [6],
        [7],
        [8],
        [9]])
```

So I just added a little spaces to the output for better reading and as you can see that we have a nice looking reshaped tensor with 3 different options, but what is more interesting is that the outputs are matrix not vector like the input tensor!

OK so now we can move onto the next thing that is squeezing!

# Squeezing

And by this I don't mean squeezing the tensor like a lemon just to make lemon juice, it's machine learning not machine cooking you know!

Certainly! Let's dive into the concept of squeezing in machine learning, using a fun and relatable analogy.

Imagine you have a playful bunch of inflatable toys, each representing a tensor. These toys come in different shapes and sizes, but they all have one thing in common: they can expand and contract like balloons. Now, squeezing in machine learning is a bit like manipulating these inflatable toys to make them smaller in certain dimensions, just like squeezing the air out of a balloon!

In machine learning, squeezing refers to the process of removing dimensions with a size of 1 from a tensor. It's like compressing or squishing the tensor to make it more compact, without losing any valuable information. Squeezing is particularly useful when dealing with tensors that have unnecessary or redundant dimensions.

Here are a few scenarios where squeezing comes into play:

1. **Dimension reduction:** Let's say you have a tensor that represents the probabilities of different classes for a classification task. If the tensor has a shape of (1, 10, 1), it means there's only one sample, ten classes, and one prediction per class. In this case, squeezing can be applied to remove the redundant dimensions, resulting in a tensor with shape (10). Now you have a simple 1D tensor representing the probabilities for each class, without unnecessary dimensions.

2. **Model output:** Squeezing is often used to simplify the output of a model. For example, in natural language processing tasks, you may have a language model that generates sequences of words. The model may output sequences with shape (1, T, 1), where T is the length of the generated sequence. By squeezing the tensor along the first and third dimensions, you can obtain a more concise representation of the generated sequence with shape (T).

Now let's see what's the shape of our `first_combo` tensor.

```python
first_combo.shape
```

As you can see it has a shape of `[1, 9]` just like we defined it. Now say we use the `squeeze()` method to squeeze dimension aka remove all the `1` dimensions.

```python
first_combo.squeeze().shape
```

And that removed the `1` dimension and we got a simple tensor with 1 dimension with shape as 9! Back to where we started off!

# Unsqueezing

So that you know what squeezing is, you can just guess what unsqueezing will be, like come on it's just the opposite of what squeezing is! But still the formality.

In machine learning, unsqueezing refers to the process of adding new dimensions to a tensor. It's like inserting new shelves into a storage unit to make room for more items without changing the existing ones. Un-squeezing is particularly useful when dealing with tensors that need additional dimensions to match the requirements of certain operations or models.

Here are a few scenarios where unsqueezing comes into play:

1. **Dimension expansion:** Let's say you have a tensor representing a single grayscale image with dimensions (height, width). However, a convolutional neural network (CNN) expects input tensors with an additional dimension representing color channels. By unsqueezing the tensor along the channel dimension, you're adding a new shelf to hold the color information, transforming the tensor shape from (height, width) to (1, height, width).

1. **Broadcasting compatibility:** Un-squeezing is often used to achieve broadcasting compatibility when performing operations between tensors with different shapes. If two tensors have compatible dimensions for broadcasting, except for a missing dimension, unsqueezing can be applied to insert a new shelf with a size of 1, allowing the tensors to align properly for the operation.

1. **Model input:** Un-squeezing can be used to prepare input data for certain models. For example, if you have a time series dataset with shape (samples, timestamps), and you want to feed it into a recurrent neural network (RNN) that expects a 3D tensor with shape (samples, timestamps, features), you can unsqueeze along the third dimension to add a new shelf for the features, expanding the tensor from (samples, timestamps) to (samples, timestamps, 1).

Now let's try this with code. Let's try it with the `first_combo` tensor, as it no longer has a shape 1 in it.

```python
first_combo.unsqueeze()
```

That just adds a dimension to the tensor and we get what we did with the `reshape` method, just that instead of defining the shape by ourselves we used unsqueeze.

# Tasks

OK so now you know what reshaping, squeezing and unsqueezing are, it's time for some tasks.

1. Your first task of today is to create a tensor of shape [14, 2], so just basically a matrix, and then try reshaping it into anything you may want, if you run into error just the discord server and go to the **Q&A** channel and ask it.

2. Your second task is to use that same tensor and remove all the `1` dimensions from that tensor, if your tensor doesn't have any `1` dimension then remake it.

3. Now repeat the process, but this time make a new tensor and add some `1`s to it.
