cask 'go-installer' do
  version '1.14.4'
  sha256 'b518f21f823759ee30faddb1f623810a432499f050c9338777523d9c8551c62c'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
