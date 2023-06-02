---
layout: ../../../layout/CourseLayout.astro
title: "Getting started with pytorch coding"
permalink: /courses/machine-learning/getting-started
---

Now it's time to get started with some coding and maths. First lets see were you can get help from.

# Useful places to get help from

The first place where you can get help is the official <a href="https://github.com/EzpieCo/PyTorch-Crash-Course" class="text-blue-600 hover:text-blue-400 hover:underline">GitHub repository</a>. There you can go ahead to the
<a href="https://github.com/EzpieCo/PyTorch-Crash-Course/discussions" class="text-blue-600 hover:text-blue-400 hover:underline">discussion tab</a> and create a discussion with the Q&A category.

The second place to get help from is the <a href="https://discord.gg/invite/NTYsQM92vA" class="text-blue-600 hover:text-blue-400 hover:underline">discord server</a>. And, finally the official <a href="" class="text-blue-600 hover:text-blue-400 hover:underline">PyTorch documentation</a>.

**optional**

If you like you can also follow this simple steps to use your own skills so that you don't get the habit of asking help for small things:

1. Check the code for once
2. Google your question
3. No, answer? Check the PyTorch Documentation
4. Still no answer? Make a discussion on the github repository.

# Setting up your view for better coding

To prevent you from moving from tab to tab or window to window, you can separate the this tab and the tab with google colab, and place them side by side like this:

<img src="https://github.com/EzpieCo/ezpie/assets/104765117/b1abf920-c855-4e79-9c00-6eafaec0918b" alt="appropriate setup to take this course" loading="lazy">

# Starting with google colab

So enough of basics, time to write some code! So open <a href="https://colab.research.google.com" class="text-blue-600 hover:text-blue-400 hover:underline">google colab</a>.

in the given cell block you can write python code, and since it's just python code, it can be any python code!

try writing this:

```python
print("Hello Colab!")
```

One useful feature of google colab is that we can convert our runtime from CPU to GPU, this we will be using a lot as it helps run code faster!

To do so just go to `Runtime -> change runtime type`. From there open the Hardware accelerator dropdown and change the runtime from none to GPU.

But since you would be using a free version of google colab(You freeloaders) you will have a GPU that won't be to fast, you can pay for a paid version, but the free one will work fine too.

To check if it worked you can run:

```
!nvidia-smi
```

This piece will run only will you write it in the code cell.

Now lets try importing pytorch, now you may think that we will need to use `pip` to install pytorch first, but google colab, because of being a notebook it already has all the necessary modules installed in it. Just use `import torch` to import pytorch.

```python
import torch

# Checking if pytorch is imported and what version it is
print(torch.__version__)
```

If you are viewing this course from the future, the version of pytorch will be differ, but that won't matter much.

This is it for this part of the course, but in the next one I have a surprise for you. Tell then, here's a question for this chapter which will be answered in the next chapter: **What are Tensors?**

Google it and find it out.
