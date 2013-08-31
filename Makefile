all : gen

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

# Publish should be run from my astro account
publish: CV
	rm -rf deploy
	hyde gen -c production.yaml
	rsync -e ssh -r deploy_production/ portal:/www/astro/users/vanderplas/html/
