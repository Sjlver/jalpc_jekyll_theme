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

### About image galleries

This page uses a Jekyll gallery plugin from
<https://github.com/aerobless/jekyll-photo-gallery>. To add pictures:

- Put them into images/photography
  FIXME change path
- Scale them down a bit. Images are stored in the git repository, so it's good
  to have them somewhat small. I use the following:

        for i in *.jpg; do convert -verbose -quality 85 $i'[1600x1600]' smaller/$i; done

- Add the image titles to `_data/photos.yaml`
