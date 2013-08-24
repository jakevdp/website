all : gen

CV: CV/CV.tex
	cd CV; make
	mv CV/CV.pdf content/media/pdfs/

gen: CV
	hyde gen

clean:
	rm -rf deploy

# Publish should be run from my astro account
publish: CV
	rm -rf deploy
	hyde gen -c production.yaml
	rsync -e ssh -r deploy_production/ portal:/www/astro/users/vanderplas/html/
