My Personal Web Page, built with [Hyde](http://hyde.github.io/)

See the rendered version at http://www.astro.washington.edu/users/vanderplas

Building
========
Requires hyde:

    pip install hyde

Generate version for local development:

    hyde gen

Preview local version (this is previewable in the browser at localhost:8080)

    hyde serve

Generate site for production:

    hyde gen -c production.yaml

Publish site via SSH (SSH publisher requires hyde version > 0.8.6):

    hyde publish -c production.yaml