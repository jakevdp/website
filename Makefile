BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/deploy_production

GITHUB_PAGES_REMOTE=git@github.com:vanderplas/vanderplas.github.io.git
GITHUB_PAGES_BRANCH=master
GIT_COMMIT_HASH = $(shell git rev-parse HEAD)


all: gen

CV: content/media/pdfs/CV.pdf

content/media/pdfs/CV.pdf: CV/CV.tex
	cd CV; make
	mkdir -p content/media/pdfs/
	cp CV/CV.pdf content/media/pdfs/

gen: CV
	hyde gen

serve: clean gen
	hyde serve

clean:
	rm -rf deploy

gen-production: clean
	hyde gen -c production.yaml

publish: CV gen-production


publish-to-github: publish
	ghp-import -n -m "publish-to-github from $(GIT_COMMIT_HASH)" -b blog-build $(OUTPUTDIR) -c vanderplas.com
	git push $(GITHUB_PAGES_REMOTE) blog-build:$(GITHUB_PAGES_BRANCH)


publish-to-github-force: publish
	ghp-import -n -m "publish-to-github-force from $(GIT_COMMIT_HASH)" -b blog-build $(OUTPUTDIR) -c vanderplas.com
	git push -f $(GITHUB_PAGES_REMOTE) blog-build:$(GITHUB_PAGES_BRANCH)



