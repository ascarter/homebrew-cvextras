cask 'go-installer' do
  version '1.13.1'
  sha256 'aff91ee21105f918eb7bab8e625a823ea4f0a3d0e2c0c6866d012bc158c78692'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
