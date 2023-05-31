---
layout: ../../../layout/CourseLayout.astro
title: "What is A Neural Network"
permalink: /courses/machine-learning/what-is-a-neural-network
---

I left you with a question in the previous chapter: **what is a neural network?**

Now, I could go ahead and explain it, but what I want you to do is watch this video, try searching, and then come back because I will not describe it in simple words, so once you understand the real definition of neural network, you will be able to fly through this chapter.

**Watch this video by 3 blues 1 brown**

<div class="aspect-w-16 aspect-h-9">
    <iframe src="https://www.youtube.com/embed/aircAruvnKk" frameborder="0" allowfullscreen
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture">
    </iframe>
</div>

# What is a neural network?

Now that you know what neural networks are lets take a deep dive into what they are and how they do things like us.

Neural networks are a sort of computer software that attempts to replicate how our brains function. Our brains are amazing at identifying patterns, such as recognizing a friend's face or understanding spoken words. Neural networks are intended to perform comparable functions, but with data that a computer can comprehend.

Assume you want to teach a computer to recognize cat photographs. You would begin by showing it many photographs of cats and dogs and telling it, "These are cats." and "These are dogs." The computer would try to find out what qualities distinguish a cat from a dog.

<img src="/images/courses/ml/cats-and-dogs.svg" loading="lazy">

Instead of telling the computer what to look for, you'd give it a set of rules and let it figure it out on its own. These rules are referred to as neural networks. The network is composed of building components known as "neurons" that are linked together.

Each neuron receives information, such as the color of a pixel in a picture, and performs calculations using that information. The computer then determines whether the image is more likely to be of a cat or a dog. There are numerous neurons in the network, and they all work together to make a final judgment.

However, how does the network learn? It must, however, be trained. You would show it a lot of cat photographs and dog photographs. The network compares its own estimations against the correct answers and attempts to improve its computations.

Once the network has been trained on a large number of cat and dog images, you can show it a fresh image and it will try to tell you whether it believes it's a cat or a dog. It's like asking a cat-obsessed friend to look at a photo and tell you if it's a cat or not a cat rather a dog.

Neural networks are useful for more than just recognizing cats and dogs. They can also be used for a variety of other purposes. They can, for example, read and translate several languages, detect spoken phrases, and even play games. They can also create new things, such as new works of art or stories.

It is critical to remember that neural networks learn from examples. The more examples they view, the better they will develop at making accurate predictions or comprehending concepts.

# Problem makers

**However, there will be an issues in the network!** Neural networks can occasionally produce incorrect findings or make blunders, particularly when confronted with something unexpected or outside of their training experience.

Assume we taught the neural network to recognize cats by giving it a lot of cat photographs. It learned to recognize common cat characteristics such as sharp ears, whiskers, and a specific body shape. Based on these characteristics, it can determine whether an image is likely to be of a cat or not.

However, if we show the network an image of a dog masquerading as a cat, it may become perplexed. Because the network has never seen a dog dressed as a cat during training, it has no explicit rules or examples for dealing with this situation. It will attempt to recognize the qualities it is familiar with in cats, but it may also detect features that are more dog-like, such as the form of the nose or the size of the paws.

As a result, the network may misclassify the image and categorize it as a cat when it is actually a dog dressed as a cat. This is because to the network's reliance on patterns and characteristics gained from training data, and it lacks the ability to interpret context or employ common sense reasoning as people do.

It is critical to stress that neural networks are not inherently intelligent or capable of comprehending the world in the same way that people do. They excel at spotting patterns in the data on which they were trained, but they fail when confronted with circumstances that differ greatly from their training examples. This is referred to as a lack of generalization.

To boost the network's performance, we would need to offer it with more different training instances, such as canines dressed as cats. By exposing the network to increasingly diverse and unexpected scenarios, it can learn to generalize more effectively and produce more accurate predictions in many contexts.

Here's another video to explain what a neural networks can learn:

<div class="aspect-w-16 aspect-h-9">
    <iframe loading="lazy"
    src="https://www.youtube.com/embed/0QczhVg5HaI" frameborder="0" allowfullscreen
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture">
    </iframe>
</div>
