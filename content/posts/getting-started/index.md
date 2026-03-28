---
title: "Getting Started"
date: 2026-03-26
categories: ["meta"]
tags: ["hugo", "blogging", "workflow"]
---

Quick guide on how to create and test posts on the blog

<!--more-->

## Creating a New Post {.text-primary}

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

## Front Matter {.text-secondary}

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

## Testing Locally {.text-accent-2}

Run the Hugo development server:

```bash
hugo server -D
```

The `-D` flag includes draft posts. The site loads at `http://localhost:1313/blog/` and auto-reloads when you save changes.

## Publishing {.text-accent-3}

When the post is ready:

1. Remove `draft: true` from the front matter
2. Run the publish script:

```bash
./publish.sh
```

This builds the site and deploys to GitHub Pages. The blog updates in a couple minutes.

## That's It

The workflow is simple: create, write, test locally, publish.
