My Personal Web Page, built with [Hyde](http://hyde.github.io/)

See the rendered version at http://www.astro.washington.edu/users/vanderplas

Building
========
Requires hyde:

    pip install hyde

Also pdflatex (for CV to be auto-generated)

Generate version for local development:

    make gen

Preview local version
(this is previewable in the browser at localhost:8080 -- Kill with ctrl-C)

    make serve

Generate site for production:

    make gen-production

Publish site via SSH (SSH publisher requires hyde version > 0.8.6):

    make publish