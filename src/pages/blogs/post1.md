---
layout: ../../layout/PostLayout.astro
title: First post
description: The first ever post in ezpie
published: 4/6/2023
author: ezpie
permalink: /blogs/post1
image: /images/binary-search.png
---

Have you ever needed to find a specific element in a large, sorted list? One common solution to this problem is to use a **binary search** algorithm, which is both fast and efficient. In this post, we'll explore how binary search works and provide example implementations in both JavaScript and Python.

## How Binary Search Works

Binary search is based on the idea of **divide and conquer**. Given a sorted list of elements, we start by dividing the list in half and checking whether the element we're looking for is in the first half or the second half. If the element is in the first half, we repeat the process on that half of the list; if the element is in the second half, we repeat the process on that half of the list. We continue dividing the list in half and searching until we find the element we're looking for, or until we determine that the element is not in the list.

Here's a step-by-step example of how binary search works. Suppose we have the following sorted list of integers:

[1, 3, 5, 7, 9, 11, 13, 15, 17, 19]

We want to find the index of the element `13` in this list. We start by dividing the list in half:

[1, 3, 5, 7, 9] [11, 13, 15, 17, 19]

Since `13` is greater than the midpoint of the list (which is `7`), we know that `13` must be in the second half of the list. We discard the first half of the list and repeat the process on the second half:

[11, 13, 15, 17, 19]

Now we can see that `13` is less than the midpoint of this list (which is `15`). We discard the second half of the list and repeat the process on the first half:

[11, 13]

Finally, we can see that `13` is the midpoint of this list, so we've found the element we're looking for. The index of `13` in the original list is `6`, since it's the 7th element in the list (remember that indices start at 0).

## Example Implementation in JavaScript

Here's an example implementation of binary search in JavaScript:

```javascript
function binarySearch(list, target) {
  let min = 0;
  let max = list.length - 1;
  while (min <= max) {
    let mid = Math.floor((min + max) / 2);
    if (list[mid] === target) {
      return mid;
    } else if (list[mid] < target) {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
  }
  return -1;
}

const myList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
const target = 13;
const index = binarySearch(myList, target);
console.log(`The index of ${target} in the list is ${index}`);
```

In this implementation, the binarySearch function takes two arguments: list, which is the sorted list we're searching, and target, which is the element we're looking for. The function returns the index of the target element in the list,

## Example Implementation in Python

```python
def binary_search(list, target):
    min = 0
    max = len(list) - 1
    while min <= max:
        mid = (min + max) // 2
        if list[mid] == target:
            return mid
        elif list[mid] < target:
            min = mid + 1
        else:
            max = mid - 1
    return -1

my_list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
target = 13
index = binary_search(my_list, target)
print(f"The index of {target} in the list is {index}")
```

This is the exact same as the javascript version of the binary search algorithm.

We start by initializing min to 0 and max to the index of the last element in the list. We use a while loop to keep dividing the list in half until we find the target element or determine that it's not in the list. At each iteration, we calculate the midpoint of the list using integer division (//), and compare the value at the midpoint to the target. If the value at the midpoint is equal to the target, we've found the element we're looking for and return its index. If the value at the midpoint is less than the target, we discard the first half of the list by updating min to mid + 1. If the value at the midpoint is greater than the target, we discard the second half of the list by updating max to mid - 1. If we exit the while loop without finding the target, we return -1 to indicate that it's not in the list.
