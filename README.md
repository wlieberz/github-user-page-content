# About

This is the source repo for my Github Pages based Tech Blog which is available at [wlieberz.github.io](https://wlieberz.github.io).

It used to be built via [mkdocs](https://www.mkdocs.org/), but I've decided to switch it to [jekyll](https://jekyllrb.com/) for more flexibility.

## Dev Notes

These are some notes for myself. You are welcome to read them as well.

For a better developer experience, I'm using a Justfile instead of a Makefile. [More info](https://just.systems/).

- Check just commands:
```sh
just -l
```

- Dev Container build
```sh
# Docker build and tag locally with tag v0.2.1
just build-local-dev-container v0.2.1
```


- Serve the site locally
```sh
just local-serve
```
- Local site available as: [http://127.0.0.1:4000/](http://127.0.0.1:4000/)
    - Sitemap and robots.txt are automatically working
        - [http://127.0.0.1:4000/sitemap.xml](http://127.0.0.1:4000/sitemap.xml)
        - [http://127.0.0.1:4000/robots.txt](http://127.0.0.1:4000/robots.txt)

- Build site for prod
```sh
JEKYLL_ENV=production bundle exec jekyll build
```
