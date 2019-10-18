cask 'go-installer' do
  version '1.13.3'
  sha256 '75f39b2d2b98ab7fe262252cb3f87b14bce71c16df8b9df7ae0fb1db1ba2576c'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
