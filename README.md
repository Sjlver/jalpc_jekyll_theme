# Sauraus -- Cevi Festival 2017

<http://sauraus.ch>

### Installing and building the site

```
$ git clone git@github.com:Sjlver/sauraus.ch.git
$ cd sauraus.ch
$ bundle install
$ bundle exec jekyll serve -w
```

... and go to http://localhost:4000

### Deploying the website

Try the `_deploy.sh` script. It should build the site and create a commit in the
`gh-pages` branch, which you can then push to GitHub.
