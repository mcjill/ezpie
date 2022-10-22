# Ezpie style guidelines

You must follow the style guidelines to make sure that your article fits within the site.

To get started with writing your first article in ezpie, copy and paste the given code below:

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-SQB1SJPPPD"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-SQB1SJPPPD');
    </script>

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

- **intro section**: There must be a section(class as intro) with the title of the article and a small description about it.

  - **Title**: The title of the article should be inside the intro section with the _h1 tag with class as head_.
  - **Description**: The description of the article should be inside the intro section below the title, and it must be with the _p tag with class as text_.

- **End line**: At the end of every section, there must be a **hr tag**.

- **Explanation**: There must be an explanation of the topic(if needed) _inside another section with class **what**_

- **Code Examples**: You can use code examples in your articles too. For which, you must use [github gists](https://gist.github.com)

- **Article dependency**: If your article's code example requires some dependencies then you must mention and how to install these dependencies as will.

## Contact if required

In case you have any questions or what to ask something, you can contacte ezpie using [gmail](gmail.com) at ezpie.co@gmail.com or you can create an issue.
