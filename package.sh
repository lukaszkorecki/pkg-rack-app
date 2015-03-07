rm -rf vendor || true
bundle --path=/tmp/vendor

sshSock="SSH_AUTH_SOCK=$SSH_AUTH_SOCK"
rubyVersion="RUBY_VERSION=2.1.5"
bundlerOpts="BUNDLE_WITHOUT=pkg"

bundle exec pkgr package . --verbose \
  --name app-test  \
  --runner upstart \
  --env $sshSock $rubyVersion $bundlerOpts

