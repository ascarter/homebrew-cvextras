cask 'go-installer' do
  version '1.14.3'
  sha256 '05cb5531fd429aa5a13605a30aed5584d95a134d6edbf5e9ac174156390d423a'

  url "https://dl.google.com/go/go#{version}.darwin-amd64.pkg"
  appcast 'https://github.com/golang/go/releases.atom'
  name 'Go Programming Language'
  homepage 'https://golang.org'

  depends_on macos: '>= :yosemite'

  pkg "go#{version}.darwin-amd64.pkg"

  uninstall pkgutil: 'com.googlecode.go'
end
