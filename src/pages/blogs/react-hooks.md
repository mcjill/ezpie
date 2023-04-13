---
layout: ../../layout/PostLayout.astro
title: 7 Most Used React Hooks with Code Examples
description: React hooks are a powerful feature introduced in React 16.8 that allow you to use state and other React features in functional components. In this blog post, we'll cover 7 of the most commonly used React hooks and provide code examples for each one.
published: 4/7/2023
author: ezpie
permalink: /blogs/react-hooks
image: /images/thumbnail/react-hooks.svg
---

React hooks are a powerful feature introduced in React 16.8 that allow you to use state and other React features in functional components. In this blog post, we'll cover 7 of the most commonly used React hooks and provide code examples for each one.

## 1. useState

The useState hook is used to add state to a functional component. It returns an array containing the current state value and a function to update the state. Here's an example:

```jsx
import React, { useState } from "react";

function Counter() {
  const [count, setCount] = useState(0);

  function handleClick() {
    setCount(count + 1);
  }

  return (
    <div>
      <p>Count: {count}</p>
      <button onClick={handleClick}>Increment</button>
    </div>
  );
}
```

In this example, we define a Counter component that uses the useState hook to add state to the component. We set the initial state value to 0, and then use the setCount function to update the count when the button is clicked.

## 2. useEffect

The useEffect hook is used to run side effects in a functional component. It takes a function as its first parameter, which will be called after every render. Here's an example:

```jsx
import React, { useState, useEffect } from "react";

function Greeting(props) {
  const [name, setName] = useState("");

  useEffect(() => {
    document.title = `Hello, ${name}!`;
  });

  function handleChange(event) {
    setName(event.target.value);
  }

  return (
    <div>
      <input type="text" value={name} onChange={handleChange} />
      <p>Hello, {name}!</p>
    </div>
  );
}
```

In this example, we define a Greeting component that uses the useEffect hook to update the document title with the name entered in the input field.

## 3. useContext

The useContext hook is used to consume a context in a functional component. It takes a context object created with React.createContext as its parameter, and returns the current context value. Here's an example:

```jsx
import React, { useContext } from "react";

const MyContext = React.createContext("default");

function Child() {
  const value = useContext(MyContext);

  return <p>{value}</p>;
}

function Parent() {
  return (
    <MyContext.Provider value="hello">
      <Child />
    </MyContext.Provider>
  );
}
```

In this example, we define a MyContext object using React.createContext, and then use the useContext hook to consume the context value in the Child component.

## 4. useRef

The useRef hook is used to create a mutable reference that persists across renders. It returns an object with a current property that can be used to store and retrieve a mutable value. Here's an example:

```jsx
import React, { useRef } from "react";

function TextInput() {
  const inputRef = useRef(null);

  function handleClick() {
    inputRef.current.focus();
  }

  return (
    <div>
      <input type="text" ref={inputRef} />
      <button onClick={handleClick}>Focus Input</button>
    </div>
  );
}
```

In this example, we define a TextInput component that uses the useRef hook to create a reference to the input element, and then uses the inputRef.current.focus() function to set the focus on the input field when the button is clicked.

## 5. useCallback

The useCallback hook is used to memoize a function so that it only changes when its dependencies change. It takes a function and an array of dependencies as its parameters, and returns a memoized version of the function. Here's an example:

```jsx
import React, { useState, useCallback } from "react";

function Counter() {
  const [count, setCount] = useState(0);

  const increment = useCallback(() => {
    setCount(count + 1);
  }, [count]);

  return (
    <div>
      <p>Count: {count}</p>
      <button onClick={increment}>Increment</button>
    </div>
  );
}
```

In this example, we define a Counter component that uses the useCallback hook to memoize the increment function so that it only changes when the count state changes.

## 6. useMemo

The useMemo hook is used to memoize a value so that it only changes when its dependencies change. It takes a function and an array of dependencies as its parameters, and returns a memoized version of the value. Here's an example:

```jsx
import React, { useState, useMemo } from "react";

function Counter() {
  const [count, setCount] = useState(0);

  const evenOrOdd = useMemo(() => {
    return count % 2 === 0 ? "even" : "odd";
  }, [count]);

  return (
    <div>
      <p>Count: {count}</p>
      <p>{evenOrOdd}</p>
      <button onClick={() => setCount(count + 1)}>Increment</button>
    </div>
  );
}
```

In this example, we define a Counter component that uses the useMemo hook to memoize the evenOrOdd value so that it only changes when the count state changes.

## 7. useReducer

The useReducer hook is used to manage state with a reducer function, similar to the way state is managed in Redux. It takes a reducer function and an initial state value as its parameters, and returns an array containing the current state value and a dispatch function to update the state. Here's an example:

```jsx
import React, { useReducer } from "react";

const initialState = { count: 0 };

function reducer(state, action) {
  switch (action.type) {
    case "increment":
      return { count: state.count + 1 };
    case "decrement":
      return { count: state.count - 1 };
    default:
      throw new Error();
  }
}

function Counter() {
  const [state, dispatch] = useReducer(reducer, initialState);

  return (
    <div>
      <p>Count: {state.count}</p>
      <button onClick={() => dispatch({ type: "increment" })}>Increment</button>
      <button onClick={() => dispatch({ type: "decrement" })}>Decrement</button>
    </div>
  );
}
```

In this example, we define a Counter component that uses the useReducer hook to manage state with a reducer function. The reducer function updates the state based on the action type passed to the dispatch function.

## Conclusion

React hooks are a powerful and convenient tool for managing state, side effects, and other functionality in your React applications. The hooks discussed in this blog post are just a few of the most commonly used hooks, but there are many more available in the React library.

By understanding how to use these hooks and how they work, you can write cleaner and more efficient React code, with less boilerplate and fewer bugs. Whether you're building a simple counter or a complex application, React hooks are an essential tool to have in your toolkit.
