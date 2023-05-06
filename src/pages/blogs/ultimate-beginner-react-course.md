---
layout: ../../layout/PostLayout.astro
title: Ultimate Beginner React Course
description: Looking to learn React and create your own dynamic web applications? Look no further than the Ultimate Beginner React Course! This comprehensive guide will take you through the basics of React components, how they work, and how to use them to build a React app from scratch. With this step-by-step tutorial, you'll gain the skills you need to create engaging, interactive user interfaces with React. If you're a complete beginner, this course is the perfect starting point.
published: 5/4/2023
author: ezpie
permalink: /blogs/ultimate-beginner-react-course
image: /images/thumbnail/react-course.svg
---

If you want to learn react but don't know how to? Then this course is just for you! I have come up with a totally fun and simple to understand react course for beginners.

In this course you will learn how react works, how you can create a react app and how to create a simple react component. In the end you can join the discord server and ask me for a cool looking certificate that prove's that you have completed this course. But the certificate are limited! Only first 10 people to complete this course can receive it. So lets get started!

# So what is React?

**TL;DR**

React is a JavaScript library for building interactive user interfaces, developed by Facebook, that uses a component-based architecture to make it easier to create and maintain complex web and mobile applications.

**But do read**

React is an open-source JavaScript library that allows developers to build interactive user interfaces for web and mobile applications. It was created by Facebook and has become increasingly popular in the web development community due to its modular and reusable component-based architecture. React enables developers to break down complex UI elements into smaller, more manageable components, making it easier to build and maintain large-scale applications. Its virtual DOM system ensures efficient rendering and updates, while its extensive ecosystem of tools and libraries makes it easy to integrate with other frameworks and technologies. Overall, React provides a powerful and flexible platform for building modern, dynamic web applications.

# Setting up the development environment

It is very important to have a proper development environment where you can create you app freely with all the tools you need.

The first thing you need is <a href="https://nodejs.org/en" class="text-blue-600 hover:text-blue-400 hover:underline">Nodejs</a>. It's just an open-source, cross-platform JavaScript runtime environment that allows developers to run JavaScript code outside of a web browser. It uses the V8 JavaScript engine from Google Chrome and provides an event-driven, non-blocking I/O model that makes it well-suited for building scalable and high-performance network applications. Node also includes a rich set of built-in modules and an extensive ecosystem of third-party packages, making it a versatile and powerful platform for developing a wide range of applications, from web servers and APIs to desktop applications and command-line tools.

You can check if it's installed with `node -v`

Secondly you need a code editor. My personal favorite and the one I prefer is <a href="https://code.visualstudio.com" class="text-blue-600 hover:text-blue-400 hover:underline">Vscode</a>
.

# How to create a react app

OK so we have node installed and a code editor read to use for writing code. Now we need to know how to create a react app.

React's development team fixed this by creating create-react-app. create-react-app is a npm package, but unfortunately for react's team, create-react-app is dead. No one really prefer using it now. But luckily there is an alternative to it, that is using <a href="https://vitejs.dev" class="text-blue-600 hover:text-blue-400 hover:underline">Vite</a>, it's just another build tool for modern web apps that use ES modules and the native browser module system to provide fast and efficient development experience. It leverages the power of modern bundlers such as Rollup to provide near-instant hot module replacement and optimized builds, resulting in faster development and shorter feedback cycles. Vite is designed to work seamlessly with popular front-end frameworks such as Vue, React, and Angular, and supports a wide range of features such as CSS preprocessing, TypeScript support, and automatic asset optimization. Overall, Vite provides a lightweight and flexible solution for modern web development that maximizes developer productivity and application performance. So our choose for this course will be vite.

OK now let's set things up. Starting with vite. To create a vite project type `npm create vite@latest`. Give your project a name, select react for framework and typescript for variant, you can also use javascript, but I would highly recommend using typescript.

<video class="w-fit" autoplay muted loop playsinline preload="none">
  <source src="https://user-images.githubusercontent.com/104765117/236212449-57505d50-9f49-4e27-9650-f1bcee4838c1.mp4" type="video/mp4">
</video>

This will create the project folder for us, but for it to work we will need to `cd` into our folder and then run `npm install`. This is one thing with vite you will need to get use too as vite doesn't auto installs the dependencies for us.

Now we can run `npm run dev` to start our development server.

# Creating a react component

A React component is just a reusable piece of code that describes a part of the user interface in an application. It can be taken as a building block for the user interface that can compose of other components to create a more complex applications. Components in React can be functional, which are simpler and more lightweight, or class-based, which have more advanced functionality and can store state. But functional components are more used so we will go with them.

So to create a component in react just open the `src` folder and create a file called `hello.tsx`. Here **ts** means typescript and **x** means a react component, so **tsx** means a typescript react component. Now write down this:

```tsx
function HelloWorld() {
    return ()
}
```

<p class="bg-blue-500 text-white p-3 rounded-md">
    <b>TIP:</b> Notice how I named the function? This is called PascalCasing, where we capitalize the first latter.
</p>

Inside this function we have to describe how it will look when it is placed some where in the application. Say we want to show `Hello World`. This can be done like this

```tsx
function HelloWorld() {
  return <h1>Hello World</h1>;
}
```

Now, you might be thinking, "Hay! Ezpie, isn't this just html?" Well you are not right. This think may look like html but is called **jsx** short for **JavaScript XML**. But then why **tsx**? Well that's cause we are writing this in typescript.

But you may be thinking that, "How does react compile this into javascript?" That is done with the help of <a href="https://babeljs.io/repl" class="text-blue-600 hover:text-blue-400 hover:underline">Babel</a>. Go ahead and type
this in:

```html
<div>
  <h1>Hello World</h1>
  <p>This is me</p>
</div>
```

You will see that it converts the html into javascript and uses react to create an element called **div** with content of **h1** and **p**

```js
/*#__PURE__*/ React.createElement(
  "div",
  null,
  /*#__PURE__*/ React.createElement("h1", null, "Hello World"),
  /*#__PURE__*/ React.createElement("p", null, "This is me")
);
```

So now let's display this code, but before that we need to export this function as the default function of this module.

```tsx
function HelloWorld() {
  return <h1>Hello World</h1>;
}

export default HelloWorld;
```

Now this component is ready to be used, and is just waiting for it to be called by some function or other.

Go to your `src/app.tsx` file, this is your main file(Don't confuse it with the `main.tsx`) this `app.tsx` file is where most of your components are used. just remove all the boiler code and type this:

```tsx
import HelloWorld from "./hello";

function App() {
  return <HelloWorld />;
}

export default App;
```

If you will use vscode, on just typing **HelloWorld** it will show auto complete for you and auto import the HelloWorld component too.

Since this is jsx we can also dynamically update text, such as, we may want to display **Hello {name}**, for this we can just do this:

```tsx
function HelloWorld() {
  const name = "Ezpie";
  return <h1>Hello {name}</h1>;
}

export default HelloWorld;
```

This dynamically prints **Hello Ezpie**. Like this we can ask users to enter their name and then dynamically display there username change into what they have typed. Within the curly brackets we can write any javascript expression we want.

# How React Works under the hood

So after adding this much of code we have something called a component tree like this:
<img src="/images/extra/react-course-images/component-tree.svg" alt="React Component Tree" loading="lazy" class="my-5"/>
Here the _App_ is at the root or top level and _Hello_ as the child. Now when the app runs react takes this component tree and creates a javascript data structure called the virtual DOM. Now when we make changes in a component, react updates the corresponding node and checks the current version with the previous one and makes changes to the node which is changed.
<img src="/images/extra/react-course-images/virtual-dom.svg" alt="How virtual DOMs work" loading="lazy" class="my-5"/>

# Creating a List component

Now that you know how react works and how to create a react component, we can start by trying to render a list. But before that we can do something optional. We can add a styling library to make it look nice. For this I will use my css library <a href="https://github.com/ezpieco/crazycss" class="text-blue-600 hover:text-blue-400 hover:underline">CrazyCss</a>,
to use it you can visit the <a href="https://crazycss.vercel.app" class="text-blue-600 hover:text-blue-400 hover:underline">Documentation site</a>.

To install CrazyCss type `npm install @ezpie/crazy` in your terminal, then copy paste this code in your `src/main.tsx`

```tsx
import "@ezpie/crazy/css/crazy.min.css";
```

Now remove all the css files(index.css and main.css) and all the reference to them.

Now let's start by creating our component called **List.tsx**(PascalCasing recommended). We can also create a folder called **components** so that our project is properly structured.

```tsx
function List() {
  return (
    <ul className="font-5 mt-5">
      <li className="border-bottom-1 border-top-1 border-gray p-2 center ">
        List Item 1
      </li>
      <li className="border-bottom-1 border-gray p-2 center">List Item 2</li>
      <li className="border-bottom-1 border-gray p-2 center">List Item 3</li>
      <li className="border-bottom-1 border-gray p-2 center">List Item 4</li>
      <li className="border-bottom-1 border-gray p-2 center">List Item 5</li>
    </ul>
  );
}

export default List;
```

Just copy, paste this one as it's just some simple styling for a group of lists.

Now we can use it by importing it in the `app.tsx` file

```tsx
import List from "./components/List";

function App() {
  return <List />;
}

export default App;
```

I also had to add some custom styles as my css library is still in beta so just copy paste this too:

```css
@import url("https://fonts.googleapis.com/css2?family=Roboto&display=swap");

body {
  font-family: "Roboto", sans-serif;
}

li {
  list-style-type: none;
}
```

And also import this in the `main.tsx` file.
<img src="https://user-images.githubusercontent.com/104765117/236446373-d4e4b706-3508-42f5-afcc-e1bec0c28e07.png" alt="What we have built" loading="lazy" class="my-5"/>

## Fragment

Now say we want something like this:
<img src="https://user-images.githubusercontent.com/104765117/236448029-e67c8c62-6790-4f7a-a774-3219b364eb36.png" alt="What we want to do with our list" loading="lazy" class="my-5"/>

You may say we can just add an `h1` to the list and the works done, but there is a problem with that.

React components are expected too only return one element, so when you will add a `h1` tag in the list component, react will give errors. But we can solve this problem, that too with 3 method!

### Use an extra tag

One way of fixing this error is to use an extra tag so that the code gets wrapped in a div.

```tsx
function List() {
  return (
    <div>
      <h1>Some Items</h1>
      <ul className="font-5 mt-5">
        <li className="border-bottom-1 border-top-1 border-gray p-2">
          List Item 1
        </li>
        <li className="border-bottom-1 border-gray p-2">List Item 2</li>
        <li className="border-bottom-1 border-gray p-2">List Item 3</li>
        <li className="border-bottom-1 border-gray p-2">List Item 4</li>
        <li className="border-bottom-1 border-gray p-2">List Item 5</li>
      </ul>
    </div>
  );
}

export default List;
```

### Import Fragment

This is some times not good cause if you want to apply flexbox to your component it won't work. One better way is to use Fragment.

```tsx
import { Fragment } from "react";

function List() {
  return (
    <Fragment>
      <h1>Some Items</h1>
      <ul className="font-5 mt-5">
        <li className="border-bottom-1 border-top-1 border-gray p-2">
          List Item 1
        </li>
        <li className="border-bottom-1 border-gray p-2">List Item 2</li>
        <li className="border-bottom-1 border-gray p-2">List Item 3</li>
        <li className="border-bottom-1 border-gray p-2">List Item 4</li>
        <li className="border-bottom-1 border-gray p-2">List Item 5</li>
      </ul>
    </Fragment>
  );
}

export default List;
```

Just the same thing, but with fragment to keep the items separately and not wrapped.

### Empty tag

But this also adds some code into your file, one better and recommended way is to use an empty tag instead of anything.

```tsx
function List() {
  return (
    <>
      <h1>Some Items</h1>
      <ul className="font-5 mt-5">
        <li className="border-bottom-1 border-top-1 border-gray p-2">
          List Item 1
        </li>
        <li className="border-bottom-1 border-gray p-2">List Item 2</li>
        <li className="border-bottom-1 border-gray p-2">List Item 3</li>
        <li className="border-bottom-1 border-gray p-2">List Item 4</li>
        <li className="border-bottom-1 border-gray p-2">List Item 5</li>
      </ul>
    </>
  );
}

export default List;
```

Simple, easy and effective.

# Rendering the lists

Now we have another problem, and that is that we have hard coded values. Right now it's not really an problem, but with bigger project you may get into trouble if you would want to make changes to your component.

One way to fix it is to use a list of items and loop in that and return each item in their list items. But there is a problem, we are not working with JavaScript or TypeScript, we are working with Javascript XML, so there is no for loop in it! But lucky for us we can use the **map** method. I would like you to figure out how to do this, if you can good, if not don't worry.

<p class="text-white bg-green-500 p-3 rounded-md"><b>HINT:</b> You need to use the curly brackets and dynamically display values</p>

OK so if you have not found the fix, well here's how to do it:

```tsx
function List() {
  let items = ["Write test", "Fix test", "Refactor", "Repeat!"];

  return (
    <>
      <h1>Some Items</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.map((item) => (
          <li className="border-bottom-1 border-gray p-2">{item}</li>
        ))}
      </ul>
    </>
  );
}

export default List;
```

But remember, we are using typescript so we can use type declaration too.

```tsx
function List() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];

  return (
    <>
      <h1>Some Items</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.map((item) => (
          <li className="border-bottom-1 border-gray p-2">{item}</li>
        ))}
      </ul>
    </>
  );
}

export default List;
```

It's not necessary, but it's useful if we happen to add another data type which we don't want.

So know we have the same thing as we had earlier, but wait! When you will open the developer console, you will see we have a warning like this:

```
Warning: Each child in a list should have a unique "key" prop.

Check the render method of `List`. See https://reactjs.org/link/warning-keys for more information.
    at li
    at List
    at App
```

So, what's this? All it's trying to say is that each of our list items must have a key prop with it. React uses this key prop to identify the item, so that if we in the future try to make a todo app and want to delete an item we can just define the key value of that item and it's all done.

We can fix this by adding a key prop in the **li** tag so that all our items have a unique key with them.

```tsx
function List() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];

  return (
    <div className="center mt-5">
      <h1>Some Items</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.map((item) => (
          <li key={item} className="border-bottom-1 border-gray p-2">
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

<p class="bg-yellow-300 p-2 rounded-md"><b>NOTE:</b> I have made some changes, so copy paste this code exactly</p>

In our case I'm using the item itself for the key, but in real word you would need to use some thing else for that.
And there we have it! No more error warnings.

<img src="https://user-images.githubusercontent.com/104765117/236461870-24e423cc-c348-478b-bd33-1e1e3ca3d050.png" loading="lazy" class="my-5" alt="Final result">

# Conditional Rendering

Some times we have to render conditionally. A good example can be when login fails, you may want to show **Login failed, try again**.

To get something like that we can use if condition like this:

```tsx
function List() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];
  items = [];

  if (items.length === 0) {
    return <p>Ops! No items in the list</p>;
  }

  return (
    <div className="center mt-5">
      <h1>Some Items</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.map((item) => (
          <li key={item} className="border-bottom-1 border-gray p-2">
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

But this will give us a funny result, the heading is no longer there! That is because we are returning a totally different element instead of what we had earlier. We can fix this by just adding the heading on the if statement. But this now gives us repeated code which we don't won't, luck for use we can use javascript expression in JSX and do a conditionally rendering as well.

```tsx
function List() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];
  items = [];

  return (
    <div className="center mt-5">
      <h1>Some Items</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.length === 0 ? <p>Ops! No item in the list</p> : null}
        {items.map((item) => (
          <li key={item} className="border-bottom-1 border-gray p-2">
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

Here we are using a **?** to say if the statement is true then return this or else return this. But we can also remove the **: nul** using this other method, which is even better to use.

```tsx
function List() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];
  // items = [];

  return (
    <div className="center mt-5">
      <h1>Some Items</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.length === 0 && <p>Ops! No item in the list</p>}
        {items.map((item) => (
          <li key={item} className="border-bottom-1 border-gray p-2">
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

This removes the need of what to render in case of the statement is false, like this if the statement is false it will execute the next line of code, that is our list.

# Handling events

OK, now you know almost the main things with react, but we still have the most fun one not yet done. That is handling events. Say we want to click on each of our list items and display it on the console. In react it is really easy to do, react provides props which we can use to do such things, one of which is the **onClick**. We can add an onClick prop in our **li** tag and tell what to do when it's clicked.

```tsx
function List() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];

  const HandleClickEvent = () => {
    console.log("You clicked Me.");
  };

  return (
    <div className="center mt-5">
      <h1>Some Items</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.length === 0 && <p>Ops! No item in the list</p>}
        {items.map((item) => (
          <li
            key={item}
            className="border-bottom-1 border-gray p-2 hover:text-white hover:bg-gray"
            onClick={HandleClickEvent}
          >
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

To just give it some styling I also added some classes for that too.

# Managing state of an element

Now say we want to change the background of the item which we have clicked. This may sound easy, but again not javascript, only javascript XML.

For this situation we can use something known as a **Hook**. React provides a lot of hooks, which you can learn about <a href="http://ezpie.vercel.app/blogs/react-hooks" class="text-blue-600 hover:text-blue-400 hover:underline">Here</a>.

But what are Hook? Hooks are just a way for developers to add complex functionality, such as state management, to simpler functional components in React, which can make our code easier to read and maintain. Before hooks, we had to use class components to add stateful logic, which can be more complicated and harder to understand. Hooks allow developers to use state and other advanced features in functional components, which are simpler and more lightweight.

To work out of this issue we can use the **useState Hook**. The useState Hook provides 2 things for us, the variable and a function for changing the variable.

```tsx
import { useState } from "react";

function List() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];
  const [selected, setSelected] = useState(-1);

  return (
    <div className="center mt-5">
      <h1>Some Items</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.length === 0 && <p>Ops! No item in the list</p>}
        {items.map((item, index) => (
          <li
            key={item}
            className={
              selected === index
                ? "border-bottom-1 border-gray p-2 text-white bg-gray"
                : "border-bottom-1 border-gray p-2 hover:text-white hover:bg-gray"
            }
            onClick={() => setSelected(index)}
          >
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

In this code, we are using the useState function to create a state variable called selected. We have set the initial value of selected to -1, which means that no item in the list is selected when the component is first rendered.

In React, each component has it's own state, which means that if we were to duplicate the list component, the other list component we act in it's own state and won't be affected by the first list component.

<video class="w-fit" autoplay muted loop playsinline preload="none">
<source src="https://user-images.githubusercontent.com/104765117/236603600-ab054de0-bb3e-4f0e-8773-39fa7d324f42.mp4" type="video/mp4">
</video>

# Using Props to share data

Now imagine this, you have to create 50 list items with different headings and different items. Sounds intimidating, if you were to create 50 components that do the same thing, but with different values of course. One way of fixing this problem is to use props. But what are the? Well props are just a way to pass data from one component to another. Sounds like function arguments right? Well they are kind of function arguments.

So the problem can then be fixed like this:

```tsx
// List component
import { useState } from "react";

// {Items: string[], Heading: string}
interface Props {
  items: string[];
  heading: string;
}

function List(props: Props) {
  const [selected, setSelected] = useState(-1);

  return (
    <div className="center mt-5">
      <h1>{props.heading}</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {props.items.length === 0 && <p>Ops! No item in the list</p>}
        {props.items.map((item, index) => (
          <li
            key={item}
            className={
              selected === index
                ? "border-bottom-1 border-gray p-2 text-white bg-gray"
                : "border-bottom-1 border-gray p-2 hover:text-white hover:bg-gray"
            }
            onClick={() => setSelected(index)}
          >
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

Did you notice that I have added a typescript interface. That is because we are using typescript, so that means if we have any error we can get to know about it while writing code, instead of waiting for the browser to show. Like this we know that we have to pass some items and heading for the list component.

```tsx
// app.tsx
import List from "./components/List";

function App() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];

  return (
    <>
      <List items={items} heading="How to do testing" />
    </>
  );
}

export default App;
```

In the app.tsx file we are then telling the list component what are the items to display and the heading. But if you notice in the list component, we are needing to repeat `props.items` 3 times, which is not a good practice. We can fix this by destructuring the props parameter.

```tsx
import { useState } from "react";

// {Items: string[], Heading: string}
interface Props {
  items: string[];
  heading: string;
}

function List({ items, heading }: Props) {
  const [selected, setSelected] = useState(-1);

  return (
    <div className="center mt-5">
      <h1>{heading}</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.length === 0 && <p>Ops! No item in the list</p>}
        {items.map((item, index) => (
          <li
            key={item}
            className={
              selected === index
                ? "border-bottom-1 border-gray p-2 text-white bg-gray"
                : "border-bottom-1 border-gray p-2 hover:text-white hover:bg-gray"
            }
            onClick={() => setSelected(index)}
          >
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

Like this we no longer need the **props.** prefix anymore.

# Sharing functions using Props

Now we have a list, but say we want to display what the list item is when it's clicked. We can do this by using a function that displays the value of the item. You may think that we can just create a function in the list component and the works done, but then our list component we not be a reuseable component and we want it to stay like that only. So what we can do is, make a function in the parent, or the component using the list component, and pass that function via the props.

```tsx
import { useState } from "react";

// {Items: string[], Heading: string}
interface Props {
  items: string[];
  heading: string;
  // function onSelected: (item: string) => void
  onSelected: (item: string) => void;
}

function List({ items, heading, onSelected }: Props) {
  const [selected, setSelected] = useState(-1);

  return (
    <div className="center mt-5">
      <h1>{heading}</h1>
      <ul className="font-5 mt-5 border-top-1 border-gray">
        {items.length === 0 && <p>Ops! No item in the list</p>}
        {items.map((item, index) => (
          <li
            key={item}
            className={
              selected === index
                ? "border-bottom-1 border-gray p-2 text-white bg-gray"
                : "border-bottom-1 border-gray p-2 hover:text-white hover:bg-gray"
            }
            onClick={() => {
              setSelected(index);
              onSelected(item);
            }}
          >
            {item}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default List;
```

Here we have added another value in our Props interface, that is, a function onSelected which doesn't return anything(void). When we are clicking on the list item it then activates the onSelected function and passes item to it, which gets fed into the parent component(app.tsx) where we have a function to handle that:

```tsx
// app.tsx
import List from "./components/List";

function App() {
  let items: string[] = ["Write test", "Fix test", "Refactor", "Repeat!"];

  const handleSelected = (item: string) => {
    console.log(item);
  };

  return (
    <>
      <List
        items={items}
        heading="How to do testing"
        onSelected={handleSelected}
      />
    </>
  );
}

export default App;
```

Here we have a function that handles the onSelected function, it takes an argument which we have given as item in the list component. And finally we are passing the handleSelected function in the onSelected prop.

# Passing Children

If you want to pass maybe some HTML content in your component how can we do that? You may think it's the same as passing props, but you are almost correct. If we have to do something like this:

```tsx
function App() {
  return (
    <Info>
      <h1>Info is available</h1>
    </Info>
  );
}
```

This can cause problem if you trying using the normal way of accessing props. One way to fix this is to pass children instead of a normal prop.

So in basic sense children in react means nested elements that are passed between the opening and closing tags of the component.

Let's try creating a new component called danger, this will act as a danger signal.

```tsx
interface Props {
  children: string;
}

function Danger({ children }: Props) {
  return <div className="bg-red text-white p-3 round-2">{children}</div>;
}

export default Danger;
```

Notice that in the Props interface I have declared children, this is a spacial prop which helps in passing children to a component.

```tsx
// app.tsx
import Danger from "./components/Danger";

function App() {
  return (
    <div className="m-10">
      <Danger>danger: there are some errors</Danger>
    </div>
  );
}

export default App;
```

Like this we can pass only string data, what if we want to pass HTML content? For that just change the children type to `ReactNode`

```tsx
import { ReactNode } from "react";

interface Props {
  children: ReactNode;
}

function Danger({ children }: Props) {
  return <div className="bg-red text-white p-3 round-2">{children}</div>;
}

export default Danger;
```

Now we can pass HTML content to the component.

# Practice: Now it's your turn

OK I have now thought you all you need to know about react. So now it's time to make stuff yourself. Try making these things:

**1.** A simple Button component.

- Color should be adjustable
- Text must be adjustable

**2.** Simple Message(Danger, Info, Warning, Success)

- Text must be adjustable
- Color should be adjustable
- Must be dismissible(**x** mark to remove the message)

Congratulation on completing **The Ultimate React Beginner Course**! Now you can join the <a href="https://discord.gg/jR7fjqSCDk" class="text-blue-600 hover:text-blue-400 hover:underline">Discord Server</a>, show me the 2 Practice questions which your email address(to receive the certificate) and wait tell I send the certificate!

<p class="bg-green-300 text-green-800 p-3 rounded-md">This Course took me 1 week to make! Show your love for ezpie by sharing this course with everyone!</p>
