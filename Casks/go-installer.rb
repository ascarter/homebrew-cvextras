cask 'go-installer' do
  version '1.15.5'
  sha256 '428b251143315728277b98a104387052757b63ac324efa44fc854a289606101e'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'org.golang.go'
end
