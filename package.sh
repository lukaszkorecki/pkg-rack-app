rm -rf vendor || true
bundle --path=/tmp/vendor

pkgr package . --verboe \
  --name app-test  \
  --runner upstart \
  --env "SSH_AUTH_SOCK=$SSH_AUTH_SOCK RUBY_VERSION=2.1.5"

