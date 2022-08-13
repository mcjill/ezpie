# How should you work with ezpie :confused:
Here, everything is different from what you may think! :astonished: \
So to make sure your contribution is taken please follow these rules

## Styling
Ezpie webpages have a custom style therefore knowing it is importing, here are some most used ones:

- **Texts** - At ezpie all text content are to be inside the `p tag` with the class as `class="text"`. Remember all p tags must have class 'text'
- **Links** - All links must have class as `class="link"`
- **Main Header** - The top most header of all articles must be a `h1 tag` with class `class="head"`
- **Info text** - After the 'Main Header' there must be an info text which is the `p tag` with class `class="text"`
- **sections** - please make sure you have the articles in part inside a `section tag` with class as `class="it's header in short"`. 
Please check [this page](https://ishaan010.github.io/ezpie/tutorials/python/basic/intro.html) for better understanding
- **Secondry Headers** - All sub topics must have a **Secondry Header** which will be a `h2 tag` with class as `class="head"`
- **End section** - After the end of a section please add a `hr tag`
- **Next topic** - At the end of the page please a end section 
``` html
<section class="end">
  <button class="btn">
    <a href="next article" class="next">Next: Article header</a>
  </button>
</section>
```
Instand of any article you can add your own. If have made any before in anyother site.
- **Code example** - All code example must be link of images. You can make an image by taking a screenshot at keep it in the `asset/img` folder.
Here's how it must be `<img src="../../asset/img/image-name" alt="write it clean" class="img">`, repeat the `../` if needed.
- **Output code** - Make sure you have added the output of your example code, here's how
``` html
<div class="code">
  the Output
</div>
```

## Farther more
If you ever want some custom css in your article do feel free to add some of your own css.

If any issues then contact me at [Gmail](https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSMTRscNsCvlnhHNDWCsfRqVDLDNsRvfwrBGHjppzvjQscNlvWLQrpSrDmSxsFTHhfGZNMhL)
