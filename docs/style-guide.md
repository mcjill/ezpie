# Ezpie style guidelines

You must follow the style guidelines to make sure that your blog fits within the site.

To get started with writing your first blog in ezpie, copy and paste the given code below:

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <!--Code by google -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-SQB1SJPPPD"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-SQB1SJPPPD');
    </script>
    <!------------------------------------------------------->

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/base.css">
    <link rel="icon" type="image/x-icon" href="../../asset/logo/profile.png">

    <title>ezpie - how to create a rest api using flask</title>
</head>

<body>
    <div class="main-body">
        <!-- Your code -->

        <!-- Ends here -->
        <section class="share">
            <div class="options">
                <p class="text">Like the article? share it &#128516</p>
                <a href="https://twitter.com/intent/tweet" target="_blank" class="link">
                    <img src="../../asset/logo/internet/Twitter-logo.png" alt="tweet about a ezpie blog" width="30px">
                </a>
                <a href="https://dev.to/new" target="_blank" class="link">
                    <img src="../../asset/logo/internet/dev-logo.png" alt="blog about a ezpie blog at dev" width="30px">
                </a>
            </div>
        </section>
    </div>

    <footer class="foot">
        <section class="foot-main">
            <div class="detail">
                <h1 class="head">Ezpie</h1>
                <p><strong>Email</strong>: ezpie.co@gmail.com</p>
            </div>
            <div class="tags">
                <h3 class="Header">Top tags</h3>
                <ul class="links">
                    <li><a href="../../searcher/api.html" class="list-item">API</a></li>
                    <li><a href="../../searcher/docker.html" class="list-item">Docker</a></li>
                    <li><a href="../../searcher/python.html" class="list-item">Python</a></li>
                    <li><a href="../../searcher/javascript.html" class="list-item">Javascript</a></li>
                    <li><a href="../../searcher/github.html" class="list-item">GitHub</a></li>
                </ul>
            </div>
            <div class="challenges">
                <h3 class="Header">challenges</h3>
                <!-- TODO add example links -->
                <ul class="links">
                    <li><a href="#" class="list-item">Python challenges</a></li>
                    <li><a href="#" class="list-item">Java challenges</a></li>
                    <li><a href="#" class="list-item">Javascript challenges</a></li>
                    <li><a href="#" class="list-item">Golang challenges</a></li>
                </ul>
            </div>

            <div class="Company">
                <h3 class="Header">Company</h3>
                <ul class="links">
                    <!-- TODO add links -->
                    <li><a href="../company/about.html" class="list-item">About</a></li>
                    <li><a href="../company/privacy.html" class="list-item">Privacy Policy</a></li>
                    <li><a href="../company/terms.html" class="list-item">Terms conditions</a></li>
                </ul>
            </div>
        </section>
        <hr>
        <section class="info">
            <p class="copyright">Copyright (c) 2022 Ezpie</p>
            <div class="net">
                <a href="https://github.com/ishaan010" target="_blank" class="link">
                    <img class="net-icon" src="../../asset/logo/internet/github-logo.png" alt="Ezpie github page"
                        width="30px">
                </a>
                <a href="https://twitter.com/EzpieCo" target="_blank" class="link">
                    <img src="../../asset/logo/internet/Twitter-logo.png" alt="Ezpie twitter page" width="30px"
                        class="net-icon">
                </a>
                <a href="https://dev.to/ishaan010" target="_blank" class="link">
                    <img src="../../asset/logo/internet/dev-logo.png" alt="Ezpie dev.to page" class="net-icon"
                        width="30px">
                </a>
            </div>
        </section>
    </footer>

</body>

</html>
```

## All classes you can use at ezpie

Ezpie uses custom css therefore you need to know what class is used for what. Here are the important classes that you may use in your blog:

- **Text class** : In your blog you will be needing to write text, for which you will need to use the _p tag_, but you must also include the **text class** in the p tag.

  **Demo** :

  Code:

  ```html
  <p class="text">This is a text with the text class.</p>
  ```

  Output :

  ![Text with text class](https://user-images.githubusercontent.com/104765117/198814337-d6633814-75b4-473d-b904-9153a838c01a.png)

  And as you can see with the text class the text is a bit more gray.

- **Code output**- all code's or terminal cammands are to be inside a div with the **class code**

  **Demo** :

  Code:

  ```html
  <div class="code">> Output at the terminal</div>
  ```

  output :

  ![Div with class code](https://user-images.githubusercontent.com/104765117/198814473-7981cfaa-8ade-43b7-baa6-c7a813239534.png)

  This is how you must show terminal outputs

- **Code examples**- Your blog may contain code examples, rather than adding images of the code you can just use [github gist](https://gist.github.com)

---

## Dividing the blog

Your blog must also be divided into sections using the **section** tag in html. At the end of each section you must add the **hr tag**.

Each section must contain a head, which is just the **h2** tag with **class head**

---

## Any problem?

If you have any problem you can create an issue and we will help you out.
