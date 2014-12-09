start:
	./bin/foreman start

pkg:
	pkgr package --verbose --name rack-app-test .

deps:
	bundle install --path=vendor --binstubs
	sudo gem install pkgr --no-ri --no-rdoc
