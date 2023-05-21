---
layout: ../../layout/PostLayout.astro
title: "Top 10 CSS Pro Code Tips: Code This, Not That"
description: CSS (Cascading Style Sheets) is a powerful language that controls the visual presentation of a web page. Writing efficient and maintainable CSS code is essential for creating well-designed websites. In this article, we'll explore the top 10 CSS pro code tips to help you level up your CSS skills.
published: 5/21/2023
author: ezpie
permalink: /blogs/css-code-this-not-this
image: /images/thumbnail/css-code-this-not-this.svg
---

A web page's visual presentation can be managed with the help of CSS (Cascading Style Sheets), a powerful language. For websites to be well-designed, CSS coding must be effective and maintained. We'll look at the top 10 CSS expert code hints in this article to help you advance your CSS abilities.

# 1. Employ Flexbox. Rather than floating

Floats are commonly used in CSS for layout purposes, but they can result in complicated and brittle code. Choose Flexbox instead, a strong CSS layout module that makes it easier to create flexible and responsive layouts. Flexbox gives users more flexibility over the distribution, order, and alignment of items inside a container.

```css
/* Code This */
.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

/* Not That */
.container {
  float: left;
}
```

# 2. Adopt the CSS Grid for Complex Layouts

CSS Grid is your best friend if your grid-based layouts are becoming increasingly complicated. With CSS Grid, you can quickly position and align grid items while also defining rows and columns. It provides a more capable and simple method of making responsive layouts.

```css
/* Code This */
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}

/* Not That */
.container {
  display: inline-block;
}
```

# 3. Center with a Flexbox or Grid.

The most frequent query in web development is, "How do I center a div?"

You can use the traditional approach, which is straightforward yet intricate.

```css
/* Old fashion */
/* old is not gold */
.container {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
```

Using Flexbox, this can be resolved in a more easy way.

```css
/* New is good */
/* Cause it uses style */
.container {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

# 4. Make use of CSS variables for reuse.

You can construct reusable variables that can be used across the entirety of your CSS codebase by using CSS variables, sometimes referred to as CSS custom properties. They encourage consistency, lessen duplication, and facilitate global style updates.

```css
/* Code This */
:root {
  --primary-color: #007bff;
}

.container {
  color: var(--primary-color);
}

/* Not That */
.container {
  color: #007bff;
}
```

# 5. CSS Specificity to Improve Performance

When multiple rules target the same element, the CSS specificity decides which rule is 
applied. Keep your selectors as specific as necessary and avoid using overly specific 
selectors to reduce specificity conflicts and increase performance.

```css
/* Code This */
.container .title {
  color: #333;
}

/* Not That */
div.container h1.title {
  color: #333;
}
```

# 6. Scale back CSS selectors

CSS selectors can get bloated when used excessively. Keep your selectors to a minimum and directly target the desired items. The likelihood of unintended style conflicts is decreased, and maintainability is increased.

```css
/* Code This */
.container {
  color: #333;
}

/* Not That */
body .container ul li a {
  color: #333;
}
```

# 7. Make use of CSS animations and transitions

Use CSS transitions and animations to increase interactivity and keep users interested. Use CSS to create slick and effective effects rather than relying on JavaScript for straightforward animations.

```css
/* Code This */
.container {
  transition: background-color 0.3s ease;
}

.container:hover {
  background-color: #f2f2f2;
}

/* Not That */
.container {
  transition: all 1s;
}

.container:hover {
  background-color: #f2f2f2;
  transform: scale(1.1);
}
```

# Use vendor prefixes for CSS

Use CSS vendor prefixes for attributes that not all browsers fully support to ensure cross-browser compatibility. Although the majority of CSS features may be handled without prefixes by contemporary browsers, they are still required for older browser versions.

```css
/* Code This */
.container {
  -webkit-border-radius: 5px;
  border-radius: 5px;
}

/* Not That */
.container {
  border-radius: 5px;
}
```

# 9. Add a CSS Comment

A well-documented codebase must be kept up for future collaboration and maintenance. To make it simpler for others to understand and adjust your styles, as well as for yourself in the future, comment your CSS code to make it clearer, explain your objectives, and provide clarity.

```css
/* Code This */
/* Set background color */
.container {
  background-color: #f2f2f2;
}

/* Not That */
.container {
  /* Background color */
  background: #f2f2f2;
}
```

# 10. Check Your CSS and Format It

Make sure your CSS code is correct and formatted consistently before distributing it. To find syntax problems and maintain a tidy, consistent codebase, use online validators or built-in tools in your code editor.

You may write CSS code that is clearer, more effective, and easier to maintain by using these CSS pro code suggestions. To improve your CSS abilities, stay current with new CSS approaches and try out new features. Coding is fun!

Remember that practice and ongoing education are the keys to mastering CSS. Continue learning new skills, trying out new strategies, and creating engaging web experiences.
