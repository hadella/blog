# Darklane Blog

A personal blog built with Hugo using a custom dark theme optimized for technical writing.

## Features

- **Dark Theme**: Deep blue-gray backgrounds with vibrant accent colors (orange, cyan, green, magenta)
- **Code Highlighting**: Syntax highlighting for code blocks with Monokai dark theme
- **LaTeX Support**: Write math equations with `$inline$` and `$$display$$` syntax
- **Responsive Layout**: Two-column layout with sidebar (recent posts, categories, tags, year archive)
- **Easy Publishing**: Simple deploy script to GitHub Pages
- **Organized Content**: Each post in its own folder with co-located images

## Quick Start

### Prerequisites

- Hugo extended version (0.112.0 or later)
- Git
- GitHub account for hosting

### Installation

1. Clone this repository
2. Update `hugo.toml` with your settings:
   - `baseURL`: Your GitHub Pages URL
   - `title`: Your blog title
   - `author`: Your name
   - GitHub username for social links

3. Update `publish.sh` with your repository details:
   ```bash
   git remote add origin git@github.com:yourusername/your-repo-name.git
   ```

### Writing a Post

#### Create New Post

```bash
hugo new posts/my-topic-name/index.md
```

This creates:
```
content/posts/my-topic-name/
  index.md
  images/
```

#### Front Matter Template

```yaml
---
title: "Your Post Title"
date: 2025-02-23
categories: ["main-category"]
tags: ["tag1", "tag2", "tag3"]
banner: "images/banner.jpg"
---
```

#### Content Structure

```markdown
This is your intro paragraph visible on the home page.

<!--more-->

This content only shows on the full post page.

## Your Section

Write your content here...
```

#### Code Blocks

Use triple backticks with language identifier:

\`\`\`python
def example():
    return "Hello, world!"
\`\`\`

#### Math with LaTeX

- Inline: `$E = mc^2$`
- Display: `$$\int_{0}^{\infty} e^{-x} dx = 1$$`

#### Images

Place images in `images/` folder within your post directory:

```markdown
![Alt text](images/photo.jpg)
```

### Preview Locally

```bash
hugo server -D
```

Visit `http://localhost:1313` to see your site. Auto-reloads on file changes.

### Publish to GitHub Pages

```bash
./publish.sh
```

This builds the site and pushes to the `gh-pages` branch.

## Configuration

### Site Settings (`hugo.toml`)

```toml
baseURL = "https://yourusername.github.io/repo/"
title = "Your Blog Title"
theme = "darklane"
paginate = 5  # Posts per page

[params]
  description = "Your blog description"
  author = "Your Name"
  recentPostsCount = 5
  defaultBanner = "/images/default-banner.jpg"
```

### Menu Items

Add pages to the navigation menu:

```toml
[[menu.main]]
  name = "Home"
  url = "/"
  weight = 1

[[menu.main]]
  name = "About"
  url = "/about/"
  weight = 2
```

### Banner Images

Three ways to set banner images:

1. **Per-post**: Specify in front matter
   ```yaml
   banner: "images/my-banner.jpg"
   ```

2. **Category default**: Place image at `static/images/banners/{category-name}.jpg`

3. **Site default**: Set in `hugo.toml`
   ```toml
   [params]
     defaultBanner = "/images/default-banner.jpg"
   ```

## File Organization

```
your-blog-repo/
├── hugo.toml              # Site configuration
├── publish.sh             # Deploy script
├── README.md              # This file
├── content/
│   ├── about.md           # About page
│   └── posts/             # All blog posts
│       └── post-name/
│           ├── index.md
│           └── images/
├── static/
│   └── images/            # Site-wide images
│       ├── default-banner.jpg
│       └── banners/       # Category default banners
└── themes/
    └── darklane/          # Theme files
        ├── layouts/       # HTML templates
        └── static/css/    # Stylesheets
```

## Theme Customization

### Colors

Edit `themes/darklane/static/css/darklane.css`:

```css
/* Main colors defined at top of file */
background: #0a0f14
text: #BFBDB6
accent-orange: #FF8F40
accent-cyan: #39BAE6
accent-green: #26a98b
accent-magenta: #C678DD
```

### Layout

Modify these files in `themes/darklane/layouts/`:

- `_default/baseof.html`: Master template
- `index.html`: Home page
- `_default/single.html`: Individual posts
- `partials/sidebar.html`: Sidebar widgets
- `partials/header.html`: Site header

## GitHub Pages Setup

1. Go to repository Settings → Pages
2. Source: Deploy from branch
3. Branch: `gh-pages` / `root`
4. Save

Your site will be live at `https://yourusername.github.io/repo-name/`

## Tips

- **Draft posts**: Add `draft: true` to front matter to hide posts
- **Post URLs**: Hugo converts post folder names to URLs (e.g., `my-topic-name` → `/posts/my-topic-name/`)
- **Categories vs Tags**: Categories for broad topics, tags for specifics
- **Image optimization**: Compress images before adding to keep site fast

## Troubleshooting

### Site not building

```bash
hugo version  # Check Hugo is installed
hugo --verbose  # See detailed build output
```

### Deploy failing

Check `publish.sh` has correct repository URL and your SSH keys are set up:

```bash
ssh -T git@github.com
```

### Styling issues

Clear your browser cache or test in incognito mode.

## License

This blog structure and Darklane theme are free to use and modify.

---

**Built with [Hugo](https://gohugo.io/) • Powered by [GitHub Pages](https://pages.github.com/)**
