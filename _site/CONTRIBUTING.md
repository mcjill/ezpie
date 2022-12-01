# Contributors guidelines

Thanks for your contribution in advance :smile:

## Rules you must know

At ezpie you must follow the following rules for making sure that your work is taken:

- Do not create any custom \*.css file or edit the \*.css files(basically the \*.scss files)
- Make sure your blog contains formatting as per other blogs.
- Make sure that the blog is at least 16,000 words long.
- Follow the [style guidelines](https://github.com/ishaan010/ezpie/blob/master/docs/style-guide.md) so your blog fits in with other blogs.

---

## Creating a New Blog

When you are creating a new blog, you must create a folder with your name in the blogs folder. This basically makes that folder your personal blog page.

Once you have a folder with your name you can must now create blogs in that folder only.

Once you created an blog, you are responsible for it's maintenance like:

- Updating as per the software which is talked about in the blog.

- Dependencies updated as per latest version(If your blog code examples require).

If by any reason, you didn't updated your blog as per the points above, your blog will be removed from the site.

---

## important points

You must at all times remember these points:

- After creating your blog you must add json data about your blog in the _js/data/suitable_tag_ folder.
- Your json data must be like this:

```json
[
  {
    "title": "Name of blog",
    "description": "A short description of the blog",
    "url": "../blog/youName/blogName",
    "author": "You name",
    "email": "your email address so readers can contact you just in case"
  }
]
```

### Didn't find your blog's tag?

If your blog is of a different type, say your blog is about golang and there is no golang tag, then you can just create an issue and I will get into that.

---

## blog requesting and changing

At ezpie you can request a new blog or make any changes to the existing blogs.

### Requesting a new blog

Create an issue with the new blog template and fill all the required fields there, so that your request can be finished successfully.

### Changing a existing blog

When you change an existing blog, you can only change the following things:

- The grammar
- Mis-typing
- links(if you find any link broken)
