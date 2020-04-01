cask 'go-installer' do
  version '1.14.1'
  sha256 '29ac3bd40c1923df12efdc0cd78543746819a10c1a19eb4feb23d46ec77386d1'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
