async function getArticles() {
  let url = "../js/data/api.json";
  try {
    let res = await fetch(url);
    return await res.json();
  } catch (error) {
    console.log(error);
  }
}

async function renderArticles() {
  let articles = await getArticles();
  let html = "";
  articles.forEach((article) => {
    let htmlSegment = `
                            <a href="${article.url}.html" class="article-link">
                            <div class="article">
                                <h1>${article.title}.html</h1>
                                <p>${article.description} </p>
                                <b>${article.author} email: ${article.email}</b>
                            </div>
                            </a>
                            `;

    html += htmlSegment;
  });

  let container = document.querySelector(".main");
  container.innerHTML = html;
}

renderArticles();
