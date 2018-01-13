My Personal Web Page, built with [Hyde](http://hyde.github.io/)

See the rendered version at http://www.astro.washington.edu/users/vanderplas

Building
========
Requires python 2.7, alon with hyde and ghp-import:

    pip install hyde ghp-import

Also pdflatex (for CV to be auto-generated)

Generate version for local development:

    make gen

Preview local version
(this is previewable in the browser at localhost:8080 -- Kill with ctrl-C)

    make serve

Generate site for production:

    make gen-production

Publish site to github pages

    make publish-to-github

License
=======
This work is under a [BSD 2-clause license](http://opensource.org/licenses/BSD-2-Clause)

