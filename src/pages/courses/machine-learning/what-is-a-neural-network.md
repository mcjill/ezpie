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

**But there will be problems in the network!** Neural networks can sometimes give wrong results or make mistakes, especially when they encounter something unexpected or outside of their training experience.

Let's say we trained the neural network to recognize cats by showing it lots of pictures of cats. It learned to identify certain features that are common in cats, such as pointy ears, whiskers, and a certain body shape. Based on these features, it can make predictions about whether an image is likely to be a cat or not.

However, if we show the network an image of a dog dressed as a cat, it might get confused. The network has never seen a dog dressed as a cat during training, so it doesn't have any specific rules or examples to handle this situation. It will try to identify the features it knows about cats, but it might also pick up on other features that are more dog-like, such as the shape of the snout or the size of the paws.

As a result, the network may give a wrong result and classify the image as a cat when it's actually a dog dressed as a cat. This happens because the network is relying on patterns and characteristics it has learned from its training data, and it doesn't have the ability to understand context or use common sense reasoning like humans do.

It's important to note that neural networks are not inherently intelligent or capable of understanding the world in the same way humans do. They excel at recognizing patterns in the data they were trained on, but they can struggle with situations that deviate significantly from their training examples. This is known as a lack of generalization.

To improve the network's performance, we would need to provide it with more diverse training examples that include a wider range of scenarios, including dogs dressed as cats. By exposing the network to more varied and unexpected situations, it can learn to generalize better and make more accurate predictions in different contexts.

Here's another video to explain what a neural networks can learn:

<div class="aspect-w-16 aspect-h-9">
    <iframe loading="lazy"
    src="https://www.youtube.com/embed/0QczhVg5HaI" frameborder="0" allowfullscreen
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture">
    </iframe>
</div>
