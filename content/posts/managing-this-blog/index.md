---
title: "Managing This Blog"
date: 2025-02-23
categories: ["meta"]
tags: ["hugo", "blogging", "workflow"]
banner: "images/banner.png"
---

This is the first post on my new blog, and fittingly, it's about how to manage the blog itself. I wanted to document the workflow so future-me doesn't have to remember all the details. This guide demonstrates how to use markdown and Hugo shortcodes to write useful and nice-looking posts.

<!--more-->

## The Setup

This blog is built with [Hugo](https://gohugo.io/), a static site generator that turns Markdown files into a complete website. The theme is **Darklane**, a custom dark theme I built with these priorities:

- Write in Markdown, not HTML
- Support code blocks with syntax highlighting
- Support LaTeX math rendering with `$inline$` and `$$display$$` syntax
- Fast builds and simple deployment
- Clean, readable dark aesthetic

## Creating a New Post

To create a new post, run:

```bash
hugo new posts/my-topic-name/index.md
```

This creates a folder structure like:

```
content/posts/my-topic-name/
  index.md
  images/
```

All images and assets for the post go in that `images/` folder, keeping everything organized.

## Front Matter

Each post needs some metadata at the top. Here's the basic template:

```yaml
---
title: "Your Post Title"
date: 2025-02-23
categories: ["category-name"]
tags: ["tag1", "tag2", "tag3"]
banner: "images/banner.jpg"
---
```

## Banner Images

Each post should have a banner image. The banner logic works like this:

1. If you specify `banner: "images/banner.jpg"` in front matter, it uses that
2. If not specified, it looks for a default banner matching your first category
3. If that doesn't exist, it uses the site-wide default banner

The banner image appears at the top of the post with the title overlaid using a stroke effect so it's readable regardless of the image colors.

## Writing Content

After the front matter, write your content in Markdown. Use `<!--more-->` to mark where the preview should cut off on the home page:

```markdown
This is the intro paragraph that shows in previews.

<!--more-->

This content only appears when you click through to the full post.
```

## Headers

Headers are the normal white text color by default.

# H1

## H2

### H3

#### H4

##### H5

We can also colorize headers on demand.

```
## Magenta {.h-magenta}
```

## Magenta {.h-magenta}

```
## Cyan {.h-cyan}
```

## Cyan {.h-cyan}

```
## Green {.h-green}
```

## Green {.h-green}

```
## Orange {.h-orange}
```

## Orange {.h-orange}

```
## Yellow {.h-yellow}
```

## Yellow {.h-yellow}

This is normal text. *This is italic text.* **This is bold text.**
`This is monospaced text.`

We can embed monospaced test like this `printf("Hi\n")` or `foo` like this.

## Unordered List Example

- Top level item one
- Top level item two
  - Nested item 2.1
  - Nested item 2.2
    - Deeply nested 2.2.1
    - Deeply nested 2.2.2
  - Nested item 2.3
- Top level item three
  - Nested item 3.1

## Ordered List Example

1. First step
1. Second step
   1. Sub-step 2.1
   1. Sub-step 2.2
      1. Detailed step 2.2.1
      1. Detailed step 2.2.2
   1. Sub-step 2.3
1. Third step
   1. Sub-step 3.1
   1. Sub-step 3.2

## Mixed List Example

Hello there

1. Install dependencies
   - Ubuntu/Debian: `apt install hugo`
   - Fedora/RHEL: `dnf install hugo`
   - Arch: `pacman -S hugo`
1. Create new site
   - Choose a theme
   - Configure settings
     1. Set baseURL
     1. Set title
     1. Set parameters
1. Start writing posts

## Simple Table

| Name         | Language        | Year |
|--------------|-----------------|------|
| Atari 800    | BASIC           | 1979 |
| Commodore 64 | BASIC           | 1982 |
| Apple II     | Applesoft BASIC | 1977 |

## Table with Alignment

| Car           | Top Speed | Price |
|:--------------|:---------:|:-----:|
| Kyosho Ultima | 45 mph    | $350 |
| Tamiya TT-02  | 25 mph    | $200 |
| Traxxas Slash | 60 mph    | $400 |

## Complex Table

| Component | Specification   | Notes                       |
|:----------|:----------------|:----------------------------|
| Motor     | 17.5T brushless | Sensored for smooth control |
| ESC       | 120A w/ 6V BEC  | Supports 2S-3S LiPo         |
| Servo     | 25kg torque     | Metal gears required        |
| Battery   | 2S 5000mAh      | 50C discharge rate          |

## Colored Table

{{< table color="cyan" >}}

| Name         | Language | Year |
|:-------------|:---------|:-----|
| Atari 800    | BASIC    | 1979 |
| Commodore 64 | BASIC    | 1982 |
| Apple II     | Applesoft BASIC | 1977 |
| TRS-80       | BASIC           | 1977 |

{{< /table >}}

## Quote Blocks

We can also add quote blocks.

> This is a general simple quote block area.

> We can have code blocks within a quote block
> ```c
> printf("The next number is %d\n", 13)
> ```

## Alert Shortcode Callouts

The `{{/* alert */}}` shortcode lets us add something similar to a quote block but includes some keyword like 'warning' or 'info'; it also gives a splash of color.

{{< alert warning >}}
This is a warning message!
{{< /alert >}}

{{< alert info >}}
This is informational text.
{{< /alert >}}

{{< alert note >}}
This is an important note.
{{< /alert >}}

{{< alert error >}}
Something went wrong!
{{< /alert >}}

{{< alert important >}}
Something important
{{< /alert>}}

We can also do boring *alerts*.

{{< alert >}}
An unlabeled alert isn't colored
{{< /alert >}}

## Image Shortcode

The img shortcode handles consistent image sizing and optional captions.

Basic usage (800px width default):

```
{{</* img src="images/photo.png" */>}}
```

Custom width:

```
{{</* img src="images/photo.png" width="600" */>}}
```

With caption:

```
{{</* img src="images/photo.png" caption="Associated B7" */>}}
```

Full example with all options:

```
{{</* img src="images/photo.png" width="700" caption="Davide Ongaro's Associated B7" alt="Associated B7" */>}}
```

{{< img src="images/photo.png" width="700" caption="Davide Ongaro's Associated B7" alt="Associated B7" >}}

> Make sure to remove the `/* */` to actually use them. They must be included though
> to be able to show *how* to use them! When this is rendered, Hugo will have removed
> the comments to show the code block view when the `/* */` were in place.

## Highlight Shortcode

Use `{{</* highlight */>}}` for key takeaways or important callouts. Supports color variants.

```
{{</* highlight tip */>}}
Measure twice. Cut once.
{{</* /highlight */>}}
```

{{< highlight tip >}}
Measure twice. Cut once.
{{< /highlight >}}

```
{{</* highlight warning */>}}
Don't over-tighten gear mesh else you'll melt the spur or worse.
{{</* /highlight */>}}
```

{{< highlight warning >}}
Don't over-tighten gear mesh else you'll melt the spur or worse.
{{< /highlight >}}

```
{{</* highlight success */>}}
After following these steps, the car ran perfectly!
{{</* /highlight */>}}
```

{{< highlight success >}}
After following these steps, the car ran perfectly!
{{< /highlight >}}

```
{{</* highlight error */>}}
Don't reverse polarity on Lipo batteries!
{{</* /highlight */>}}
```

{{< highlight error >}}
Don't reverse polarity on Lipo batteries!
{{< /highlight >}}

```
{{</* highlight important */>}}
Some important info to share
{{</* /highlight */>}}
```

{{< highlight important >}}
Some important info to share
{{< /highlight >}}

## Details Shortcode

Use details for collapsible sections - great for optional deep-dives or technical details.

Default label:

```
{{</* details */>}}
Here's the detailed technical explanation that most readers can skip...
{{</* /details */>}}
```

Custom label:

```
{{</* details "Technical Specifications" */>}}
Motor: 17.5T brushless
ESC: 120A with 6V BEC
Servo: 25kg torque metal gear
Battery: 2S 5000mAh LiPo
Pinion/Spur: 22T / 84T (3.82:1 ratio))](Motor: 17.5T brushless
{{</* /details */>}}
```

{{< details "Technical Specifications" >}}
- Motor: 17.5T brushless
- ESC: 120A with 6V BEC
- Servo: 25kg torque metal gear
- Battery: 2S 5000mAh LiPo
- Pinion/Spur: 22T / 84T (3.82:1 ratio)
{{< /details >}}

{{< details "Why I chose these parts" >}}
I went with a 17.5T motor because it offers a good balance between speed and runtime. The 120A ESC is probably overkill, but better safe than sorry when running LiPo batteries. The servo needed to be metal gear to handle the forces from the heavy chassis.
{{< /details >}}

## Code Blocks

Use triple backticks with a language identifier:

```python
def hello_world():
    print("Hello, world!")
```

```c
#include <stdio.h>

int main()
{
    printf("Hello, World!\n");
    return 0;
}
```

## Code Block Highlighting

We can also specify particular lines in a code block to highlight.

```python {hl_lines=[2,4]}
def calculate_sum(a, b):
    result = a + b  # This line is highlighted
    print("Calculating...")
    return result   # This line is highlighted too
```

## Tab Groups

Tab groups can be used for things like showing similar code in multiple programming languages.

{{< tabgroup >}}

{{< tab title="Python" >}}
```python
def hello():
    print("Hello, world!")
```
{{< /tab >}}

{{< tab title="JavaScript" >}}
```javascript
function hello() {
  console.log("Hello, world!");
}
```
{{< /tab >}}

{{< tab title="C" >}}
```c
#include <stdio.h>

int main() {
    printf("Hello, world!\n");
    return 0;
}
```
{{< /tab >}}

{{< /tabgroup >}}

## YouTube

We can embed YouTube videos with a shortcode.

{{</* youtube "dQw4w9WgXcQ" title="My Video Title" */>}}

## Math with LaTeX

Inline math: $E = mc^2$

Display math:

$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$

> Another math example

Calculates the least common multiple between integers *u* and *v*

The least common multiple (*lcm*) of two positive numbers *u* and *v* is the smallest positive integer that is evenly divisble by both *u* and *v*.

$$
lcm(u, v) = \frac{\left | {uv} \right |}{gcd(u, v)} = \left | u \right | \cdot \frac{\left | v \right |}{gcd(u, v)}
$$

These formulas are also valid when exactly one of *u* and *v* is 0 since $gcd(u, 0) = \left | u \right |$.

However, if both *u* and *v* are both 0, then these formulas would cause a 
division by 0! This creates a special case: $lcm(0, 0) = 0$

## Preview Locally

To preview your site before publishing:

```bash
hugo server -D --baseURL http://localhost:1313/
```

This starts a local server at `http://localhost:1313` and auto-reloads when you save changes. The `-D` flag includes draft posts.

## Publishing

When you're ready to publish, just run:

```bash
./publish.sh
```

This script:
1. Builds the Hugo site (`hugo` command)
2. Navigates into the `public/` folder
3. Commits everything to the `gh-pages` branch
4. Pushes to GitHub

Your site will be live at your GitHub Pages URL a few minutes later.

## File Organization

The blog structure looks like this:

```
your-blog-repo/
├── hugo.toml           # Site configuration
├── publish.sh          # Deploy script
├── content/
│   ├── about.md        # About page
│   └── posts/          # All blog posts here
│       └── post-name/
│           ├── index.md
│           └── images/
├── static/
│   └── images/         # Site-wide images
└── themes/
    └── darklane/       # Theme files (don't touch unless customizing)
```

## Tips

- **Keep it simple**: The goal is to write, not to fiddle with web dev stuff
- **Image paths**: Use relative paths like `images/photo.jpg` in your Markdown
- **Draft posts**: Add `draft: true` to front matter to hide posts until ready
- **Categories vs Tags**: Use categories for broad topics (e.g., "hobbies", "tech"), tags for specific subjects (e.g., "atari", "rc-cars", "python")

That's it. Now I can focus on writing actual content instead of fighting with tooling.
