cask 'go-installer' do
  version '1.15.3'
  sha256 'd9fedc1f579fa60ee9efffdeed718d9a1a40f02ca1cb8640d8d01d7f472d4a56'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
