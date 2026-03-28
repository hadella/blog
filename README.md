# Personal Blog

A personal blog built with Hugo using the [Darklane theme](https://github.com/hadella/darklane)

See it [live](https://hadella.github.io/blog/)

## About

This blog covers projects, technical experiments, and various interests. Posts are written in Markdown and deployed as static files to GitHub Pages.

The Darklane theme provides a dark, minimal design optimized for technical writing with support for code highlighting, LaTeX math, custom shortcodes, and year-based archives.

## Quick Start

Quick guide on how to create and test posts on the blog.

### Creating a New Post

Posts are created with Hugo's `new` command:

```bash
hugo new posts/my-post-name/index.md
```

This creates a folder structure:

```
content/posts/my-post-name/
  index.md
```

For posts requiring embedded images, we'll need to create that folder manually.

```bash
mkdir content/posts/my-post-name/images
```

The `images/` folder is where any screenshots or graphics for the post go. Keeps everything self-contained.

### Front Matter

Each post needs some metadata at the top:

```yaml
---
title: "Your Post Title"
date: 2025-02-26
categories: ["category"]
tags: ["tag1", "tag2"]
banner: "images/banner.jpg"  # Optional
draft: true                  # Remove when ready to publish
---
```

The `<!--more-->` comment marks where the preview cuts off on the home page:

```markdown
This intro shows in previews.

<!--more-->

This content only appears when you click through.
```

### Testing Locally

Run the Hugo development server:

```bash
hugo server -D
```

The `-D` flag includes draft posts. The site loads at `http://localhost:1313/blog/` and auto-reloads when you save changes.

## Publishing

When the post is ready:

1. Remove `draft: true` from the front matter
2. Run the publish script:

```bash
./publish.sh
```

This builds the site and deploys to GitHub Pages. The blog updates in a couple minutes.

### That's It

The workflow is simple: create, write, test locally, publish.

---

## Theme Management

This blog uses Darklane as a git submodule, which keeps the theme separate from the blog content and allows easy updates.

### Updating the Theme

When the Darklane theme gets updates (bug fixes, new features, etc.), pull them into your blog:
```bash
cd themes/darklane
git pull origin main
cd ../..
git add themes/darklane
git commit -m "Update Darklane theme to latest version"
git push
```

### Theme Documentation

For theme customization, shortcode usage, and configuration options, see the [Darklane repository](https://github.com/hadella/darklane).

## Configuration

Key settings in `hugo.toml`:
```toml
baseURL = "https://yourname.github.io/blog/"
title = "Your Blog Title"
theme = "darklane"
paginate = 5

[params]
  author = "Your Name"
  description = "Blog description"
  recentPostsCount = 5
  defaultBanner = "images/default-banner.jpg"

[[menu.main]]
  name = "Home"
  url = "/"
  weight = 1

[[menu.main]]
  name = "About"
  url = "/about/"
  weight = 2
```

### Important Settings

- **baseURL**: Must match your GitHub Pages URL exactly (include `/blog/` if repo name is "blog")
- **theme**: Must be "darklane" to use the submodule
- **paginate**: Controls posts per page on home page
- **defaultBanner**: Fallback image for posts without specific banners

## File Structure
```
blog/
├── content/
│   ├── about.md
│   └── posts/
│       └── post-name/
│           ├── index.md
│           └── images/
├── static/
│   └── images/
├── themes/
│   └── darklane/        # Git submodule
├── hugo.toml
├── publish.sh           # Deployment script
└── README.md
```

Each post lives in its own folder under `content/posts/` with co-located images. This keeps everything organized and makes posts portable.

## Publishing

The `publish.sh` script handles deployment:
```bash
./publish.sh
```

This:
1. Runs `hugo` to build the site into `public/`
2. Commits the built site to the `gh-pages` branch
3. Pushes to GitHub

GitHub Pages serves from the `gh-pages` branch. Site updates appear within a few minutes.

### GitHub Pages Setup

Repository Settings → Pages:
- Source: Deploy from a branch
- Branch: gh-pages / (root)

## License

Content is my own. Theme is [Darklane](https://github.com/hadella/darklane) under MIT license.
