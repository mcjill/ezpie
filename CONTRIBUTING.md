# Contributors guidelines

Thanks for your contribution in advance :smile:

## Rules you must know

At ezpie you must follow the following rules for making sure that your article is taken:

- Do not create an custom css or edit the _.css files(basically the _.scss files)
- Make sure your article contains proper formatting and no confusing text.
- Make sure that the article is at least 16,000 words long.
- Follow the [style guidelines](https://github.com/ishaan010/ezpie/blob/new-ezpie/docs/style-guide.md) so your article fits in.

## Creating a new article

When you are creating a new article, you should add a folder in the blog directory which is the author's name(Basically your name or any fake name is you like).

Once you created an article, you are responsible for it's maintenance like:

- Updated as per the software which is talked about in the article.
- Dependencies updated as per latest version(If your article code examples require).

If by any reason, you didn't updated your article as per the points above, your article will be removed from the site.

## important points

You must at all times remember these points:

- After creating your blog you must add json data about your blog in the _js/data/suitable_tag_ folder.
- Your json data must be like this:

```json
[
  {
    "title": "Name of article",
    "description": "A short description of the article",
    "url": "../blog/youName/articleName",
    "author": "You name",
    "email": "your email address so readers can contact you just in case"
  }
]
```

## Article requesting and changing

At ezpie you can request a new article or make any changes to the existing articles.

### Requesting a new article

Create an issue with the new article template and fill all the required fields there, so that your request can be finished successfully.

### Changing a existing article

When you change an existing article, you can only change the following things:

- The grammar
- Mis-typing
- links(if you find any link broken)
