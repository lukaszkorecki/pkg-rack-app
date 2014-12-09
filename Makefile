start:
	./bin/foreman start

pkg:
	pkgr package . --verbose --name rack-app-test --env "SSH_AUTH_SOCK=$(SSH_AUTH_SOCK)"

deps:
	bundle install --path=vendor --binstubs
	sudo gem install pkgr --no-ri --no-rdoc
