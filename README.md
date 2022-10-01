# About

This is the repository for the source files for my blog:
[wlieberz.github.io](https://wlieberz.github.io)

## Background

Hosted using [Github Pages](https://pages.github.com/) and [mkdocs](https://www.mkdocs.org/).

## Contributing

Cheatsheet for myself since I don't plan to have any contributors other than myself.

## Local Dev

### Mkdocs install

Instructions assume Linux. Tested on `Ubuntu 22.04 LTS`.

```sh
# Create some place for your Python virtual-environments
mkdir ~/env
# Create a new venv for mkdocs
python3 -m venv ~/env/mkdocs
# Activate it
source ~/env/mkdocs/bin/activate
# Ensure the latest version of pip within the venv
pip install --upgrade pip
# Install 
pip install mkdocs
```

Now that it is installed, you just need to activate it to use mkdocs:

```sh
source ~/env/mkdocs/bin/activate
```

### Local Testing

```sh
mkdocs serve
```

By default, the dev-server serves on: `http://127.0.0.1:8000/`

### Deployment

1. Checkout dev branch.
2. Commit changes and open PR.
3. Merge PR.
4. Pipeline runs and deploys changes to live site.

### Manual Deployment (deprecated)

Annoyingly, the lowest friction deployment strategy when it comes to having
a GitHub Pages user-level (as opposed to a GitHub Pages Project page) "blog" 
using Mkdocs as the generator requires two separate repos. 

One repo hosts the actual site and the other hosts the source files of the site.

In order to deploy, you must ensure you have both the live-site and content
git repos checked out. 

- Serving-repo: [https://github.com/wlieberz/wlieberz.github.io](https://github.com/wlieberz/wlieberz.github.io)
- Content-repo (this repo): [https://github.com/wlieberz/github-user-page-content](https://github.com/wlieberz/github-user-page-content)

Then, from within the **serving-repo**, run:

```sh
mkdocs gh-deploy --config-file ../github-user-page-content/mkdocs.yml --remote-branch master
```
**Caution! ensure you are in the correct repo when you run the above command.**