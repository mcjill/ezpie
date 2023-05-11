---
layout: ../../layout/PostLayout.astro
title: Better ways to create react app
description: Learn how to create a React app from scratch using Vite, Next.js, StackBlitz, Gatsby, and Astro, without relying on create-react-app. This tutorial offers step-by-step instructions and insights into each tool's strengths and weaknesses, so you can choose the best one for your project. Boost your React skills and create performant, customizable, and SEO-friendly apps today!
published: 5/11/2023
author: ezpie
permalink: /blogs/better-ways-to-create-react-app
image: /images/thumbnail/better-ways-to-create-react-app.svg
---

React is a fun and easy to learn javascript component library, to learn or use react you would need to use the official `create-react-app` npm package, but it also has major fall backs which are:

1. **Limited customization:** create-react-app provides a pre-configured setup for creating a React app, which can be convenient for beginners or for quickly prototyping an app. However, if you need more control over the configuration and setup of your app, you may find create-react-app limiting.

2. **Large bundle size:** create-react-app includes a lot of dependencies and features by default, which can result in a large bundle size and slower load times. This can be problematic for apps that need to be lightweight and fast.

3. **Dependency on Node.js:** create-react-app requires Node.js to be installed on your system, which can be a barrier for some developers who prefer to work with other tools or technologies.

These are in fact the most important things you must go for if you want to build a good webapp. This post will focus upon the 4 better methods to create react app.

# 1. Vite

<img src="https://github.com/EzpieCo/ezpie/assets/104765117/205c0410-405c-466a-914c-7ba5123fe723" alt="vite's homepage image" loading="lazy" class="my-5">

Vite is a build tool and development server that is designed to be fast and lightweight. It was created by Evan You, the creator of the Vue.js framework, but it can also be used with other front-end frameworks, including React. Vite is known for its speedy development experience, thanks to its use of native ES modules and its ability to leverage modern browser features like import maps and native lazy-loading.

Vite is designed to be easy to use and configure. To create a new Vite project, you can simply run a few commands in your terminal and choose your preferred template, such as Vue or React. Vite also includes a built-in development server that provides features like hot module replacement and fast rebuilds, which can make the development process smoother and more efficient.

One of the key benefits of Vite is its ability to handle modern JavaScript features and build them efficiently. For example, Vite can handle code splitting, which allows your app to load only the code that is needed for a given page, rather than loading the entire app at once. This can lead to faster load times and a better user experience. Vite also supports TypeScript, CSS pre-processors, and many other features that can help you build a robust and modern app.

Overall, Vite is a powerful and flexible build tool that can help you create fast and modern front-end applications. Its focus on speed and ease of use makes it a popular choice for developers who want to create high-performance apps with minimal setup and configuration.

# 2. Astro

<img src="https://github.com/EzpieCo/ezpie/assets/104765117/5718a593-d915-4a94-9339-e778dc1c9343" alt="astro's homepage image" loading="lazy" class="my-5">

Astro is a new kind of static site builder that aims to combine the speed and simplicity of static sites with the power and flexibility of modern JavaScript frameworks. It was created by the team behind Snowpack, a popular build tool for web applications. Astro is designed to be highly performant, with fast build times and minimal runtime overhead.

One of the key features of Astro is its use of a component-based architecture, similar to frameworks like React or Vue. This allows developers to build rich and dynamic web applications using familiar patterns and techniques. Astro also supports modern web standards like CSS Grid and Flexbox, as well as popular front-end libraries like Tailwind CSS and Alpine.js.

Astro is highly configurable and extensible, with a plugin-based architecture that allows developers to add new features and functionality as needed. For example, Astro includes plugins for things like Markdown rendering, syntax highlighting, and image optimization, but developers can also create their own plugins or use existing ones from the community.

One of the unique features of Astro is its ability to create both static and dynamic pages from the same codebase. This allows developers to build highly performant static sites, while also adding dynamic features like client-side routing and data fetching as needed. Astro also includes features like server-side rendering and incremental hydration, which can help improve the perceived performance of your app and provide a smoother user experience.

Overall, Astro is a powerful and flexible static site builder that can help developers create modern and performant web applications with ease. Its combination of static site generation and dynamic features makes it a compelling choice for a wide range of projects, from blogs and marketing sites to complex web applications.

In fact ezpie is also build with astro!

# 3. Next.js

<img src="https://github.com/EzpieCo/ezpie/assets/104765117/d66ff2e3-c735-4aa1-aa47-fa0bdd9fa946" alt="next's homepage image" loading="lazy" class="my-5">

Next.js is a popular open-source framework for building server-rendered React applications. It was created by the team at Vercel, and it has gained popularity among developers due to its ease of use, flexibility, and powerful features. Next.js is designed to make it easy to build scalable, production-ready web applications, while also providing a great development experience.

One of the key features of Next.js is its support for server-side rendering (SSR) and static site generation (SSG). This means that your app can be pre-rendered on the server, resulting in faster load times and improved search engine optimization (SEO). Next.js also includes features like incremental static regeneration (ISR), which allows you to update specific parts of your site without having to rebuild the entire site.

Next.js is highly configurable and extensible, with support for a wide range of plugins and customizations. For example, Next.js includes built-in support for CSS modules, Sass, and styled-components, and it also supports TypeScript out of the box. Next.js also includes a powerful API routes feature, which allows you to create serverless functions that can be used for things like form submissions or data fetching.

Next.js is also highly optimized for performance, with features like automatic code splitting and prefetching, which help to reduce bundle size and improve page load times. Next.js also includes a built-in webpack configuration that can be customized to suit your specific needs.

Overall, Next.js is a powerful and flexible framework for building server-rendered React applications. Its support for SSR, SSG, and other features makes it a compelling choice for a wide range of projects, from simple blogs and marketing sites to complex web applications.

# 4. Gatsby

<img src="https://github.com/EzpieCo/ezpie/assets/104765117/3b17542a-086a-494f-8ec2-fd5811c338b7" alt="gatsby's homepage image" loading="lazy" class="my-5">

Gatsby is an open-source framework for building fast and modern websites and applications. It was created by Kyle Mathews in 2015, and has since gained a large and active community of developers. Gatsby is built on top of React, and uses modern web technologies like GraphQL, Webpack, and service workers to provide a high-performance and flexible development experience.

One of the key features of Gatsby is its use of static site generation (SSG), which allows your site to be pre-built at build time, resulting in fast load times and improved SEO. Gatsby also includes features like image optimization, code splitting, and prefetching, which can further improve site performance and user experience.

Gatsby is highly customizable and extensible, with support for a wide range of plugins and configurations. For example, Gatsby includes built-in support for CSS modules, Sass, and styled-components, and it also supports TypeScript out of the box. Gatsby also includes a powerful GraphQL data layer, which allows you to easily fetch data from multiple sources and create dynamic pages and components.

Gatsby is also highly optimized for the modern web, with features like PWA support, which allows your site to work offline and be installed as a native app on mobile devices. Gatsby also includes a built-in development server, which provides features like hot module replacement and fast rebuilds, making the development process smoother and more efficient.

Overall, Gatsby is a powerful and flexible framework for building fast and modern websites and applications. Its support for SSG, GraphQL, and other features makes it a compelling choice for a wide range of projects, from simple blogs and marketing sites to complex web applications.

# 5. stackblitz

<img src="https://github.com/EzpieCo/ezpie/assets/104765117/5e5ce6c6-f848-49f1-8088-0f7386518b39" alt="stackblitz's homepage image" loading="lazy" class="my-5">

StackBlitz is an online development environment for creating web applications. It was created by Eric Simons in 2017, and has since gained popularity among developers due to its ease of use, powerful features, and collaborative capabilities. StackBlitz is designed to make it easy to create and share web applications, without requiring any setup or installation.

One of the key features of StackBlitz is its integration with popular front-end frameworks like React, Angular, and Vue. StackBlitz provides a fully functional IDE and development environment, with support for features like code completion, syntax highlighting, and debugging. This allows developers to create and test their applications directly in the browser, without having to set up a local development environment.

StackBlitz also includes features like real-time collaboration and sharing, which allows multiple developers to work on the same project simultaneously. StackBlitz supports features like live code sharing, which allows you to share your code with others and collaborate in real-time. StackBlitz also supports integrations with popular source control platforms like GitHub and GitLab.

StackBlitz is highly configurable and customizable, with support for a wide range of packages and libraries. For example, StackBlitz includes built-in support for popular front-end libraries like React, Angular, and Vue, as well as back-end technologies like Node.js and Firebase. StackBlitz also supports features like npm integration, which allows you to easily add and manage packages in your project.

Overall, StackBlitz is a powerful and flexible online development environment for creating web applications. Its ease of use, collaborative capabilities, and support for popular front-end frameworks make it a compelling choice for a wide range of projects, from simple prototypes and demos to full-scale web applications.

# Conclusion

Each of the tools we've discussed has its own strengths and use cases.

Vite is a lightweight and fast build tool, ideal for small to medium-sized projects that require quick builds and fast development time.

Next.js is a popular and versatile framework for building server-rendered React applications, and is well-suited for larger-scale projects and e-commerce sites.

StackBlitz is a powerful and collaborative online development environment, ideal for quickly prototyping and sharing web applications.

Gatsby is a flexible and powerful static site generator, with built-in support for modern web technologies like GraphQL and PWA. It's a great choice for creating high-performance, SEO-optimized websites.

Astro is a relatively new and promising tool for building modern web applications, with a focus on performance and flexibility.

Overall, the choice of which tool to use will depend on the specific needs of your project. Each tool has its own strengths and weaknesses, and the best choice will depend on factors like project size, complexity, and performance requirements.

As for an overall rating, it's difficult to give a definitive rating as each tool has its own unique value proposition. However, all the tools we've discussed are high-quality and well-maintained, and are worth considering for your next web development project.
