all : gen

gen:
	hyde gen

clean:
	rm -rf deploy

# Publish should be run from my astro account
publish:
	rm -rf deploy
	hyde gen -c production.yaml
	rsync -e ssh -r deploy_production/ portal:/www/astro/users/vanderplas/html/
