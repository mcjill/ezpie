---
layout: ../../layout/PostLayout.astro
title: "Understanding Binary Search: A Beginner's Guide"
description: If you've ever needed to search through a large dataset or list of items, you may have come across the term "binary search". Binary search is a fundamental algorithm used in computer science to efficiently search through a sorted dataset. In this guide, we'll explain the concept of binary search and provide code examples in Python and JavaScript.
published: 4/7/2023
author: ezpie
permalink: /blogs/binary-search
image: /images/binary-search.svg
---

If you've ever needed to search through a large dataset or list of items, you may have come across the term "binary search". Binary search is a fundamental algorithm used in computer science to efficiently search through a sorted dataset. In this guide, we'll explain the concept of binary search and provide code examples in Python and JavaScript.

## What is Binary Search?

Binary search is an algorithm that searches for a specific value within a sorted dataset. It works by repeatedly dividing the dataset in half and checking if the middle element is equal to the value being searched for. If the middle element is not equal to the value being searched for, the algorithm will discard half of the dataset and continue searching in the remaining half.

The key advantage of binary search is that it can search through a large dataset very quickly. For example, searching for a value in a dataset of 1 million elements using linear search (i.e., checking each element one by one) could take up to 1 million operations. However, binary search can find the value in as few as 20 operations.

### How does Binary Search Work?

To understand how binary search works, let's consider an example. Suppose we have a sorted list of numbers:

`[1, 3, 5, 7, 9, 11, 13, 15, 17, 19]`

We want to find the index of the value 11 in this list. Here's how binary search works step by step:

1. We start by looking at the middle element in the list, which is 9. Since 9 is less than 11, we know that the value we're looking for must be in the second half of the list.

2. We discard the first half of the list and repeat the process on the remaining elements. The new list is:

`[11, 13, 15, 17, 19]`

3. We look at the middle element in this new list, which is 15. Since 15 is greater than 11, we know that the value we're looking for must be in the first half of the list.

4. We discard the second half of the list and repeat the process on the remaining elements. The new list is:

`[11, 13]`

5. We look at the middle element in this new list, which is 13. Since 13 is greater than 11, we know that the value we're looking for must be in the first half of the list.

6. We discard the second half of the list and repeat the process on the remaining elements. The new list is:

`[11]`

7. We look at the middle element in this new list, which is 11. Since 11 is equal to the value we're looking for, we've found the index of the value 11 in the original list, which is 5.

This process can be generalized into the following algorithm:

```
1. Set the left and right bounds of the dataset.
2. While the left bound is less than or equal to the right bound:
   a. Calculate the middle index.
   b. If the middle element is equal to the value being searched for, return its index.
   c. If the middle element is less than the value being searched for, set the left bound to be one more than the middle index.
   d. If the middle element is greater than the value being searched for, set the right bound to be one less than the middle index.
3. If the value is not found, return -1.
```

## Binary Search Code in Python

Here is an example of how to implement binary search in Python:

```python
def binary_search(arr, target):
    left = 0
    right = len(arr) - 1

    while left <= right:
        mid = (left + right) // 2

        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1

    return -1
```

In this code, we define a function **binary_search** that takes two arguments: the array to search and the target value. We set the **left** and **right** variables to the leftmost and rightmost indices of the search interval. We then enter a while loop that continues until the **left** and **right** variables cross each other.

Inside the while loop, we calculate the **mid index** by taking the average of the **left** and **right** variables. We then check whether the middle element of the array is equal to the target value. If it is, we return the **mid index**. If the middle element is less than the target value, we move the **left** endpoint of the search interval to `mid + 1`. Otherwise, we move the right endpoint to `mid - 1`.

If the target value is not found after the loop, we return -1 to indicate that it was not found.

## Binary Search Code in JavaScript

Here is an example of how to implement binary search in JavaScript:

```javascript
function binarySearch(arr, target) {
  let left = 0;
  let right = arr.length - 1;

  while (left <= right) {
    let mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}
```

In this code, we define a function **binarySearch** that takes two arguments: the **array to search** and the **target value**. We set the **left** and **right** variables to the **leftmost** and **rightmost** indices of the search interval. We then enter a while loop that continues until the **left** and **right** variables cross each other.

Inside the while loop, we calculate the **mid index** by taking the average of the indices of **left** and **right**. We then check whether the middle element of the array is equal to the target value. If it is, we return the mid index. If the middle element is less than the target value, we move the left endpoint of the search interval to `mid + 1`. Otherwise, we move the right endpoint to `mid - 1`.

If the target value is not found after the loop, we return -1 to indicate that it was not found.

## Conclusion

Binary search is a useful algorithm for searching for a specific value in a sorted collection of data. It works by dividing the search interval in half repeatedly until the target value is found or the interval is empty. With the examples provided in this post, you can implement binary search in both Python and JavaScript to make your searching more efficient.
