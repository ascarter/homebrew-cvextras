cask 'go-installer' do
  version '1.14.2'
  sha256 'f81dabe9c8cca450b68ca9603296859b3b569c1ecc746684a0af7efb29d150da'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
