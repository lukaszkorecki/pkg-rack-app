workdir = $(shell pwd)
opts = --verbose --name rack-app-test --runner sysv-lsb --env "SSH_AUTH_SOCK=$(SSH_AUTH_SOCK)"
start:
	./bin/foreman start

pkg:
	pkgr package . $(opts)

pkg-test:
	cd ../pkgr/ && \
		bundle exec ruby ./bin/pkgr package $(workdir) $(opts)
		mv ../pkgr/*.deb .

deps:
	bundle install --path=vendor --binstubs
	sudo gem install pkgr --no-ri --no-rdoc
