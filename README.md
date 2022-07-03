# News App (Flutter)

A project I'm working on to learn Flutter and Dart.

This README documents the scope, design, to-do tasks and things I learned while working on it.

---

#### Scope

The app connects to [newsapi.org](https://newsapi.org/) API to fetch news articles and show them within the app. Users can bookmark news articles to view them later.

---

#### Design

![alt text](https://raw.githubusercontent.com/Isuru-Nanayakkara/news_app_flutter/master/assets/images/news_app_design.png)

Top

- Call [/top-headlines](https://newsapi.org/docs/endpoints/top-headlines) endpoint passing the category IDs, fetch news items and show them in a list.
- Add pagination
- Categories: general, business, science, entertainment, technology, health, sports

Search

- When tapped on search icon, push to new screen with a search bar.
- Call [/everything](https://newsapi.org/docs/endpoints/everything) endpoint passing the search query.
- Fetch news items and show them in a list.

Sources

- Call [/sources](https://newsapi.org/docs/endpoints/sources) endpoint and show all news sources in a grid view.
- When tapped on a source, load a list of top headlines from that source in a list.

Saved

- All news item cards have a save button.
- News items are saved in local storage.

---

#### Development

---

##### Component Design

Widgets

- [ ] Bottom navigation bar
- [ ] Custom App Bar (with search icon button)
- [ ] Scrollable tab view (for news categories)
- [ ] News items list view
- [ ] News item card
- [ ] Searchbar
- [ ] Grid view (for sources)
- [ ] Source tile
- [ ] News detail page
