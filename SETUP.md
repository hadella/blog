# Quick Setup Checklist

Follow these steps to get your blog running:

## 1. Update Configuration

Edit `hugo.toml`:
- [ ] Set `baseURL` to your GitHub Pages URL
- [ ] Set `title` to your blog name  
- [ ] Set `params.author` to your name
- [ ] Set `params.description` to describe your blog
- [ ] (Optional) Add GitHub username and email in params

## 2. Update Deploy Script

Edit `publish.sh`:
- [ ] Replace `yourusername/your-repo-name` with your actual GitHub repo

## 3. Add Banner Images

You'll need some banner images:
- [ ] Add a default banner at `static/images/default-banner.jpg` (1200x300px recommended)
- [ ] For the first post, add a banner at `content/posts/managing-this-blog/images/banner.jpg`

Quick way to create placeholder banners (requires ImageMagick):
```bash
convert -size 1200x300 gradient:#0a0f14-#2aa198 static/images/default-banner.jpg
convert -size 1200x300 gradient:#0a0f14-#FF8F40 content/posts/managing-this-blog/images/banner.jpg
```

Or just use any image you like - landscape photos work great.

## 4. Customize About Page

Edit `content/about.md`:
- [ ] Update the content with your info
- [ ] Add your GitHub username in the contact section

## 5. Test Locally

```bash
hugo server -D
```

Visit http://localhost:1313 and check:
- [ ] Home page loads
- [ ] First post displays correctly
- [ ] Sidebar widgets show up
- [ ] About page works
- [ ] Navigation menu works

## 6. Initialize Git (if not already done)

```bash
git init
git add .
git commit -m "Initial blog setup with Darklane theme"
git branch -M main
git remote add origin git@github.com:yourusername/your-repo-name.git
git push -u origin main
```

## 7. Deploy to GitHub Pages

```bash
./publish.sh
```

Then enable GitHub Pages:
1. Go to repository Settings → Pages
2. Source: Deploy from branch
3. Branch: `gh-pages` / `root`
4. Save

Wait a few minutes, then visit your site at:
`https://yourusername.github.io/your-repo-name/`

## 8. Write Your First Real Post

```bash
hugo new posts/my-first-post/index.md
```

Edit the new file, add images to the images folder, and publish again!

---

## Troubleshooting

**Site looks broken locally:**
- Make sure you're in the blog root directory when running `hugo server`
- Check the terminal output for errors

**Deploy script fails:**
- Verify your SSH keys are set up with GitHub: `ssh -T git@github.com`
- Check you updated the repo URL in `publish.sh`

**Styles not loading:**
- Check browser console for errors (F12)
- Try hard refresh (Ctrl+Shift+R or Cmd+Shift+R)
- Verify `baseURL` in `hugo.toml` matches your actual site URL

**Math not rendering:**
- KaTeX requires internet connection to load
- Check browser console for CDN errors
